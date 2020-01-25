[Setup]
AppName=My Program
AppVersion=1.5
WizardStyle=modern
DefaultDirName={autopf}\My Program
Compression=lzma2
SolidCompression=yes

[Files]
Source: "..\bin\Release\netcoreapp3.1\win10-x64\publish\*"; DestDir: "{app}"

[Run]
Filename: {sys}\sc.exe; Parameters: "create AA start= auto binPath= ""{app}\WinServe.exe""" ; Flags: runhidden
Filename: {sys}\sc.exe; Parameters: "start AA" ; Flags: runhidden

[UninstallRun]
Filename: {sys}\net.exe; Parameters: "stop AA" ; Flags: runhidden
Filename: {sys}\sc.exe; Parameters: "delete AA" ; Flags: runhidden