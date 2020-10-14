<#	
    .VERSION
    1.0

    .DESCRIPTION
    This function let's you connect to OBS Studio.
    Make sure you install OBS-websocket plugin in OBS.
    Check this url: https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/
    CAUTION: This function is unable to handle websocket passwords.

    .EXAMPLE
    # Connect to OBS Studio
    Connect-obs -ip 127.0.0.1 -port 4444

#>

function Connect-obs {
    param(
        $ip="127.0.0.1",
        $port="4444"
    )
    $global:message_id = 0
    $URL = 'ws://{0}:{1}/' -f $ip, $port
    $global:WS = New-Object System.Net.WebSockets.ClientWebSocket                                                
    $global:CT = New-Object System.Threading.CancellationToken
    $global:Conn = $WS.ConnectAsync($URL, $CT)
    While (!$Conn.IsCompleted) { 
        # Connecting
    }
    Write-Warning "It's not possible to use a OBS websocket password. Inputs are case sensitive!"
}