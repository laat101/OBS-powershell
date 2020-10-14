<#	
	.NOTES

    .DESCRIPTION
    This cmdlet let's you change the visibility of a specific source to OBS Studio. 
    Make sure you install OBS-websocket plugin in OBS. Check this url: 
    https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/

    .EXAMPLE
    # This example makes the source 'Logo' visible in scene 'Intro'. Input is case sensitive!
    Show-obsSource -Scene Intro -Name Logo -Show $true

    .EXAMPLE
    # This example makes the source 'Logo' unvisible in scene 'Intro'. Input is case sensitive!
    Show-obsSource -Scene Intro -Name Logo -Show $false

#>
function Show-obsSource {
    param(
        [Parameter(Mandatory=$true)]$SceneName,
        [Parameter(Mandatory=$true)]$SourceName,
        [Parameter(Mandatory=$true)][boolean]$Show
    )
    if ($Show) {
        $Sh = "true"
    }
    else {
        $Sh = "false"
    }
    
    $Command = '{"scene-name":"VALSCENE","request-type":"SetSceneItemProperties","message-id":"VALMEASSAGEID", "item": "VALNAME", "visible": VALSHOW}'.Replace('VALSCENE', $SceneName).Replace('VALNAME', $SourceName).Replace('VALMEASSAGEID', $message_id).Replace('VALSHOW', $Sh)
    $Array = @()
    $Encoding = [System.Text.Encoding]::UTF8
    $Array = $Encoding.GetBytes($Command)
    $Command = $Array           
    $OBSdata = $WS.SendAsync($Command, [System.Net.WebSockets.WebSocketMessageType]::Text, [System.Boolean]::TrueString, $CT)    
    $global:message_id++
    while (-not($OBSdata.IsCompleted)) {
    }
    start-sleep -Milliseconds 5
}