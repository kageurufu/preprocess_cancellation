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
import os

class PreprocessCancellation(Script):

  executablePath = os.path.dirname(__file__)
  tempFileName = "_PreprocessCancellation.gcode"
  executableName = "preprocess_cancellation"
  timeout = 60

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

  def getSettingDataString(self):
    return """{
      "name": "Preprocess Cancellation",
      "key": "PreprocessCancellation",
      "metadata": {},
      "version": 2,
      "settings": {
      }
    }"""

  def execute(self, data):

    # remove old temporary files if exist
    if os.path.exists(f"{self.executablePath}/{self.tempFileName}"):
      os.remove(f"{self.executablePath}/{self.tempFileName}")

    # write gcode to temp file for processing
    with open(f"{self.executablePath}/{self.tempFileName}", 'w') as tempfile:
      for line in data:
        tempfile.write(f'{line}')

    # calling executable
    subprocess.Popen([f"{self.executablePath}/{self.executableName}", f"{self.executablePath}/{self.tempFileName}"]).wait(self.timeout)

    # feed back processed gcode into memory and return data
    processedData = []
    with open(f"{self.executablePath}/{self.tempFileName}", 'r') as tempfile:
      for line in tempfile:
        processedData.append(line)
    data = processedData

    return data