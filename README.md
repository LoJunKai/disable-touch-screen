# disable-touch-screen
How to disable touch screen on laptop windows 10 

## Notes

Currently the only way to disable touch screen is to go to: 

    Device Manager > Human Interface Devices > Double click on the Driver > Driver > Disable Driver

Andddd this is such a hassle. Hence, I've created this script to do just that! Except, now it's just pressing your defined shortcut, allowing admin privileges, and done!

## Instructions

1. Download the `disable-touchscreen.ps1` powershell script
2. Right click on script > Create shortcut
3. Right click on newly created shortcut > Properties > Shortcut:
    - Add `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File` in Target field, before your shortcut file path
    - Advanced > Enable "Run as Administrator" > OK
    - Shortcut key: <press your hotkey>
    - Apply
4. Press the defined shortcut, allow admin privileges, watch the wonder!
  
## How to delete

1. Find and delete the `disable-touchscreen.ps1` script and the shortcut you've made
2. That's all!
