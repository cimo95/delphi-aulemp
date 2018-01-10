program aulemp2 ;

uses
  Forms ,
  utama in 'utama.pas' {mf} ,
  Mp3FileUtils in 'Mp3FileUtils.pas' ,
  U_CharCode in 'U_CharCode.pas' ,
  ID3v2Frames in 'Id3v2Frames.pas' ,
  MPAud in 'MPAud.pas' ;

{$R *.res}

begin
  Application.Initialize ;
  Application.Title := 'Aulemp 2.0';
  Application.CreateForm( Tmf , mf ) ;
  Application.Run ;
end.

