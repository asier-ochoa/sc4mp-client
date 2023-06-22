; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SC4MP Launcher"
#define MyAppVersion "0.1.0"
#define MyAppPublisher "Simcity 4 Multiplayer Project"
#define MyAppExeName "sc4mpclient.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C64A87A8-0A9D-482A-997D-CAC9A69AD629}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={userdocs}\SimCity 4\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\dist\License.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\setupbuilds
OutputBaseFilename=sc4mp-client-setup-v{#MyAppVersion}
SetupIconFile=D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\dist\resources\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\dist\Readme.html"; DestDir: "{app}"; Flags: isreadme
Source: "D:\Users\Kegan\Desktop\Projects\mod\sc4\SC4MP\sc4mp-client\dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

