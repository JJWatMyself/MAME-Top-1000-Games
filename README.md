# MAME-Top-1000-Games
Top 1000 MAME Games
This script will copy all BIOS and approx top 900 games to a folder you choose.

Discuss here:
https://www.retroroms.info/forum/topic/Top-1000-MAME-games.htm

Download the script and list file:
file_copy.ps1
file_copy_list.txt

Right-click edit file_copy.ps1

Update two lines to match your directories

$sourceFolder = "D:\Games\MAME\roms"
$destinationFolder = "C:\tmp\arcade"

Open a powershell as admin and run:

Set-ExecutionPolicy Unrestricted

Now you can run the script.  There are two modes:

1 = Report only
2 = Copy files

Two report files will always be created also:

file_copy_report_files_copied.txt
file_copy_report_files_not_found.txt

Alternate use:

You can skip the step of a full ROM set download.

Take the file file_copy_list.txt and insert in front of each line the URL of your fav ROMS site.

Then paste the links into JDownloader for the download.



This script will copy all BIOS and approx top 900 games to a folder you choose.

Download the script and list file:
file_copy.ps1
file_copy_list.txt

Right-click edit file_copy.ps1

Update two lines to match your directories

$sourceFolder = "D:\Games\MAME\roms"
$destinationFolder = "C:\tmp\arcade"

Open a powershell as admin and run:

Set-ExecutionPolicy RemoteSigned

Now you can run the script.  There are two modes:

1 = Report only
2 = Copy files

Two report files will always be created also:

file_copy_report_files_copied.txt
file_copy_report_files_not_found.txt

Alternate use:

You can skip the step of a full ROM set download.

Take the file file_copy_list.txt and insert infront of each line the URL of your fav ROMS site.

Then paste the links into JDownloader for the download.

All credits for game selection to the following posts:

http://forum.arcadecontrols.com/index.php/topic,149708.msg1563036.html#msg1563036
https://hyperspin-fe.com/files/file/11710-griffin518s-best-of-mame-xml-database/
https://www.reddit.com/r/MAME/comments/2rawpr/i_compiled_several_best_ofrecommended_arcade/All credits for game selection to the following posts:
http://forum.arcadecontrols.com/index.php/topic,149708.msg1563036.html#msg1563036
https://hyperspin-fe.com/files/file/11710-griffin518s-best-of-mame-xml-database/
https://www.reddit.com/r/MAME/comments/2rawpr/i_compiled_several_best_ofrecommended_arcade/


