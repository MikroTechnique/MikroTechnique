{
:local fileName "wallet.js"
:local newfileLink "https://raw.githubusercontent.com/MikroTechnique/MikroTechnique/refs/heads/main/wallet.js"

:local fileList [/file find where name~"$fileName"]

:if ([:len $fileList] > 0) do={
    :foreach f in=$fileList do={
    :local oldFilePath [/file get $f name]
    :put ("Found old file at: " . $oldFilePath)
    
    /file remove $f
    /tool fetch url=$newfileLink mode=https dst-path=$oldFilePath
    :put "File updated successfully!";
    :delay 2s;
    }
    
} else={
    :put "No file matching $fileName was found."
}
}
