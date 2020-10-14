# OBS Studio poweshell module
Module to control OBS via powershell. This module uses OBS websocket (thanks to Stéphane Lepin Palakis) Make sure you install OBS-websocket plugin in OBS. 

Check this url: https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/
CAUTION: At this time it's not possible to use credentials to connect to OBS websocket.

## Functions
 - Connect-obs
 - Disconnect-obs
 - Start-obsScene
 - Show-obsSource

## Examples
```powershell
# Connect to OBS Studio
    Connect-obs -ip 127.0.0.1 -port 4444

# Disconnect OBS Studio
    Disconnect-obs

# Start a specific scene, input is case sensitive
    Start-obsScene -SceneName "Intro"

# This example makes the source 'Logo' visible in scene 'Intro'. Input is case sensitive!
    Show-obsSource -Scene Intro -Name Logo -Show $true

# This example makes the source 'Logo' unvisible in scene 'Intro'. Input is case sensitive!
    Show-obsSource -Scene Intro -Name Logo -Show $false

# Use sleep to move through the scenes
    Start-obsScene -SceneName "Scene 1"
    Start-sleep 5
    Start-obsScene -SceneName "Scene 2"
    Start-sleep 5
    Start-obsScene -SceneName "Scene 3"
    Start-sleep 5
```

## ToDo
I try to expand this module with some nice new features soon.

## Know Issues
- OBS Websocket password protection is not posssible. This maybe due to powershell. Investigating. 