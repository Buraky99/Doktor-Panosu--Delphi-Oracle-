object ClientForm: TClientForm
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 273
  ClientWidth = 484
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 18
    Top = 215
    Width = 115
    Height = 34
    Caption = 'Panoya G'#246'nder'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBoxConnectDisconnet: TCheckBox
    Left = 308
    Top = 134
    Width = 169
    Height = 25
    Caption = 'Connect/Disconnect'
    Color = clTeal
    ParentColor = False
    TabOrder = 1
    OnClick = CheckBoxConnectDisconnetClick
  end
  object Memo1: TMemo
    Left = 308
    Top = 165
    Width = 168
    Height = 28
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 18
    Top = 0
    Width = 264
    Height = 193
    DataSource = OraDataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 311
    Top = 8
    Width = 57
    Height = 21
    DataField = 'SIRA_NO'
    DataSource = OraDataSource1
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 311
    Top = 35
    Width = 121
    Height = 21
    DataField = 'ADI'
    DataSource = OraDataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 311
    Top = 62
    Width = 121
    Height = 21
    DataField = 'SOYADI'
    DataSource = OraDataSource1
    TabOrder = 6
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 484
    Height = 1
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object IdTCPClient1: TIdTCPClient
    OnDisconnected = IdTCPClient1Disconnected
    OnConnected = IdTCPClient1Connected
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = -1
    Left = 408
    Top = 88
  end
  object OraSession1: TOraSession
    Options.Direct = True
    Username = 'HASTANE'
    Server = 'DESKTOP-047A100:1521:orcl'
    Connected = True
    Left = 376
    Top = 88
    EncryptedPassword = '97FF9EFF8CFF8BFF9EFF91FF9AFF'
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery2
    Left = 312
    Top = 88
  end
  object OraQuery2: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT SIRA_NO, ADI, SOYADI'
      ''
      ' FROM HASTANE.HASTARND'
      ''
      '  WHERE GELDIMI='#39'T'#39
      ''
      '   AND CAGRILDIMI='#39'F'#39
      ''
      '    ORDER BY SIRA_NO ')
    Active = True
    Left = 344
    Top = 88
  end
end
