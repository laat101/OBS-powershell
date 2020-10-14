<#	
	.NOTES

    .DESCRIPTION
    This cmdlet let's you change scenes to OBS Studio. Make sure you install OBS-websocket plugin in OBS.
    Check this url: https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/

    .EXAMPLE
    # Start a specific scene, input is case sensitive
    Start-obsScene -SceneName "Intro"

#>
function Start-obsScene {
    param(
        $SceneName
    )
    $Command = '{"scene-name":"VALSCENENAME","request-type":"SetCurrentScene","message-id":"VALMEASSAGEID"}'.Replace('VALSCENENAME', $SceneName).Replace('VALMEASSAGEID', $message_id)
    $Array = @()
    $Encoding = [System.Text.Encoding]::UTF8
    $Array = $Encoding.GetBytes($Command)
    $Command = $Array           
    $OBSdata = $WS.SendAsync($Command, [System.Net.WebSockets.WebSocketMessageType]::Text, [System.Boolean]::TrueString, $CT)    
    $global:message_id++
    Start-Sleep -Milliseconds 10
}