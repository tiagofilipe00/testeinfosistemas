object frmCliente: TfrmCliente
  Left = 245
  Top = 84
  Width = 753
  Height = 672
  Caption = 'Cadastro Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 5
    Width = 28
    Height = 11
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 9
    Top = 45
    Width = 50
    Height = 11
    Caption = 'Identidade'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 9
    Top = 85
    Width = 20
    Height = 11
    Caption = 'CPF'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 9
    Top = 125
    Width = 42
    Height = 11
    Caption = 'Telefone'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 9
    Top = 165
    Width = 24
    Height = 11
    Caption = 'email'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 9
    Top = 205
    Width = 18
    Height = 11
    Caption = 'cep'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 9
    Top = 245
    Width = 50
    Height = 11
    Caption = 'logradouro'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 9
    Top = 285
    Width = 37
    Height = 11
    Caption = 'Numero'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 9
    Top = 325
    Width = 64
    Height = 11
    Caption = 'Complemento'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 9
    Top = 365
    Width = 26
    Height = 11
    Caption = 'bairro'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 9
    Top = 405
    Width = 32
    Height = 11
    Caption = 'cidade'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 9
    Top = 445
    Width = 32
    Height = 11
    Caption = 'estado'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 9
    Top = 485
    Width = 19
    Height = 11
    Caption = 'pais'
    FocusControl = DBEdit13
  end
  object DBEdit1: TDBEdit
    Left = 9
    Top = 21
    Width = 654
    Height = 19
    DataField = 'Nome'
    DataSource = dsCliente
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 9
    Top = 61
    Width = 173
    Height = 19
    DataField = 'Identidade'
    DataSource = dsCliente
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 9
    Top = 101
    Width = 264
    Height = 19
    DataField = 'CPF'
    DataSource = dsCliente
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 9
    Top = 141
    Width = 199
    Height = 19
    DataField = 'Telefone'
    DataSource = dsCliente
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 9
    Top = 181
    Width = 394
    Height = 19
    DataField = 'email'
    DataSource = dsCliente
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 9
    Top = 221
    Width = 199
    Height = 19
    DataField = 'cep'
    DataSource = dsCliente
    TabOrder = 5
    OnExit = DBEdit6Exit
  end
  object DBEdit7: TDBEdit
    Left = 9
    Top = 261
    Width = 394
    Height = 19
    DataField = 'logradouro'
    DataSource = dsCliente
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 9
    Top = 301
    Width = 134
    Height = 19
    DataField = 'Numero'
    DataSource = dsCliente
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 9
    Top = 341
    Width = 394
    Height = 19
    DataField = 'Complemento'
    DataSource = dsCliente
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 9
    Top = 381
    Width = 394
    Height = 19
    DataField = 'bairro'
    DataSource = dsCliente
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 9
    Top = 421
    Width = 394
    Height = 19
    DataField = 'cidade'
    DataSource = dsCliente
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 9
    Top = 461
    Width = 30
    Height = 19
    DataField = 'estado'
    DataSource = dsCliente
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 9
    Top = 501
    Width = 264
    Height = 19
    DataField = 'pais'
    DataSource = dsCliente
    TabOrder = 12
  end
  object DBNavigator: TDBNavigator
    Left = 9
    Top = 541
    Width = 224
    Height = 23
    DataSource = dsCliente
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 13
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 152
    object cdsClienteNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 50
      Calculated = True
    end
    object cdsClienteIdentidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Identidade'
      Size = 13
      Calculated = True
    end
    object cdsClienteCPF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CPF'
      Calculated = True
    end
    object cdsClienteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object cdsClienteemail: TStringField
      FieldName = 'email'
      Size = 30
    end
    object cdsClientecep: TStringField
      FieldKind = fkCalculated
      FieldName = 'cep'
      Size = 15
      Calculated = True
    end
    object cdsClientelogradouro: TStringField
      FieldKind = fkCalculated
      FieldName = 'logradouro'
      Size = 30
      Calculated = True
    end
    object cdsClienteNumero: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Numero'
      Calculated = True
    end
    object cdsClienteComplemento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Complemento'
      Size = 30
      Calculated = True
    end
    object cdsClientebairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'bairro'
      Size = 30
      Calculated = True
    end
    object cdsClientecidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 30
      Calculated = True
    end
    object cdsClienteestado: TStringField
      FieldKind = fkCalculated
      FieldName = 'estado'
      Size = 2
      Calculated = True
    end
    object cdsClientepais: TStringField
      FieldKind = fkCalculated
      FieldName = 'pais'
      Calculated = True
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    OnUpdateData = dsClienteUpdateData
    Left = 616
    Top = 224
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 552
    Top = 336
  end
  object IdSMTP: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 504
    Top = 264
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 632
    Top = 536
  end
end
