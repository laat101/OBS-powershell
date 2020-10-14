<#	
	.NOTES

    .DESCRIPTION
    This cmdlet let's you disconnect to OBS Studio. Make sure you install OBS-websocket plugin in OBS.
    Check this url: https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/

    .EXAMPLE
    # Connect to OBS Studio
    Disconnect-obs

#>

function Disconnect-obs {
    $global:WS.Dispose()
}