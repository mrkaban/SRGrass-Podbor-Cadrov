object MainForm: TMainForm
  Left = 250
  Top = 102
  Width = 858
  Height = 607
  Caption = #1069#1082#1089#1087#1077#1088#1090#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1086#1090#1076#1077#1083#1072' '#1082#1072#1076#1088#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 530
    Width = 842
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 842
    Height = 530
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1077#1090#1077#1076#1077#1085#1090#1099
      object GroupBox1: TGroupBox
        Left = 0
        Top = 293
        Width = 834
        Height = 209
        Align = alBottom
        Caption = #1044#1072#1085#1085#1099#1077' '#1087#1088#1077#1090#1077#1085#1076#1077#1085#1090#1086#1074
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 256
          Top = 160
          Width = 55
          Height = 25
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label1: TLabel
          Left = 256
          Top = 16
          Width = 48
          Height = 13
          Caption = #1047#1085#1072#1095#1077#1085#1080#1103
        end
        object SpeedButton7: TSpeedButton
          Left = 696
          Top = 32
          Width = 129
          Height = 38
          Caption = #1055#1086#1076#1086#1073#1088#1072#1090#1100' '#1074#1072#1082#1072#1085#1089#1080#1080
          Flat = True
          OnClick = SpeedButton4Click
        end
        object DBGrid3: TDBGrid
          Left = 8
          Top = 16
          Width = 241
          Height = 137
          DataSource = DataSource3
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          Columns = <
            item
              Expanded = False
              FieldName = #1050#1086#1076
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 169
              Visible = True
            end>
        end
        object DBGrid4: TDBGrid
          Left = 256
          Top = 32
          Width = 281
          Height = 121
          DataSource = DataSource4
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
              Visible = True
            end>
        end
        object DBNavigator3: TDBNavigator
          Left = 311
          Top = 160
          Width = 224
          Height = 25
          DataSource = DataSource4
          VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
          Flat = True
          TabOrder = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 293
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          834
          293)
        object DBNavigator2: TDBNavigator
          Left = 227
          Top = 264
          Width = 275
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Anchors = [akLeft, akBottom]
          Flat = True
          TabOrder = 0
        end
        object DBNavigator1: TDBNavigator
          Left = 8
          Top = 264
          Width = 220
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akBottom]
          Flat = True
          TabOrder = 1
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 834
          Height = 258
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DataSource1
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = #1050#1086#1076
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1060#1048#1054
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1040#1076#1088#1077#1089
              Width = 223
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1058#1077#1083#1077#1092#1086#1085
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1072#1082#1072#1085#1089#1080#1080
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 293
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          834
          293)
        object DBNavigator6: TDBNavigator
          Left = 227
          Top = 264
          Width = 275
          Height = 25
          DataSource = DataSource2
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Anchors = [akLeft, akBottom]
          Flat = True
          TabOrder = 2
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 834
          Height = 258
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DataSource2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          Columns = <
            item
              Expanded = False
              FieldName = #1050#1086#1076
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Visible = True
            end>
        end
        object DBNavigator5: TDBNavigator
          Left = 8
          Top = 264
          Width = 220
          Height = 25
          DataSource = DataSource2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akBottom]
          Flat = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 293
        Width = 834
        Height = 209
        Align = alBottom
        Caption = #1044#1072#1085#1085#1099#1077' '#1074#1072#1082#1072#1085#1089#1080#1080
        TabOrder = 1
        object Label2: TLabel
          Left = 464
          Top = 16
          Width = 48
          Height = 13
          Caption = #1047#1085#1072#1095#1077#1085#1080#1103
        end
        object Label3: TLabel
          Left = 256
          Top = 16
          Width = 51
          Height = 13
          Caption = #1044#1080#1072#1087#1072#1079#1086#1085
        end
        object SpeedButton2: TSpeedButton
          Left = 464
          Top = 160
          Width = 49
          Height = 25
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 256
          Top = 160
          Width = 41
          Height = 25
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton6: TSpeedButton
          Left = 704
          Top = 24
          Width = 121
          Height = 38
          Caption = #1055#1086#1076#1086#1073#1088#1072#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1083
          Flat = True
          OnClick = SpeedButton5Click
        end
        object DBNavigator4: TDBNavigator
          Left = 513
          Top = 160
          Width = 180
          Height = 25
          DataSource = DataSource7
          VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
          Flat = True
          TabOrder = 2
        end
        object DBGrid5: TDBGrid
          Left = 8
          Top = 16
          Width = 233
          Height = 137
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid5CellClick
          Columns = <
            item
              Expanded = False
              FieldName = #1050#1086#1076
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 164
              Visible = True
            end>
        end
        object DBGrid7: TDBGrid
          Left = 464
          Top = 32
          Width = 233
          Height = 121
          DataSource = DataSource7
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
              Width = 111
              Visible = True
            end>
        end
        object DBNavigator7: TDBNavigator
          Left = 297
          Top = 160
          Width = 160
          Height = 25
          DataSource = DataSource6
          VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
          Flat = True
          TabOrder = 3
        end
        object DBGrid6: TDBGrid
          Left = 256
          Top = 32
          Width = 201
          Height = 121
          DataSource = DataSource6
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid6CellClick
          Columns = <
            item
              Expanded = False
              FieldName = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 2
      DesignSize = (
        834
        502)
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 101
        Height = 13
        Caption = #1057#1087#1080#1089#1086#1082' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074
      end
      object DBGrid8: TDBGrid
        Left = 8
        Top = 24
        Width = 273
        Height = 305
        DataSource = DataSource8
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 169
            Visible = True
          end>
      end
      object DBNavigator8: TDBNavigator
        Left = 8
        Top = 328
        Width = 220
        Height = 25
        DataSource = DataSource8
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akBottom]
        Flat = True
        TabOrder = 1
      end
      object DBNavigator9: TDBNavigator
        Left = 8
        Top = 353
        Width = 275
        Height = 25
        DataSource = DataSource8
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Anchors = [akLeft, akBottom]
        Flat = True
        TabOrder = 2
        OnClick = DBNavigator9Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object SpeedButton4: TSpeedButton
        Left = 8
        Top = 0
        Width = 55
        Height = 38
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 96
        Top = 0
        Width = 55
        Height = 38
        OnClick = SpeedButton5Click
      end
      object DBGrid9: TDBGrid
        Left = 8
        Top = 40
        Width = 753
        Height = 233
        DataSource = DataSource9
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1099#1082#1083#1102#1095#1077#1085#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_1'
            Width = 92
            Visible = True
          end>
      end
      object DBGrid10: TDBGrid
        Left = 8
        Top = 280
        Width = 753
        Height = 193
        DataSource = DataSource10
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1048#1054
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1099#1082#1083#1102#1095#1077#1085#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 81
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1073#1086#1088#1072
      ImageIndex = 4
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 834
        Height = 502
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 8
    object N1: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source='#1041#1072#1079#1072' ' +
      #1076#1072#1085#1085#1099#1093' MS Access;Initial Catalog=data.mdb'
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1055#1088#1077#1090#1077#1085#1076#1077#1085#1090#1099)
    Left = 16
    Top = 40
    object ADOQuery1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery1DSDesigner2: TWideStringField
      FieldName = #1060#1048#1054
      Size = 50
    end
    object ADOQuery1DSDesigner3: TWideStringField
      FieldName = #1040#1076#1088#1077#1089
      Size = 50
    end
    object ADOQuery1DSDesigner4: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 40
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1042#1072#1082#1072#1085#1089#1080#1080)
    Left = 16
    Top = 72
    object ADOQuery2DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery2DSDesigner2: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 48
    Top = 72
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1055#1072#1088#1072#1084#1077#1090#1088#1099)
    Left = 16
    Top = 104
    object ADOQuery3DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery3DSDesigner2: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 100
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 48
    Top = 104
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080)
    Left = 16
    Top = 136
    object ADOQuery4DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery4DSDesigner2: TIntegerField
      FieldName = #1055#1088#1077#1090#1077#1085#1076#1077#1085#1090
    end
    object ADOQuery4DSDesigner3: TIntegerField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object ADOQuery4DSDesigner4: TWideStringField
      FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 48
    Top = 136
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1055#1072#1088#1072#1084#1077#1090#1088#1099)
    Left = 16
    Top = 176
    object AutoIncField1: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 100
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 48
    Top = 176
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from "'#1047#1085#1072#1095#1077#1085#1080#1103' '#1076#1083#1103' '#1074#1072#1082#1072#1085#1089#1080#1081'"')
    Left = 16
    Top = 248
    object ADOQuery7DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery7DSDesigner2: TIntegerField
      FieldName = #1058#1088#1077#1073#1086#1074#1072#1085#1080#1077
    end
    object ADOQuery7DSDesigner3: TWideStringField
      FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
      Size = 100
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery7
    Left = 48
    Top = 248
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 48
    Top = 208
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103)
    Left = 16
    Top = 208
    object ADOQuery6DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery6DSDesigner2: TIntegerField
      FieldName = #1042#1072#1082#1072#1085#1089#1080#1103
    end
    object ADOQuery6DSDesigner3: TIntegerField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object ADOQuery6DSDesigner4: TIntegerField
      FieldName = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object ADOQuery6DSDesigner5: TIntegerField
      FieldName = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
    end
  end
  object ADOQuery8: TADOQuery
    Connection = ADOConnection1
    AfterInsert = ADOQuery8AfterInsert
    AfterEdit = ADOQuery8AfterEdit
    AfterDelete = ADOQuery8AfterDelete
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1055#1072#1088#1072#1084#1077#1090#1088#1099
      '')
    Left = 16
    Top = 296
    object ADOQuery8DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQuery8DSDesigner2: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 100
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery8
    Left = 48
    Top = 296
  end
  object ADOQuery9: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1042#1072#1082#1072#1085#1089#1080#1080'.*, '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103'.['#1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077'], '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103 +
        '.['#1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077'],   ['#1047#1085#1072#1095#1077#1085#1080#1103' '#1076#1083#1103' '#1074#1072#1082#1072#1085#1089#1080#1081'].'#1047#1085#1072#1095#1077#1085#1080#1077', '#1055#1072 +
        #1088#1072#1084#1077#1090#1088#1099'.* '
      
        'FROM ('#1055#1072#1088#1072#1084#1077#1090#1088#1099' INNER JOIN ('#1042#1072#1082#1072#1085#1089#1080#1080' INNER JOIN '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103' ON '#1042#1072 +
        #1082#1072#1085#1089#1080#1080'.'#1050#1086#1076' = '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103'.'#1042#1072#1082#1072#1085#1089#1080#1103')   ON'
      
        #1055#1072#1088#1072#1084#1077#1090#1088#1099'.'#1050#1086#1076' = '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077') LEFT JOIN ['#1047#1085#1072#1095#1077#1085#1080#1103' '#1076#1083#1103 +
        ' '#1074#1072#1082#1072#1085#1089#1080#1081'] ON '#1058#1088#1077#1073#1086#1074#1072#1085#1080#1103'.'#1050#1086#1076' = ['#1047#1085#1072#1095#1077#1085#1080#1103' '#1076#1083#1103' '#1074#1072#1082#1072#1085#1089#1080#1081'].'#1058#1088#1077#1073#1086#1074#1072#1085#1080 +
        #1077' ')
    Left = 24
    Top = 352
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery9
    Left = 56
    Top = 352
  end
  object ADOQuery10: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1077#1090#1077#1085#1076#1077#1085#1090#1099'.*, '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080'.'#1047#1085#1072#1095#1077#1085#1080#1077', '#1055#1072#1088#1072#1084#1077#1090#1088#1099'.*  FROM' +
        ' '#1055#1088#1077#1090#1077#1085#1076#1077#1085#1090#1099
      
        'INNER JOIN ('#1055#1072#1088#1072#1084#1077#1090#1088#1099' INNER JOIN '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' ON '#1055#1072#1088#1072#1084#1077#1090#1088#1099'.'#1050#1086#1076 +
        ' = '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077')  '
      'ON '#1055#1088#1077#1090#1077#1085#1076#1077#1085#1090#1099'.'#1050#1086#1076' = '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080'.'#1055#1088#1077#1090#1077#1085#1076#1077#1085#1090)
    Left = 24
    Top = 400
  end
  object DataSource10: TDataSource
    DataSet = ADOQuery10
    Left = 56
    Top = 400
  end
end
