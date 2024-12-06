# EEGINPLOT Plugin for EEGLAB
**Version:** 1.0.0

## Overview
EEGINPLOT is a modified version of the original `eegplot()` function from EEGLAB. It allows users to highlight EEG data segments and select specific channels for interpolation. This is particularly useful for identifying and correcting non-stereotypical artifacts in EEG recordings which have been pronounced only in specific times and only on one or two chanells and you don't want to intepolate the whole channel from beginning to the end.

## Features
- Highlight data segments using the mouse.
- Select specific channels within segments for interpolation by mouse click.
- Access marked segments and channels via the `winrej` variable in the workspace.
- Retains all functionalities of the original `eegplot()` function.
- Interpolates the selected segments on the selected chnnels by Pressing the Interpolation button.
- Uses "Shperical" interpolation method. 

## Installation
1. **Download the Plugin:**
   - Clone or download the plugin from the [GitHub repository](https://github.com/G00gl/EEGINPLOT).

2. **Place in EEGLAB Plugins Directory:**
   - Copy the `EEGINPLOT` folder into your EEGLAB plugins directory, usually located at:
     ```
     C:(or your main directory)/Program Files/MATLAB/R2024(or any other version)/toolbox/eeglab/plugins/
     ```
 3. **Check "setpath" in Matlab**
    - Check and do the "setpath" to be Sure it is defined in your matlab directories.
    - Open MATLAB software
    - Open Home menu from top
    - Under Environment section
    - Select setpath --> in the pop up windo select Add with Subfolders ->inser the adress of the plugin directory-> press Save button   

4. **Restart EEGLAB:**
   - Launch EEGLAB, or if it's already open, restart it to load the new plugin.

## Usage

1. **Load Your EEG Dataset:**
   - Use EEGLAB to load the dataset you wish to analyze.

2. **Open EEGINPLOT:**
   - Access it through the EEGLAB GUI. **(Under Tools-->Partial Interpolation)**
   - Alternatively, call the function from the MATLAB command window:
     ```matlab
     eeginplot(EEG.data, 'srate', EEG.srate);
     ```
     this also will open the GUI
     
4. **Highlight Segments and Select Channels:**
   - Click and drag to highlight a segment.
   - Click to select the channels you wish to interpolate within that segment.

5. **Interpolate Selected Channels:**
   - Press the 'Interpolate' button in the GUI to interpolate.   
