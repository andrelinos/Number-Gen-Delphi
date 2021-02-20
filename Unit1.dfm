object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerador de n'#250'meros sequ'#234'nciais - by Andrelino Silva'
  ClientHeight = 817
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Gerador de sequ'#234'ncia de n'#250'meros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 465
    Height = 223
    Margins.Top = 10
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Celulares'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 457
        Height = 189
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object btGenerate: TSpeedButton
          Left = 16
          Top = 104
          Width = 433
          Height = 65
          Cursor = crHandPoint
          Caption = 'Gerar sequ'#234'ncia'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btGenerateClick
        end
        object Label1: TLabel
          Left = 237
          Top = 11
          Width = 91
          Height = 19
          Caption = 'D'#237'gito o final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 11
          Width = 101
          Height = 19
          Caption = 'D'#237'gito o inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edFinalNumber: TEdit
          Left = 236
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '32999990099'
        end
        object edInitialNumber: TEdit
          Left = 16
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '32999990000'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Telefone fixo'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 457
        Height = 189
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = 16
          Top = 104
          Width = 433
          Height = 65
          Cursor = crHandPoint
          Caption = 'Gerar sequ'#234'ncia'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label5: TLabel
          Left = 237
          Top = 11
          Width = 91
          Height = 19
          Caption = 'D'#237'gito o final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 11
          Width = 101
          Height = 19
          Caption = 'D'#237'gito o inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edNumFinal: TEdit
          Left = 236
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '3237410099'
        end
        object edNumInicial: TEdit
          Left = 16
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '3237410000'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'N'#250'meros'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 457
        Height = 189
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 16
          Top = 104
          Width = 433
          Height = 65
          Cursor = crHandPoint
          Caption = 'Gerar sequ'#234'ncia'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label3: TLabel
          Left = 237
          Top = 11
          Width = 91
          Height = 19
          Caption = 'D'#237'gito o final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 11
          Width = 101
          Height = 19
          Caption = 'D'#237'gito o inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edValorFinal: TEdit
          Left = 236
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '99'
        end
        object edValorInicial: TEdit
          Left = 16
          Top = 36
          Width = 206
          Height = 47
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 304
    Width = 465
    Height = 513
    Align = alBottom
    Caption = 'Panel4'
    TabOrder = 2
    object btSaveTo: TSpeedButton
      Left = 246
      Top = 407
      Width = 200
      Height = 65
      Cursor = crHandPoint
      Caption = 'Salvar como...'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btSaveToClick
    end
    object SpeedButton3: TSpeedButton
      Left = 20
      Top = 407
      Width = 200
      Height = 65
      AllowAllUp = True
      Caption = 'Parar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object memoList: TMemo
      AlignWithMargins = True
      Left = 20
      Top = 9
      Width = 433
      Height = 392
      BevelInner = bvSpace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantTabs = True
    end
  end
  object SaveTextToFile: TSaveTextFileDialog
    Left = 344
    Top = 337
  end
end
