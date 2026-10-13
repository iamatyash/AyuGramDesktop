; Inno Setup Script for AyuGram Desktop
; Creates a standard Windows Installer for AyuGram Desktop

#ifndef MyAppVersion
#define MyAppVersion "7.2.9"
#endif

#define MyAppName "AyuGram Desktop"
#define MyAppPublisher "Radolyn Labs / AyuGram"
#define MyAppURL "https://github.com/iamatyash/AyuGramDesktop"
#define MyAppExeName "AyuGram.exe"

[Setup]
AppId={{E68F243B-57D1-4D56-8A61-2A1B7E9F90C1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\AyuGram
DefaultGroupName=AyuGram
AllowNoIcons=yes
OutputDir=output
OutputBaseFilename=AyuGram-Setup
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64compatible
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}
CloseApplications=yes
RestartApplications=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "startupicon"; Description: "Запускать AyuGram при старте Windows"; GroupDescription: "Автозагрузка:"; Flags: unchecked

[Files]
Source: "..\build_input\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: startupicon

[Registry]
; Register tg:// protocol
Root: HKLM; Subkey: "Software\Classes\tg"; ValueType: string; ValueData: "URL:Telegram Link"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\tg"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""
Root: HKLM; Subkey: "Software\Classes\tg\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" -- ""%1"""

; Register App Paths for Win+R
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: string; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: string; ValueName: "Path"; ValueData: "{app}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent
