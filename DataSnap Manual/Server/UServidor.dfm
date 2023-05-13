object FrmServer: TFrmServer
  Left = 0
  Top = 0
  Caption = 'Servidor DataSnap'
  ClientHeight = 215
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblServidor: TLabel
    Left = 16
    Top = 8
    Width = 185
    Height = 25
    Caption = 'Servidor DataSnap :)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DSServer1: TDSServer
    Left = 16
    Top = 56
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 88
    Top = 56
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    Left = 160
    Top = 56
  end
end
