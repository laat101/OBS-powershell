<#	
	.NOTES

    .DESCRIPTION
    This cmdlet let's you output OBS Studio to a moinitor. Make sure you install OBS-websocket plugin in OBS.
    Check this url: https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/

    .EXAMPLE
    # Output to your primary monitor
    Start-obsMonitor -Monitor 1

    .EXAMPLE
    # Output to your secundary monitor
    Start-obsMonitor -Monitor 2

    .EXAMPLE
    # Output to a window
    Start-obsMonitor -Monitor 0

#>
function Start-obsMonitor {
    param(
        [int]$Monitor
    )
    $MonitorId = $Monitor - 1
   
    $Command = '{"request-type":"OpenProjector","message-id":"VALMEASSAGEID", "monitor": VALMONITOR}'.Replace('VALMEASSAGEID', $message_id).Replace("VALMONITOR", $MonitorId)
    $Array = @()
    $Encoding = [System.Text.Encoding]::UTF8
    $Array = $Encoding.GetBytes($Command)
    $Command = $Array           
    $OBSdata = $WS.SendAsync($Command, [System.Net.WebSockets.WebSocketMessageType]::Text, [System.Boolean]::TrueString, $CT)    
    $global:message_id++
    Start-Sleep -Milliseconds 10
}