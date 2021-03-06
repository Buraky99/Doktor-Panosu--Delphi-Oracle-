object StringServerForm: TStringServerForm
  Left = 49
  Top = 0
  Caption = 'StringServerForm'
  ClientHeight = 749
  ClientWidth = 1370
  Color = 14475740
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = -15
    Top = 305
    Width = 1488
    Height = 428
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = 11518456
    DataSource = OraDataSource1
    DrawingStyle = gdsGradient
    FixedColor = clRed
    GradientEndColor = 1987308
    GradientStartColor = 11518456
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -36
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'SIRA_NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'BOLUM'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'DR_KODU'
        Visible = True
      end>
  end
  object RichEdit1: TRichEdit
    AlignWithMargins = True
    Left = -6
    Top = 88
    Width = 240
    Height = 187
    Alignment = taCenter
    BiDiMode = bdRightToLeftNoAlign
    Color = 15592941
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object RichEdit2: TRichEdit
    Left = 232
    Top = 88
    Width = 545
    Height = 187
    Alignment = taCenter
    BiDiMode = bdRightToLeftNoAlign
    Color = 15592941
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object RichEdit3: TRichEdit
    Left = 760
    Top = 88
    Width = 617
    Height = 187
    Alignment = taCenter
    BiDiMode = bdRightToLeftNoAlign
    Color = 15592941
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    Zoom = 100
  end
  object Edit1: TEdit
    Left = -6
    Top = 41
    Width = 240
    Height = 47
    Alignment = taCenter
    Color = 1987308
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'SIRA'
  end
  object Edit2: TEdit
    Left = 232
    Top = 41
    Width = 529
    Height = 47
    Alignment = taCenter
    Color = 1987308
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'HASTANIN ADI'
  end
  object Edit3: TEdit
    Left = 760
    Top = 41
    Width = 609
    Height = 47
    Alignment = taCenter
    Color = 1987308
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'HASTANIN SOYADI'
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 0
    OnExecute = IdTCPServer1Execute
    Left = 593
    Top = 718
  end
  object OraSession1: TOraSession
    Options.Direct = True
    Username = 'HASTANE'
    Server = 'DESKTOP-047A100:1521/orcl'
    Connected = True
    Left = 561
    Top = 718
    EncryptedPassword = '97FF9EFF8CFF8BFF9EFF91FF9AFF'
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 407
    Top = 700
  end
  object OraQuery7: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO HASTANE.PANO'
      '  (SIRA_NO, ADI, SOYADI, BOLUM, DR_NO)'
      'VALUES'
      '  (:SIRA_NO, :ADI, :SOYADI, :BOLUM, :DR_NO)')
    SQLDelete.Strings = (
      'DELETE FROM HASTANE.PANO'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO')
    SQLUpdate.Strings = (
      'UPDATE HASTANE.PANO'
      'SET'
      
        '  SIRA_NO = :SIRA_NO, ADI = :ADI, SOYADI = :SOYADI, BOLUM = :BOL' +
        'UM, DR_NO = :DR_NO'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO')
    SQLLock.Strings = (
      'SELECT SIRA_NO, ADI, SOYADI, BOLUM, DR_NO FROM HASTANE.PANO'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT SIRA_NO, ADI, SOYADI, BOLUM, DR_NO FROM HASTANE.PANO'
      'WHERE'
      '  SIRA_NO = :SIRA_NO')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM HASTANE.PANO'
      ''
      ')')
    Session = OraSession1
    SQL.Strings = (
      ''
      '    SELECT SIRA_NO, ADI, SOYADI, BOLUM, DR_NO'
      ''
      '    FROM HASTANE.PANO'
      ''
      '    WHERE GELDIMI='#39'T'#39
      ''
      '    AND GIRDI='#39'F'#39
      ''
      '    ORDER BY SIRA_NO ')
    Active = True
    Left = 441
    Top = 704
    object OraQuery7SIRA_NO: TFloatField
      DisplayWidth = 12
      FieldName = 'SIRA_NO'
      Required = True
    end
    object OraQuery7ADI: TStringField
      DisplayWidth = 20
      FieldName = 'ADI'
      Size = 80
    end
    object B: TStringField
      DisplayWidth = 21
      FieldName = 'SOYADI'
      Size = 80
    end
    object OraQuery7BOLUM: TFloatField
      DisplayWidth = 11
      FieldName = 'BOLUM'
    end
    object OraQuery7DR_NO: TFloatField
      DisplayWidth = 12
      FieldName = 'DR_NO'
    end
  end
  object OraQuery8: TOraQuery
    Session = OraSession1
    Left = 473
    Top = 704
  end
  object OraQuery1: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO HASTANE.HASTARND'
      '  (SIRA_NO, ADI, SOYADI, DR_KODU, BOLUM)'
      'VALUES'
      '  (:SIRA_NO, :ADI, :SOYADI, :DR_KODU, :BOLUM)')
    SQLDelete.Strings = (
      'DELETE FROM HASTANE.HASTARND'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO')
    SQLUpdate.Strings = (
      'UPDATE HASTANE.HASTARND'
      'SET'
      
        '  SIRA_NO = :SIRA_NO, ADI = :ADI, SOYADI = :SOYADI, DR_KODU = :D' +
        'R_KODU, BOLUM = :BOLUM'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO')
    SQLLock.Strings = (
      
        'SELECT SIRA_NO, ADI, SOYADI, DR_KODU, BOLUM FROM HASTANE.HASTARN' +
        'D'
      'WHERE'
      '  SIRA_NO = :Old_SIRA_NO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT SIRA_NO, ADI, SOYADI, DR_KODU, BOLUM FROM HASTANE.HASTARN' +
        'D'
      'WHERE'
      '  SIRA_NO = :SIRA_NO')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM HASTANE.HASTARND'
      ''
      ')')
    Session = OraSession1
    SQL.Strings = (
      ''
      '    SELECT SIRA_NO, ADI, SOYADI, BOLUM, DR_KODU'
      ''
      '    FROM HASTANE.HASTARND'
      ''
      '    WHERE GELDIMI='#39'T'#39
      ''
      '    AND CAGRILDIMI='#39'F'#39
      ''
      '    ORDER BY SIRA_NO ')
    Active = True
    Left = 296
    Top = 704
    object OraQuery1SIRA_NO: TFloatField
      FieldName = 'SIRA_NO'
      Required = True
    end
    object OraQuery1ADI: TStringField
      FieldName = 'ADI'
      Size = 21
    end
    object OraQuery1SOYADI: TStringField
      FieldName = 'SOYADI'
      Size = 21
    end
    object OraQuery1BOLUM: TFloatField
      FieldName = 'BOLUM'
    end
    object OraQuery1DR_KODU: TFloatField
      FieldName = 'DR_KODU'
    end
  end
end
