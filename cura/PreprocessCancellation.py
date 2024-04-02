# PreprocessCancellation.py - Cura Caller for
#
# Preprocess Cancellation - Klipper GCode Preprocessor for Object Cancellation
#
# This is a small helper script that allows to call the preprocess_cancellation executable by Cura.
# Place it together with the executable in the cura configuration folder:
# Detailed Instructions:
#     Click Help menu item.
#     Click "Show Configuration Folder".
#     Find the folder call "scripts". If you don't see one create one in the configuration folder.
#     Place the python script PreprocessCancellation.py and the preprocess_cancellation executable for your os into the script folder.
#     Restart Cura.
# Now, in Extensions > Post Processing > Modify G-Code select the "Add a script"-button and from the menu that appears choose "Preprocess Cancellation".
# gcode files will be modified by saving. Notice that it can take serval seconds to finish.

from ..Script import Script
import subprocess
from tempfile import TemporaryDirectory
import os


class PreprocessCancellation(Script):
    executablePath = os.path.dirname(__file__)
    tempFileName = "_PreprocessCancellation.gcode"
    executableName = "preprocess_cancellation"
    executable = ""
    timeout = 60.0

    def __init__(self):
        super().__init__()
        from sys import platform

        # choose executable based on OS type
        if not (os.path.exists(f"{self.executablePath}/{self.executableName}")):
            if platform == "linux" or platform == "linux2":
                self.executableName = "preprocess_cancellation-ubuntu"
            elif platform == "darwin":
                self.executableName = "preprocess_cancellation-macos"
            elif platform == "win32":
                self.executableName = "preprocess_cancellation-windows.exe"
        self.executable = os.path.join(self.executablePath, self.executableName)

    def getSettingDataString(self):
        return f"""\u007b
            "name": "Preprocess Cancellation",
            "key": "PreprocessCancellation",
            "metadata": \u007b\u007d,
            "version": 2,
            "settings":
            \u007b
                "path":
                \u007b
                    "label": "Path to preprocess_cancellation",
                    "description": "Full path to the preprocess_cancellation executable.",
                    "type": "str",
                    "default_value": "{self.executable}"
                \u007d,
                "timeout":
                \u007b
                    "label": "Timeout",
                    "description": "Timeout for preprocess cancellation execution.",
                    "type": "float",
                    "default_value": "{self.timeout}"
                \u007d
            \u007d
        \u007d"""

    def execute(self, data):

        # create temporary working directory
        with TemporaryDirectory() as tempDir:
            tempFilePath = os.path.join(tempDir, self.tempFileName)

            # write gcode to temp file for processing
            with open(tempFilePath, 'w') as tempFile:
                for line in data:
                    tempFile.write(f'{line}')

            # calling executable
            proc = subprocess.Popen([self.getSettingValueByKey("path"), tempFilePath]).wait(self.getSettingValueByKey("timeout"))
            if proc != 0:
                raise RuntimeError(f"Failed to run Preprocess Cancellation - Returned: {proc}")

            # feed back processed gcode into memory and return data
            with open(tempFilePath, 'r') as tempFile:
                return tempFile.readlines()
