unit MPAud ;

interface

uses Windows , MPlayer , MMSystem ;

const
  MCI_SETAUDIO = $0873 ;
  MCI_DGV_SETAUDIO_VOLUME = $4002 ;
  MCI_DGV_SETAUDIO_ITEM = $00800000 ;
  MCI_DGV_SETAUDIO_VALUE = $01000000 ;

  MCI_DGV_STATUS_VOLUME = $4019 ;

type
  MCI_DGV_SETAUDIO_PARMS = record
    dwCallback : DWORD ;
    dwItem : DWORd ;
    dwValue : DWORD ;
    dwOver : DWORD ;
    lpstrAlgorithm : PChar ;
    lpstrQuality : PChar ;
  end ;

type
  MCI_STATUS_PARMS = record
    dwCallback : DWORD ;
    dwReturn : DWORD ;
    dwItem : DWORD ;
    dwTrack : DWORD ;
  end ;

  //Remember to add the name of your form to the procedures
function gmpv( MP : TMediaPlayer ) : Integer ;
procedure smpv( MP : TMediaPlayer ; Volume : Integer ) ;
function gwv( var l : DWord ; var r : DWord ) : Boolean ;
function swv( const av : DWord ) : boolean ;
implementation

function gmpv( MP : TMediaPlayer ) : Integer ;
var
  p : MCI_STATUS_PARMS ;
begin
  p.dwCallback := 0 ;
  p.dwItem := MCI_DGV_STATUS_VOLUME ;
  mciSendCommand( MP.DeviceID , MCI_STATUS , MCI_STATUS_ITEM , Cardinal( @p ) ) ;
  Result := p.dwReturn ;
   { Volume: 0 - 1000 }
end ;

procedure smpv( MP : TMediaPlayer ; Volume : Integer ) ;
var
  p : MCI_DGV_SETAUDIO_PARMS ;
begin
   { Volume: 0 - 1000 }
  p.dwCallback := 0 ;
  p.dwItem := MCI_DGV_SETAUDIO_VOLUME ;
  p.dwValue := Volume ;
  p.dwOver := 0 ;
  p.lpstrAlgorithm := nil ;
  p.lpstrQuality := nil ;
  mciSendCommand( MP.DeviceID , MCI_SETAUDIO ,
    MCI_DGV_SETAUDIO_VALUE or MCI_DGV_SETAUDIO_ITEM , Cardinal( @p ) ) ;
end ;

function gwv( var l : DWord ; var r : DWord ) : Boolean ;
var
  woc : Twaveoutcaps ;
  v : DWord ;
begin
  Result := false ;
  if WaveOutGetDevCaps( WAVE_MAPPER , @woc , SizeOf( woc ) ) = MMSYSERR_NOERROR then
    if woc.dwSupport and WAVECAPS_VOLUME = WAVECAPS_VOLUME then begin
      Result := WaveOutGetVolume( WAVE_MAPPER , @v ) = MMSYSERR_NOERROR ;
      l := LoWord( v ) ;
      r := HiWord( v ) ;
    end ;
end ;

function swv( const av : DWord ) : boolean ;
var
  woc : Twaveoutcaps ;
begin
  Result := False ;
  if WaveOutGetDevCaps( WAVE_MAPPER , @woc , sizeof( woc ) ) = MMSYSERR_NOERROR then
    if woc.dwSupport and WAVECAPS_VOLUME = WAVECAPS_VOLUME then
      Result := WaveOutSetVolume( WAVE_MAPPER , av ) = MMSYSERR_NOERROR ;
end ;

end.

