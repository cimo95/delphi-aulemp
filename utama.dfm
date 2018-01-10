object mf: Tmf
  Left = 737
  Top = 79
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Aulemp 2.0'
  ClientHeight = 451
  ClientWidth = 338
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'SEGOE UI'
  Font.Style = []
  Menu = mm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 81
    Height = 73
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object l_t: TLabel
      Left = 1
      Top = 9
      Width = 79
      Height = 24
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = '00 : 00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = l_tClick
      OnContextPopup = l_tContextPopup
    end
    object sb_re: TSpeedButton
      Left = 3
      Top = 45
      Width = 35
      Height = 22
      Hint = 'Repeat'
      Caption = '-><-'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_reClick
    end
    object sb_ra: TSpeedButton
      Left = 40
      Top = 45
      Width = 35
      Height = 22
      Hint = 'Shuffle'
      AllowAllUp = True
      GroupIndex = 1
      Caption = '132'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_raClick
    end
  end
  object Panel2: TPanel
    Left = 96
    Top = 8
    Width = 233
    Height = 73
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object l_st: TLabel
      Left = 2
      Top = 2
      Width = 225
      Height = 34
      Hint = 'Playback Title'
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'AULEMP 2.0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Layout = tlCenter
    end
    object l_aa: TLabel
      Left = 2
      Top = 36
      Width = 225
      Height = 31
      Hint = 'Playback Artist - Playback Album'
      Align = alClient
      Alignment = taCenter
      Caption = 'Saturday, 10 June 1995'
      ParentShowHint = False
      ShowHint = True
      Layout = tlCenter
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 88
    Width = 321
    Height = 33
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 2
    object sb_pl: TSpeedButton
      Left = 5
      Top = 5
      Width = 23
      Height = 22
      Hint = 'Play'
      Caption = '|>'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_plClick
    end
    object sb_ps: TSpeedButton
      Left = 29
      Top = 5
      Width = 23
      Height = 22
      Hint = 'Pause'
      Caption = '||'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_psClick
    end
    object sb_s: TSpeedButton
      Left = 53
      Top = 5
      Width = 23
      Height = 22
      Hint = 'Stop'
      Caption = '[_]'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_sClick
    end
    object sb_pv: TSpeedButton
      Left = 77
      Top = 5
      Width = 23
      Height = 22
      Hint = 'Previous'
      Caption = '|<'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_pvClick
    end
    object sb_n: TSpeedButton
      Left = 101
      Top = 5
      Width = 23
      Height = 22
      Hint = 'Next'
      Caption = '>|'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_nClick
    end
    object Label1: TLabel
      Left = 128
      Top = 8
      Width = 79
      Height = 13
      Caption = 'L                      R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'SEGOE UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 213
      Top = 8
      Width = 102
      Height = 13
      Caption = '0                          100'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'SEGOE UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tb_b: TTrackBar
      Left = 134
      Top = 4
      Width = 65
      Height = 20
      Hint = 'Balance'
      Max = 4
      ParentShowHint = False
      Position = 2
      ShowHint = True
      TabOrder = 0
      TabStop = False
      ThumbLength = 15
      OnChange = tb_bChange
    end
    object tb_v: TTrackBar
      Left = 222
      Top = 4
      Width = 77
      Height = 20
      Hint = 'Volume'
      Max = 100
      ParentShowHint = False
      Frequency = 5
      Position = 50
      ShowHint = True
      TabOrder = 1
      TabStop = False
      ThumbLength = 15
      OnChange = tb_vChange
    end
  end
  object p_lv: TPanel
    Left = 8
    Top = 128
    Width = 321
    Height = 50
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 3
    object l_l1: TLabel
      Left = 2
      Top = 22
      Width = 313
      Height = 22
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Another Unattended Lyric Enabled Media Player'
    end
    object l_l0: TLabel
      Left = 2
      Top = 2
      Width = 313
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'AULEMP 2.0'
      Layout = tlBottom
    end
    object mp: TMediaPlayer
      Left = 248
      Top = 16
      Width = 29
      Height = 25
      VisibleButtons = []
      Visible = False
      TabOrder = 0
    end
  end
  object p_pl: TPanel
    Left = 8
    Top = 184
    Width = 321
    Height = 265
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 4
    object sb_pla: TSpeedButton
      Left = 8
      Top = 235
      Width = 23
      Height = 22
      Hint = 'Add media item to list'
      Caption = '+'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_plaClick
    end
    object sb_pld: TSpeedButton
      Left = 34
      Top = 235
      Width = 23
      Height = 22
      Hint = 'Delete selected media item from list'
      Caption = 'X'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_pldClick
    end
    object sb_pls: TSpeedButton
      Left = 60
      Top = 235
      Width = 23
      Height = 22
      Hint = 'Save current playlist'
      Caption = '[S]'
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_plsClick
    end
    object l_app: TLabel
      Left = 137
      Top = 238
      Width = 172
      Height = 13
      Caption = #169' 2016 Arachmadi Putra Pambudi'
      Enabled = False
    end
    object SpeedButton1: TSpeedButton
      Left = 85
      Top = 235
      Width = 23
      Height = 22
      Hint = 'Move selected item up'
      Caption = '/\'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 110
      Top = 235
      Width = 23
      Height = 22
      Hint = 'Move selected item down'
      Caption = '\/'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object lb_pl: TListBox
      Left = 7
      Top = 6
      Width = 305
      Height = 225
      ItemHeight = 13
      TabOrder = 0
      OnContextPopup = lb_plContextPopup
      OnDblClick = lb_plDblClick
    end
    object lb_pl_h: TListBox
      Left = 17
      Top = 169
      Width = 288
      Height = 50
      ItemHeight = 13
      TabOrder = 1
      Visible = False
    end
  end
  object mm: TMainMenu
    Left = 288
    Top = 16
    object F1: TMenuItem
      Caption = 'File'
      object P1: TMenuItem
        Caption = 'Play File / Playlist'
        ShortCut = 32847
        OnClick = P1Click
      end
      object P2: TMenuItem
        Caption = 'Play Folder'
        ShortCut = 41039
        OnClick = P2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object E1: TMenuItem
        Caption = 'Exit'
        OnClick = E1Click
      end
    end
    object P3: TMenuItem
      Caption = 'Play'
      object P4: TMenuItem
        Caption = 'Previous'
        ShortCut = 32858
        OnClick = P4Click
      end
      object P5: TMenuItem
        Caption = 'Play'
        ShortCut = 32856
        OnClick = P5Click
      end
      object S1: TMenuItem
        Caption = 'Pause'
        ShortCut = 32835
        OnClick = S1Click
      end
      object N2: TMenuItem
        Caption = 'Stop'
        ShortCut = 32854
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = 'Next'
        ShortCut = 32834
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object S2: TMenuItem
        Caption = 'Stop after Current'
        ShortCut = 32846
        OnClick = S2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object R1: TMenuItem
        Caption = 'Repeat'
        object O1: TMenuItem
          Caption = 'Off'
          Checked = True
          OnClick = O1Click
        end
        object A1: TMenuItem
          Caption = 'All'
          OnClick = A1Click
        end
        object C1: TMenuItem
          Caption = 'Current'
          OnClick = C1Click
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object V1: TMenuItem
        Caption = 'Volume Up'
        ShortCut = 32806
        OnClick = V1Click
      end
      object V2: TMenuItem
        Caption = 'Volume Down'
        ShortCut = 32808
        OnClick = V2Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object M2: TMenuItem
        Caption = 'Re-Balance Left'
        ShortCut = 32805
        OnClick = M2Click
      end
      object C3: TMenuItem
        Caption = 'Center Balance'
        OnClick = C3Click
      end
      object R3: TMenuItem
        Caption = 'Re-Balance Right'
        ShortCut = 32807
        OnClick = R3Click
      end
    end
    object O2: TMenuItem
      Caption = 'Options'
      object T1: TMenuItem
        Caption = 'Time Elapsed / Remain'
        ShortCut = 32852
        OnClick = T1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object L1: TMenuItem
        Caption = 'Load Lyric'
        ShortCut = 32844
        OnClick = L1Click
      end
      object sll: TMenuItem
        Caption = 'Single Line Lyric'
        ShortCut = 41036
        OnClick = sllClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object L2: TMenuItem
        Caption = 'Add item to playlist'
        ShortCut = 45
        OnClick = L2Click
      end
      object R2: TMenuItem
        Caption = 'Remove selected item from playlist'
        ShortCut = 46
        OnClick = R2Click
      end
      object o4: TMenuItem
        Caption = 'Move Up selected item'
        ShortCut = 33
        OnClick = o4Click
      end
      object M1: TMenuItem
        Caption = 'Move Down selected item'
        ShortCut = 34
        OnClick = M1Click
      end
      object S5: TMenuItem
        Caption = 'Save Playlist'
        ShortCut = 32851
        OnClick = S5Click
      end
    end
    object H1: TMenuItem
      Caption = 'Help'
      object A2: TMenuItem
        Caption = 'Aulemp Help'
        ShortCut = 112
        OnClick = A2Click
      end
      object S3: TMenuItem
        Caption = 'Send Feedback'
        OnClick = S3Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object A3: TMenuItem
        Caption = 'About Aulemp'
        OnClick = A3Click
      end
    end
  end
  object od: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofAllowMultiSelect, ofDontAddToRecent, ofForceShowHidden]
    Left = 32
    Top = 144
  end
  object t: TTimer
    Interval = 1
    OnTimer = tTimer
    Left = 240
    Top = 328
  end
  object pm: TPopupMenu
    Left = 88
    Top = 176
    object O3: TMenuItem
      Caption = 'Off'
      Checked = True
      OnClick = O3Click
    end
    object A4: TMenuItem
      Caption = 'All'
      OnClick = A4Click
    end
    object C2: TMenuItem
      Caption = 'Current'
      OnClick = C2Click
    end
    object plpm0: TMenuItem
      Caption = 'Properties'
      OnClick = plpm0Click
    end
    object plpm1: TMenuItem
      Caption = 'Remove from list'
      OnClick = plpm1Click
    end
  end
  object sd: TSaveDialog
    Options = [ofOverwritePrompt, ofCreatePrompt, ofDontAddToRecent, ofForceShowHidden]
    Left = 72
    Top = 144
  end
  object t0: TTimer
    Interval = 100
    OnTimer = t0Timer
    Left = 168
    Top = 280
  end
end
