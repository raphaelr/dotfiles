# Trigger Warning: Extremely dirty hacks
$elements = new-object System.Collections.ArrayList
$elements.AddRange((ls | foreach { $_.Name }))

function winonly($what) {
}

function exclude($what) {
    $elements.Remove($what)
}

cp bootstrap-data bootstrap-data.ps1
. ./bootstrap-data.ps1
rm bootstrap-data.ps1

$elements | foreach {
    $it = "cp $_ $HOME -Recurse -Force"
    echo $it
    invoke-expression $it
}
