unit utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shellapi, filectrl, xpman, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, Menus, MPlayer, Mp3FileUtils, U_CharCode, ID3v2Frames, inifiles;

type
  Tmf = class(TForm)
    mm: TMainMenu;
    F1: TMenuItem;
    P1: TMenuItem;
    P2: TMenuItem;
    N1: TMenuItem;
    E1: TMenuItem;
    P3: TMenuItem;
    P4: TMenuItem;
    P5: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    S2: TMenuItem;
    N5: TMenuItem;
    R1: TMenuItem;
    O1: TMenuItem;
    A1: TMenuItem;
    C1: TMenuItem;
    N6: TMenuItem;
    V1: TMenuItem;
    V2: TMenuItem;
    O2: TMenuItem;
    T1: TMenuItem;
    H1: TMenuItem;
    A2: TMenuItem;
    S3: TMenuItem;
    N7: TMenuItem;
    A3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    sb_pl: TSpeedButton;
    sb_ps: TSpeedButton;
    sb_s: TSpeedButton;
    sb_pv: TSpeedButton;
    sb_n: TSpeedButton;
    tb_b: TTrackBar;
    tb_v: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    l_t: TLabel;
    sb_re: TSpeedButton;
    sb_ra: TSpeedButton;
    l_st: TLabel;
    l_aa: TLabel;
    p_lv: TPanel;
    l_l1: TLabel;
    l_l0: TLabel;
    p_pl: TPanel;
    lb_pl: TListBox;
    sb_pla: TSpeedButton;
    sb_pld: TSpeedButton;
    sb_pls: TSpeedButton;
    l_app: TLabel;
    mp: TMediaPlayer;
    od: TOpenDialog;
    lb_pl_h: TListBox;
    t: TTimer;
    pm: TPopupMenu;
    O3: TMenuItem;
    A4: TMenuItem;
    C2: TMenuItem;
    N8: TMenuItem;
    L1: TMenuItem;
    N9: TMenuItem;
    L2: TMenuItem;
    R2: TMenuItem;
    o4: TMenuItem;
    M1: TMenuItem;
    N10: TMenuItem;
    M2: TMenuItem;
    R3: TMenuItem;
    C3: TMenuItem;
    S5: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    sd: TSaveDialog;
    t0: TTimer;
    sll: TMenuItem;
    plpm0: TMenuItem;
    plpm1: TMenuItem;
    procedure P1Click(Sender: TObject);
    procedure lb_plDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mpn(Sender: TObject);
    procedure tTimer(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure sb_reClick(Sender: TObject);
    procedure sb_plClick(Sender: TObject);
    procedure sb_psClick(Sender: TObject);
    procedure sb_sClick(Sender: TObject);
    procedure sb_nClick(Sender: TObject);
    procedure sb_pvClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure tb_bChange(Sender: TObject);
    procedure tb_vChange(Sender: TObject);
    procedure l_tClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure O3Click(Sender: TObject);
    procedure sb_raClick(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure P5Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure V2Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure o4Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure sb_plaClick(Sender: TObject);
    procedure sb_pldClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure sb_plsClick(Sender: TObject);
    procedure t0Timer(Sender: TObject);
    procedure l_tContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure A2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure sllClick(Sender: TObject);
    procedure lb_plContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure plpm0Click(Sender: TObject);
    procedure plpm1Click(Sender: TObject);
    procedure plpm2Click(Sender: TObject);
  private
    { Deklarasi hanya untuk penggunaan dalam unit ini saja }
  public
    aa, xa, st, xt, ly, td, at, tl: string;
    ix, jx, kx, gn, pb, re, xs, cl, vb, gv: integer;
    su, bx, cx, tr, ba, bt, xc, sl: boolean;
    { Deklarasi untuk penggunaan ke semua unit yang terintegerasi }
  end;

var
  mf: Tmf;
  Id3v2Tag: TId3v2Tag;

implementation

uses MPAud;

{$R *.dfm} //template tweaked by : Araachmadi Putra Pambudi

function gtd: string;
var
  tf: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tf);
  result := StrPas(tf);
end;

function grd: string;
begin
  result := IntToHex(StrToInt(FormatDateTime('hhmmsszz', now)), 8);
end;

procedure s2m3u(f: string);
var
  s: TFilestream;
  i: integer;
  tsl: tstringlist;
begin
  tsl := tstringlist.Create;
  tsl.Add('#EXTM3U');
  for i := 0 to mf.lb_pl.Items.Count - 1 do
  begin
    s := TFileStream.Create(mf.lb_pl_h.items.strings[i], fmOpenRead or
      fmShareDenyWrite);
    Id3v2Tag.ReadFromStream(s);
    s.free;
    tsl.Add('#EXTINF:0,' + id3v2tag.Artist + ' - ' + id3v2tag.Album + ' : ' +
      id3v2tag.Title);
    tsl.Add(mf.lb_pl_h.Items.Strings[i]);
  end;
  tsl.SaveToFile(changefileext(f, '.m3u'));
  tsl.Free;
end;

function pk(t, taw, tak: string; atl, hl: boolean; pll: integer): string;
begin
  if atl and not hl then
    result := copy(t, pos(taw, t), pos(tak, t) + (length(tak) - 1))
  else if atl and hl then
    result := copy(copy(t, pos(taw, t), pos(tak, t) + (length(tak) - 1)), 1,
      pll);
  if not atl and not hl then
    result := copy(copy(t, pos(taw, t), (pos(tak, t) - pos(taw, t))), length(taw)
      + 1, length(t) - 1)
  else if not atl and hl then
  begin
    result := copy(t, length(copy(t, pos(taw, t), pos(tak, t) + (length(tak) -
      1))) + 1, pll);
  end;
end;

function gv(s: string): TStringlist;
var
  i: integer;
begin
  result := tstringlist.Create;
  i := strtoint(pk(s, '[', ':', false, false, 0)) * 60000; //3600[00]
  i := i + (strtoint(pk(s, ':', '.', false, false, 0)) * 1000); //60[00]
  i := i + (strtoint(pk(s, '.', ']', false, false, 0)) * 10);
    //[100]   [00:01.15]
  result.Add(inttostr(i));
  result.Add(copy(s, 11, length(s)));
end;

function ii(s: string): boolean;
begin
  try
    strtoint(s);

    result := true;
  except result := false;
  end;
end;

function tdsti(const S: string; out Value: Integer): Boolean;
begin
  result := (pos('$', S) = 0) and TryStrToInt(S, Value);
end;

procedure llo(f: string);
var
  tsl: tstringlist;
  i, j, k: integer;
  tif: tinifile;
begin
  tsl := tstringlist.Create; mf.tl:=grd+'.aly';
  mf.ly := mf.td + '\' + mf.tl;
  tif := tinifile.Create(mf.ly);
  tsl.LoadFromFile(f);
  tif.WriteInteger('init', 'line', 0);
  j := -1;
  for i := 0 to tsl.Count - 1 do
  begin

    if tdsti(pk(tsl.Strings[i], '[', ':', false, false, 0), k) then
    begin

      inc(j);
      tif.WriteString('time', inttostr(j), gv(tsl.Strings[i])[0]);
      tif.WriteString('text', inttostr(j), gv(tsl.Strings[i])[1]);
    end;
  end;
  tif.Writeinteger('init', 'line', j);
end;

procedure mly(f: string);
begin

end;

procedure gid(f: string);
var
  s: TFilestream;
begin
  s := TFileStream.Create(f, fmOpenRead or fmShareDenyWrite);
  Id3v2Tag.ReadFromStream(s);
  s.free;
  mf.l_aa.Caption := id3v2tag.Artist + ' - ' + id3v2tag.Album;
  mf.l_st.Caption := id3v2tag.Title;
  if mf.l_aa.Caption = ' - ' then
    mf.l_aa.Caption := formatdatetime('dddd, dd MMMM yyyy', now);
  if mf.l_st.Caption = '' then
    mf.l_st.Caption := 'AULEMP 2.0';
  mf.aa := mf.l_aa.Caption;
  mf.xa := mf.aa;
  mf.st := mf.l_st.Caption;
  mf.xt := mf.st;
end;

function stt(const s: Cardinal): Double;
var
  dd, hh, ms, ss, mm: Cardinal;
begin
  dd := s div 86400;
  hh := (s mod 86400) div 3600;
  mm := ((s mod 86400) mod 3600) div 60;
  ss := ((s mod 86400) mod 3600) mod 60;
  ms := 0;
  Result := dd + EncodeTime(hh, mm, ss, ms);
end;

procedure m3u_r(f: string);
var
  i: Integer;
begin
  with mf do
  begin
    lb_pl_h.Items.LoadFromFile(f);
    lb_pl_h.Items.Delete(0);
    if lb_pl_h.Items.Count > 0 then
      for i := lb_pl_h.Items.Count - 1 downto 0 do
        if (Copy(lb_pl_h.Items[i], 1, 8) = '#EXTINF:') or
          (ansilowercase(extractfileext(lb_pl_h.Items[i])) <> '.mp3') then
          lb_pl_h.Items.Delete(i);
    for i := 0 to lb_pl_h.Items.Count - 1 do
      lb_pl.Items.Add(extractfilename(changefileext(lb_pl_h.Items.Strings[i],
        '')));
  end;
end;

procedure Tmf.P1Click(Sender: TObject);
var
  i: integer;
begin
  od.Title := 'Load File / Playlist';
  od.Filter := 'MPEG Layer 3 File|*.mp3|M3U Standard Playlist File|*.m3u';
  if not od.Execute then
    exit
  else if od.FilterIndex = 1 then
  begin
    lb_pl_h.Clear;
    lb_pl.Clear;
    for i := 0 to od.Files.Count - 1 do
    begin
      lb_pl.Items.Add(extractfilename(changefileext(od.Files.Strings[i], '')));
      lb_pl_h.Items.Add(od.Files.Strings[i]);
    end;
  end
  else
  begin
    if od.Files.Count <> 1 then
    begin
      messagebox(handle,
        'Please make sure you have selected correct playlist file', 'Error', 0);
      exit;
    end
    else
    begin
      lb_pl_h.Clear;
      lb_pl.Clear;
      m3u_r(od.FileName);
    end;
  end;
end;

procedure ttp;
begin
  with mf do
  begin
    mp.Close;
    mp.FileName := lb_pl_h.Items.Strings[lb_pl.itemindex];
    mp.Open;
    mp.Play;
    try
      gid(mp.FileName);
    except
    end;
    at := ChangeFileExt(ExtractFileName(mp.FileName), '') + ' - Aulemp 2.0';
    pb := lb_pl.ItemIndex;
    mf.ly := '';
    mf.l_l0.Caption := 'AULEMP 2.0';
    mf.l_l1.Caption := 'Another Unattended Lyric Enabled Media Player';
    if fileexists(changefileext(mp.FileName, '.lrc')) then
    begin
      mf.l_l0.Caption := '';
      mf.l_l1.Caption := '';
      llo(changefileext(mp.FileName, '.lrc'));
      if gn = 1 then
      begin
        mp.Pause;
        mp.Pause;
      end;
    end
    else
    begin
      mf.l_l0.Caption := 'AULEMP 2.0';
      mf.l_l1.Caption := 'Another Unattended Lyric Enabled Media Player';
    end;
  end;
end;

procedure Tmf.lb_plDblClick(Sender: TObject);
begin
  ttp;
end;

procedure Tmf.FormCreate(Sender: TObject);
begin
  mp.Notify := True;
  mp.OnNotify := mpn;
  gn := 0;
  Id3v2Tag := TId3v2Tag.Create;
  re := 0;
  swv(makelong(32500, 32500));
  vb := 50;
  bx := false;
  cx := false;
  mf.l_aa.Caption := formatdatetime('dddd, dd MMMM yyyy', now);
  td := gtd;
end;

procedure Tmf.mpn(Sender: TObject);
begin
  if S2.Checked then
    Exit
  else
    with mp do
    begin
      case Mode of
        mpStopped:
          begin
            mf.t.Enabled := false;
            mf.t0.Enabled := false;
            l_t.Caption := '00 : 00';
            l_aa.Caption := xa;
            l_st.Caption := xt;
            application.Title := caption;
            gn := 0;
          end;
        mpPlaying:
          begin
            mf.t.Enabled := true;
            mf.t0.Enabled := true;
            aa := xa;
            st := xt;
            gn := 1;
          end;
        mpPaused:
          begin
            mf.t.Enabled := false;
            mf.t0.Enabled := false;
            gn := 2;
          end;
      end;
      Notify := True;
      if (mp.Position >= mp.Length) then
      begin
        case re of
          0:
            begin
              if su then
              begin
                pb := xs - 1;
                Randomize;
                xs := Random(lb_pl.Items.Count - 1);
              end;
              if pb = (lb_pl.Items.Count - 1) then
                exit
              else
                sb_n.Click;
            end;
          1:
            begin
              if su then
              begin
                pb := xs - 1;
                Randomize;
                xs := Random(lb_pl.Items.Count - 1);
              end;
              sb_n.Click;
            end;
          2:
            begin
              mp.Stop;
              mp.Position := 0;
              mp.Play
            end;
        end;
      end;

    end;
end;

procedure Tmf.tTimer(Sender: TObject);
var
  i, j: integer;
  tif: tinifile;
begin
  if not bx then
  begin
    alphablendvalue := alphablendvalue + 10;
    if (alphablendvalue >= 250) then
    begin
      bx := true;
      mf.t.enabled := false;
    end
  end
  else
  begin
    if not tr then
      l_t.Caption := Format('%.2d : %.2d', [(mp.Position div 1000) div 60,
        (mp.Position div 1000) mod 60])
    else
      l_t.Caption := Format('%.2d : %.2d', [((mp.Length - mp.Position) div 1000)
        div 60, ((mp.Length - mp.Position) div 1000) mod 60]);
  end;
  if fileexists(ly) then
  begin
    tif := tinifile.Create(ly);
    j := tif.ReadInteger('init', 'line', 1);
    for i := 0 to j - 1 do
    begin
      if (strtoint(tif.Readstring('time', inttostr(i), '0')) div 100) =
        (mp.Position div 100) then
      begin
        gv := i;
        if not sll.Checked then
        begin
          if i mod 2 = 0 then
            l_l0.Caption := tif.ReadString('text', inttostr(i), '-')
          else
            l_l1.Caption := tif.ReadString('text', inttostr(i), '-');
        end
        else
        begin
          l_l1.Caption := tif.ReadString('text', inttostr(i), '-')
        end;
      end;
    end;
  end;
end;

procedure Tmf.P2Click(Sender: TObject);
var
  s: string;
  flb: tfilelistbox;
  i: integer;
begin
  if not selectdirectory('Select a directory contains MP3 files', '', s) then
    exit
  else
  begin
    lb_pl_h.Clear;
    lb_pl.Clear;
    flb := tfilelistbox.Create(nil);
    flb.Parent := mf;
    flb.Hide;
    flb.Directory := s;
    flb.Refresh;
  end;
  for i := 0 to flb.Items.Count - 1 do
  begin
    if ansilowercase(extractfileext(flb.Items.Strings[i])) = '.mp3' then
    begin
      lb_pl_h.Items.Add(flb.Items.Strings[i]);
      lb_pl.Items.Add(extractfilename(changefileext(flb.Items.Strings[i], '')));
    end;
  end;
  flb.Free;
end;

procedure Tmf.sb_reClick(Sender: TObject);
begin
  O3.Visible := true;
  plpm0.Visible := false;
  A4.Visible := true;
  plpm1.Visible := false;
  c2.Visible := true;
  pm.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure Tmf.sb_plClick(Sender: TObject);
begin
  if (gn = 0) or (gn = 2) then
  begin
    mp.pause;
    gn := 1;
  end
  else
  begin
    mp.Stop;
    mp.Close;
    mp.Open;
    mp.Position := 0;
    mp.Play;
  end;
end;

procedure Tmf.sb_psClick(Sender: TObject);
begin
  mp.Pause;
end;

procedure Tmf.sb_sClick(Sender: TObject);
begin
  mp.Stop;
  mp.Position := 0;
  gn := 0;
end;

procedure Tmf.sb_nClick(Sender: TObject);
begin
  if pb = (lb_pl.Items.Count - 1) then
    lb_pl.ItemIndex := 0
  else
    lb_pl.ItemIndex := pb + 1;
  if FileExists(gtd+'\'+tl) then DeleteFile(gtd+'\'+tl);
  ttp;
  lb_pl.SetFocus;

end;

procedure Tmf.sb_pvClick(Sender: TObject);
begin
  if pb <= 0 then
    lb_pl.ItemIndex := (lb_pl.Items.Count - 1)
  else
    lb_pl.ItemIndex := pb - 1;
  if FileExists(gtd+'\'+tl) then DeleteFile(gtd+'\'+tl);
  ttp;
  lb_pl.SetFocus;

end;

procedure Tmf.FormDestroy(Sender: TObject);
begin
  id3v2tag.Free;
end;

procedure Tmf.A4Click(Sender: TObject);
begin
  re := 1;
  o1.Checked := false;
  a1.Checked := true;
  c1.Checked := false;
  o3.Checked := false;
  a4.Checked := true;
  c2.Checked := false;
end;

procedure Tmf.C2Click(Sender: TObject);
begin
  re := 2;
  o1.Checked := false;
  a1.Checked := false;
  c1.Checked := true;
  o3.Checked := false;
  a4.Checked := false;
  c2.Checked := true;
end;

procedure Tmf.O1Click(Sender: TObject);
begin
  re := 0;
  o1.Checked := true;
  a1.Checked := false;
  c1.Checked := false;
  o3.Checked := true;
  a4.Checked := false;
  c2.Checked := false;
end;

procedure Tmf.A1Click(Sender: TObject);
begin
  re := 1;
  o1.Checked := false;
  a1.Checked := true;
  c1.Checked := false;
  o3.Checked := false;
  a4.Checked := true;
  c2.Checked := false;
end;

procedure Tmf.C1Click(Sender: TObject);
begin
  re := 2;
  o1.Checked := false;
  a1.Checked := false;
  c1.Checked := true;
  o3.Checked := false;
  a4.Checked := false;
  c2.Checked := true;
end;

procedure Tmf.tb_bChange(Sender: TObject);
begin
  { 0 = (R=0) | 1 = (R=0.5) | 2 = (L=R) | 3 = (L=0.5) | 4 = (L=0) }
  case tb_b.Position of
    0: swv(makelong((650 * vb) div 1, 0));
    1: swv(makelong((650 * vb) div 1, (650 * vb) div 2));
    2: swv(makelong((650 * vb) div 1, (650 * vb) div 1));
    3: swv(makelong((650 * vb) div 2, (650 * vb) div 1));
    4: swv(makelong(0, (650 * vb) div 1));
  end;
end;

procedure Tmf.tb_vChange(Sender: TObject);
begin
  vb := tb_v.Position;
  swv(MakeLong(650 * vb, 650 * vb));
end;

procedure Tmf.l_tClick(Sender: TObject);

begin
  t1.Click;
end;

procedure Tmf.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  case gn of
    0: canclose := true;
    1:
      begin
        canclose := false;
        if messagebox(handle,
          'The playback is still running, do you really want to close Aulemp ?',
          'Closing', 4) = mryes then
          canclose := true;
      end;
    2:
      begin
        canclose := false;
        if messagebox(handle,
          'The playback is paused, do you really want to close Aulemp ?',
          'Closing', 4) = mrno then
          canclose := false
        else
          canclose := true;
      end;
  end;
end;

procedure Tmf.O3Click(Sender: TObject);
begin
  re := 0;
  o1.Checked := true;
  a1.Checked := false;
  c1.Checked := false;
  o3.Checked := true;
  a4.Checked := false;
  c2.Checked := false;
end;

procedure Tmf.sb_raClick(Sender: TObject);
begin
  su := sb_ra.Down;
  if su then
  begin
    Randomize;
    xs := Random(lb_pl.Items.Count - 1);
  end;
end;

procedure Tmf.T1Click(Sender: TObject);
begin
  tr := not tr;
end;

procedure Tmf.P4Click(Sender: TObject);
begin
  sb_pv.Click;
end;

procedure Tmf.P5Click(Sender: TObject);
begin
  sb_pl.Click;
end;

procedure Tmf.S1Click(Sender: TObject);
begin
  sb_ps.Click;
end;

procedure Tmf.N2Click(Sender: TObject);
begin
  sb_s.Click;
end;

procedure Tmf.N3Click(Sender: TObject);
begin
  sb_n.Click;
end;

procedure Tmf.V1Click(Sender: TObject);
begin
  tb_v.Position := tb_v.Position + 1;
end;

procedure Tmf.V2Click(Sender: TObject);
begin
  tb_v.Position := tb_v.Position - 1;
end;

procedure Tmf.M2Click(Sender: TObject);
begin
  tb_b.position := tb_b.position - 1;
end;

procedure Tmf.R3Click(Sender: TObject);
begin
  tb_b.position := tb_b.position + 1;
end;

procedure Tmf.L2Click(Sender: TObject);
var
  i: integer;
begin
  od.Title := 'Add item to playlist';
  od.Filter := 'MPEG Layer 3 File|*.mp3';
  if not od.execute then
    exit
  else
    for i := 0 to od.Files.Count - 1 do
    begin
      lb_pl.Items.Add(extractfilename(changefileext(od.Files.Strings[i], '')));
      lb_pl_h.Items.Add(od.Files.Strings[i]);
    end;
end;

procedure Tmf.R2Click(Sender: TObject);
begin
  if lb_pl.Items.Count <= 0 then
    exit;
  if lb_pl.ItemIndex = pb then
  begin
    if messagebox(handle,
      'The item you want to delete is currently playing, continue deleting?',
      'Delete playing item', 4) = mrno then
      exit
    else
    begin
      mp.Stop;
      mp.Position := 0;
      l_l0.Caption := '';
      l_l1.Caption := '';
      pb := -1;
      lb_pl_h.items.delete(lb_pl.itemindex);
      lb_pl.items.delete(lb_pl.itemindex);
      lb_pl.ItemIndex := -1;
      mf.l_aa.Caption := formatdatetime('dddd, dd MMMM yyyy', now);
      mf.l_st.Caption := 'AULEMP 2.0';
    end;
  end
  else
  begin
    if messagebox(handle, 'Are you sure to delete selected item from list ?',
      'Removing Item from Playlist', 4) = mrno then Exit else
    begin
      lb_pl_h.items.delete(lb_pl.itemindex);
    lb_pl.items.delete(lb_pl.itemindex);
    pb := -1;
    lb_pl.ItemIndex := -1;
    end;
  end;
end;

procedure Tmf.o4Click(Sender: TObject);
begin
  if lb_pl.ItemIndex <= 0 then
    exit
  else
  begin
    if lb_pl.ItemIndex = pb then
      pb := pb - 1;
    lb_pl_h.Items.Move(lb_pl.ItemIndex, lb_pl.ItemIndex - 1);
    lb_pl.Items.Move(lb_pl.ItemIndex, lb_pl.ItemIndex - 1);
    lb_pl.SetFocus;
  end;
end;

procedure Tmf.M1Click(Sender: TObject);
begin
  if lb_pl.ItemIndex>=(lb_pl.Items.Count - 1) then
    exit
  else
  begin
    if lb_pl.ItemIndex = pb then
      pb := pb + 1;
    lb_pl_h.Items.Move(lb_pl.ItemIndex, lb_pl.ItemIndex + 1);
    lb_pl.Items.Move(lb_pl.ItemIndex, lb_pl.ItemIndex + 1);
    lb_pl.SetFocus;
  end;
end;

procedure Tmf.S5Click(Sender: TObject);
begin
  sd.Title := 'Save Playlist';
  sd.Filter := 'Standard Playlist File (M3U)|*.m3u';
  if not sd.Execute then
    exit
  else
  begin
    s2m3u(sd.FileName);
  end;
end;

procedure Tmf.C3Click(Sender: TObject);
begin
  tb_b.Position := 2;
end;

procedure Tmf.A3Click(Sender: TObject);
begin
  messagebox(handle,
    'AULEMP 2.0'#13 +
    'Another Unattended Lyric Enabled Media Player'#13#13 +
    'An open source Simple Media Player project, special for Newbie who want to build their own Media Player. '#13#13 +
    'Since this project is for Delphi Newbie Programmer, we''re not using a third-party component.'#13#13 +
    'This project uses the units from Mp3FileUtils, which also be able to use in any Media Player project to get the id3Tag infos from media file.'#13#13#13 +
    'Please contact me if you interested with this simple project :'#13 +
    'e-mail : admin.dinnydcc@asia.com or Im_smart.diecorp@hotmail.com'
    , 'About Aulemp 2', 0);
end;

procedure Tmf.L1Click(Sender: TObject);
begin
  od.Title := 'Load Lyric';
  od.Filter := 'Standard Lyric File|*.lrc';
  if not od.Execute then
    exit
  else
  begin
    l_l0.Caption := '';
    l_l1.Caption := '';
    llo(od.FileName);
    if gn = 1 then
    begin
      mp.Pause;
      mp.Pause;
    end;
  end;
end;

procedure Tmf.sb_plaClick(Sender: TObject);
begin
  l2.Click;
end;

procedure Tmf.sb_pldClick(Sender: TObject);
begin
  r2.Click;
end;

procedure Tmf.SpeedButton1Click(Sender: TObject);
begin
  o4.Click;
end;

procedure Tmf.SpeedButton2Click(Sender: TObject);
begin
  m1.Click;
end;

procedure Tmf.sb_plsClick(Sender: TObject);
begin
  s5.Click;
end;

procedure Tmf.t0Timer(Sender: TObject);
var
  t, u, v, w, x, y: string;
begin
  if length(aa) > 43 then
  begin
    if ix >= length(aa) then
      ix := 0
    else
      inc(ix);
    t := copy(aa, ix, length(aa));
    u := copy(aa, 0, ix);
    l_aa.Caption := t + ' | ' + u;
  end;
  if length(st) > 18 then
  begin
    if jx >= length(st) then
      jx := 0
    else
      inc(jx);
    v := copy(st, jx, length(st));
    w := copy(st, 0, jx);
    l_st.Caption := v + ' | ' + w;
  end;
  if Length(at) > 4 then
  begin
    if kx >= Length(at) then
      kx := 0
    else
      inc(kx);
    x := Copy(at, kx, Length(at));
    y := Copy(at, 0, kx);
    Application.Title := x + ' *** ' + y;
  end;

  //the following codes are backup action to prevent the player from "seems like stopped" player, this happen when playback 'time' is NOT synchronized with playback 'length'
  //kode berikut adalah aksi bantuan untuk mencegah pemutar dari "terlihat seperti berhenti", ini terjadi ketika butir yang diputar 'waktu' nya tidak sinkron dengan 'panjang' pemutarannya
  if ((gn = 0) or (mp.Mode = mpstopped)) and (S2.Checked or (mp.FileName = ''))
    then
    exit
  else
  begin
    if (mp.Position >= mp.Length) or ((mp.Position >= 1000) and (l_t.Caption =
      '00 : 00')) then
    begin
      case re of
        0:
          begin
            if su then
            begin
              pb := xs - 1;
              Randomize;
              xs := Random(lb_pl.Items.Count - 1);
            end;
            if pb = (lb_pl.Items.Count - 1) then
              exit
            else
              sb_n.Click;
          end;
        1:
          begin
            if su then
            begin
              pb := xs - 1;
              Randomize;
              xs := Random(lb_pl.Items.Count - 1);
            end;
            sb_n.Click;
          end;
        2:
          begin
            mp.Stop;
            mp.Position := 0;
            mp.Play
          end;
      end;
    end;
  end;
end;

procedure Tmf.l_tContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  s: string;
begin
  if not inputquery(inttostr(mp.Length), '!', s) then
    exit
  else
    mp.Position := strtoint(s);
  mp.Play;
end;

procedure Tmf.A2Click(Sender: TObject);
begin
  messagebox(handle,
    'A help file may be different each of this project edition later, so i don''t add the help file here',
    'Aulemp Help', 0);
end;

procedure Tmf.S3Click(Sender: TObject);
begin
  shellexecute(handle, 'open',
    'mailto:Im_smart.diecorp@hotmail.com&subject=AULEMP 2 Feedback&body=type your feedback here...',
    nil, nil, 3);
end;

procedure Tmf.E1Click(Sender: TObject);
begin
  mf.Close;
end;

procedure Tmf.S2Click(Sender: TObject);
begin
  S2.Checked := not S2.Checked;
end;

procedure Tmf.sllClick(Sender: TObject);
begin
  sll.Checked := not sll.Checked;
  l_l0.Visible := not sll.Checked;
  if sll.Checked then
  begin
    l_l1.Layout := tlCenter;
    if (gv mod 2=0) and FileExists(gtd+'\'+tl) then l_l1.Caption:=l_l0.Caption else
    begin
      mf.l_l0.Caption := 'AULEMP 2.0';
      mf.l_l1.Caption := 'Another Unattended Lyric Enabled Media Player';
    end;
  end
  else
  begin
    l_l0.Caption:='';
    l_l1.Layout := tlTop;
    if (gv mod 2=0) and FileExists(gtd+'\'+tl) then l_l1.Caption:=l_l1.Caption else
    begin
      mf.l_l0.Caption := 'AULEMP 2.0';
      mf.l_l1.Caption := 'Another Unattended Lyric Enabled Media Player';
    end;
  end;
end;

procedure Tmf.lb_plContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  O3.Visible := false;
  plpm0.Visible := True;
  A4.Visible := false;
  plpm1.Visible := true;
  c2.Visible := false;
  pm.Popup(Mouse.CursorPos.X, mouse.CursorPos.Y);
end;

function cid3(f: string): string;
var
  s: TFilestream;
begin
  s := TFileStream.Create(f, fmOpenRead or fmShareDenyWrite);
  Id3v2Tag.ReadFromStream(s);
  s.free;
  result :=
    'File name'#9' ==> ' + extractfilename(f) + #13#13 +
    'Title'#9' ==> ' + Id3v2Tag.Title + #13 +
    'Artist'#9' ==> ' + id3v2tag.Artist + #13 +
    'Album'#9' ==> ' + id3v2tag.Album + #13 +
    'Genre'#9' ==> ' + id3v2tag.Genre + #13 +
    'Track'#9' ==> ' + id3v2tag.Track + #13 +
    'Year'#9' ==> ' + id3v2tag.Year + #13 +
    'Comment'#9' ==> ' + id3v2tag.Comment + #13 +
    'Composer'#9' ==> ' + id3v2tag.Composer + #13 +
    'Copyright'#9' ==> ' + id3v2tag.Copyright + #13 +
    'Encodist'#9' ==> ' + id3v2tag.EncodedBy + #13 +
    'Distributor ==> ' + id3v2tag.Publisher;
end;

procedure Tmf.plpm0Click(Sender: TObject);
var
  x: string;
begin
  if lb_pl_h.Items.Strings[lb_pl.ItemIndex][1] = '#' then
    x := Copy(lb_pl_h.Items.Strings[lb_pl.ItemIndex], 1,
      Length(lb_pl_h.Items.Strings[lb_pl.ItemIndex]))
  else
    x := lb_pl_h.Items.Strings[lb_pl.ItemIndex];
  MessageBox(handle, PChar(cid3(x)), 'Playback Detail', 0);
end;

procedure Tmf.plpm1Click(Sender: TObject);
begin
 R2.Click;
end;

procedure Tmf.plpm2Click(Sender: TObject);
begin
  if Copy(lb_pl_h.Items.Strings[lb_pl.ItemIndex], 0, 1) = '#' then
  begin
    lb_pl_h.Items.BeginUpdate;
    lb_pl_h.Items.Strings[lb_pl.ItemIndex] :=
      Copy(lb_pl_h.Items.Strings[lb_pl.ItemIndex], 2,
      Length(lb_pl_h.Items.Strings[lb_pl.ItemIndex]) - 1);
    lb_pl_h.Items.EndUpdate;
  end
  else
  begin
    lb_pl_h.Items.BeginUpdate;
    lb_pl_h.Items.Strings[lb_pl.ItemIndex] := '#' +
      lb_pl_h.Items.Strings[lb_pl.ItemIndex];
    lb_pl_h.Items.EndUpdate;
  end;
end;

end.

