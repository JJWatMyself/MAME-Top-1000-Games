# 20250102 John Walshaw
# Open Power Shell as admin
# Run command:
# Set-ExecutionPolicy RemoteSigned
# Set the source and destination folders

$sourceFolder = "D:\Games\MAME\roms"
$destinationFolder = "C:\tmp\arcade"
$fileList = "file_copy_list.txt"

# Output files
$copiedLog = "file_copy_report_files_copied.txt"
$notFoundLog = "file_copy_report_files_not_found.txt"

# Prompt user for mode selection
$mode = Read-Host "Select mode (1 = Report only, 2 = Run copy). Press Enter for Report only"

if (-not $mode) { $mode = 1 }

# Ensure the destination folder exists if copying
if ($mode -eq 2 -and !(Test-Path -Path $destinationFolder)) {
    New-Item -ItemType Directory -Path $destinationFolder
}

# Clear previous logs
if (Test-Path -Path $copiedLog) {
    Clear-Content -Path $copiedLog
}
if (Test-Path -Path $notFoundLog) {
    Clear-Content -Path $notFoundLog
}

# Read the list of files
$files = Get-Content -Path $fileList

foreach ($file in $files) {
    $sourceFile = Join-Path -Path $sourceFolder -ChildPath $file
    $destinationFile = Join-Path -Path $destinationFolder -ChildPath $file

    if (Test-Path -Path $sourceFile) {
        if ($mode -eq 2) {
            # Perform the copy if mode is set to 2
            if (-not (Test-Path -Path $destinationFile)) {
                Copy-Item -Path $sourceFile -Destination $destinationFile
                Write-Output "$file" | Out-File -Append -FilePath $copiedLog
                Write-Output "Copied: $sourceFile -> $destinationFile"
            } else {
                # Log and output message if file already exists
                $message = "Skipped (Exists): $file"
                Write-Output $message | Out-File -Append -FilePath $copiedLog
                Write-Output $message
            }
        } else {
            # Report only, log if file exists at the destination
            if (Test-Path -Path $destinationFile) {
                $message = "$file (Exists, Skipped)"
                Write-Output $message | Out-File -Append -FilePath $copiedLog
                Write-Output $message
            } else {
                $message = "$file (Not Found in Destination)"
                Write-Output $message | Out-File -Append -FilePath $copiedLog
                Write-Output "Would Copy: $sourceFile -> $destinationFile"
            }
        }
    } else {
        Write-Output "$file" | Out-File -Append -FilePath $notFoundLog
        Write-Output "File not found: $sourceFile"
    }
}


Write-Output "Script completed. Logs saved to:"
Write-Output "$copiedLog"
Write-Output "$notFoundLog"

Read-Host "Press enter to exit"