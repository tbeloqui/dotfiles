Remove-Module PSReadline
$console = $host.ui.rawui
$console.backgroundcolor = "DarkYellow"
$console.foregroundcolor = "Black"
$colors = $host.privatedata
$colors.verbosebackgroundcolor = "DarkYellow"
$colors.verboseforegroundcolor = "Green"
$colors.warningbackgroundcolor = "DarkYellow"
$colors.warningforegroundcolor = "Yellow"
$colors.ErrorBackgroundColor = "DarkYellow"
$colors.ErrorForegroundColor = "Red"

$GitPromptSettings.EnableFileStatus = $false