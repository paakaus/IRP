
# Inner Range Programmer Print Tool


For the Concept 2000 / 3000 Alarm panel downloader tool from Inner Range, a project released, copyrighted 1993 allowed security alarm installers to remotely download into concept 2000 / 3000 panels with modem conections. Some installers still use this tool as a means of data storage with older client Alarm Panels.

As the download software was created back in the early years of computing, it was created with DOS; with help today the software is accessable with the full database & functionality due to DOSBox https://www.dosbox.com/ 

And issue arises when an installer wants to print out part of the database, where the IRP tries to find the localised printer and push the .LST file to the print command. Due to DOSBox, not having a locally connected printer, or passing a printer through DOSBox, the IRP tool passes the information to a file located in /IRP_TOOL_DIRECTORY/PRINTIRP.LST and cannot print.

This is a simple powershell that grabs the PRINTIRP.LST and creates a readable .txt allowing the user to print.

It creates a folder on the desktop called *IRP Print Outs*, creating a .txt with the account name and the date created allowing for easy searchability. 


## Prerequisite

#### Set the location of the IRP folder in line 6
Line 6 has this code ``` Copy-Item "C:\dosprogs\IRP\PRINTIRP.LST" "$irp_printout_location"```

What is important to be done first is changing the location of PRINTIRP.LST to where your local version of the IRP tool is located.
