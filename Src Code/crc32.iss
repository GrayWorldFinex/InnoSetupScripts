
#ifdef UNICODE
   #define AWP "pansichar"
#else
   #define AWP "pchar"
#endif

[Setup]                                                             
AppName=crc32                              
AppVerName=crc32 v1.0
DefaultDirName={tmp}                                                
                                                                             
[Files]                                    
Source: crc32.dll; Flags: dontcopy;                                                                   

[Code]   
function GetFileCRC32(const FileName: {#AWP}): {#AWP};
external 'GetFileCRC32@files:crc32.dll stdcall';  
                                                   
function InitializeSetup(): Boolean;                                           
var
   crc32: {#AWP};                                           
   tFile: String;                                                                                           
begin                                                   
   tFile := ExpandConstant('{srcexe}');  
                                                                
   crc32 := GetFileCRC32(tFile);      

   MsgBox('CRC32 checksum of the:' + #13 + '"' +tFile+ '"' + #13 + ' is: ' + crc32, mbInformation, MB_OK);                                    
                                                           
   Result := False;                             
end;                               