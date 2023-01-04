Klipper GCode Preprocessor for Object Cancellation
==================================================

This preprocessor modifies GCode files to add klipper's exclude object gcode.

The following slicers are supported:

* SuperSlicer
* PrusaSlicer
* Slic3r
* Cura
* IdeaMaker

## Installation and usage

### SuperSlicer, PrusaSlicer, and Slic3r

Download the provided binary for your platform, and place it in with in your slicer's folder.

In your Print Settings, under Output Options, add `preprocess_cancellation.exe;` to the 
"Post-Processing Scripts". For mac or linux, you should just use `preprocess_cancellation;`

Then, all generated gcode should be automatically processed and rewritten to support cancellation.

### Cura

To implement the preprocessor into Cura a dedicated python script is needed to call the executable.
You find it in this repository in the Cura folder - "PreprocessCancellation.py".
Place it together with the executable in the Cura configuration folder:
#### Detailed Instructions:

1. Click Help menu item.
2. Click "Show Configuration Folder".
3. Find the folder call "scripts". If you don't see one create one in the configuration folder.
4. Place the python script PreprocessCancellation.py and the preprocess_cancellation executable for your os into the script folder.
5. Restart Cura.
6. Now, in Extensions > Post Processing > Modify G-Code. Select the "Add a script"-button and from the menu that appears choose "Preprocess Cancellation". Alternatively, specify the path to the executable at step 6 with the script settings in Cura.

Gcode files will be modified while saving. Notice that it can take serval seconds to finish.

### G-Codes for Object Cancellation

There are 3 gcodes inserted in the files automatically, and 4 more used to control the 
object cancellation.

`EXCLUDE_OBJECT_DEFINE NAME=<object name> [CENTER=x,y] [POLYGON=[[x,y],...]]`

The NAME must be unique and consistent throughout the file. CENTER is the center location 
for the mesh, used to show on interfaces where and object being canceled is on the bed. 
POLYGON is a series of points, used to represent the bounds of the object. It can be just 
a bounding box, a simplified outline, or another useful shape.

`EXCLUDE_OBJECT_START NAME=<object name>` and `EXCLUDE_OBJECT_END [NAME=<object name>]`

The beginning and end markers for the gcode for a single object. When an object is excluded, 
anything between these markers is ignored.

For a full breakdown, see [the klipper G-Code Reference](https://www.klipper3d.org/G-Codes.html#excludeobject)

### Known Limitations

Cura and Ideamaker sliced files have all support material as a single non-mesh entity.
This means that when canceling an object, it's support will still print. Including
support that is inside or built onto the canceled mesh. The Slic3r family (including
PrusaSlicer and SuperSlicer) treat support as part of the individual mesh's object,
so canceling a mesh cancels it's support as well.

### How does it work

This looks for known markers inside the GCode, specific to each slicer. It uses those
to figure out the printing object's name, and track's all extrusion moves within it's 
print movements. Those are used to calculate a minimal bounding box for each mesh. 
A series of `EXCLUDE_OBJECT_DEFINE` gcodes are placed in a header, including the bounding boxes
and objects centers. Then, these markers are used to place `EXCLUDE_OBJECT_START` and 
`EXCLUDE_OBJECT_END` gcodes in the file surrounding each set of extrusions for that object.
