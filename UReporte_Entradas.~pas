unit UReporte_Entradas;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, ExtCtrls, ComCtrls, OleCtrls,
  Chartfx3, VCFI, DB, DBTables, TeeProcs, TeEngine, Chart, DbChart, QRTEE,
  QuickRpt, Series, QRCtrls, TeeFunci, Grids, DBGrids, DBCtrls, jpeg;

type

  No_Cero      = class(Exception);
  No_Cero_1      = class(Exception);

  TReporte_Entradas = class(TForm)
    B1: TBitBtn;
    B3: TBitBtn;
    B4: TBitBtn;
    GroupBox1: TGroupBox;
    Table1: TTable;
    DataSource1: TDataSource;
    Query1: TQuery;
    DataSource2: TDataSource;
    Query2: TQuery;
    DSQ2: TDataSource;
    DBGrid1: TDBGrid;
    Reporte: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel25: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    procedure B1Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRNeedData(Sender: TObject; var MoreData: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delay:integer;
  Reporte_Entradas: TReporte_Entradas;
  Nro_Estudio:Integer;

implementation

{$R *.dfm}

procedure TReporte_Entradas.B1Click(Sender: TObject);
begin
  Query1.Close;
  Query1.DisableControls;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from Estudios where Estudio_ID = '+Query2.Fieldbyname('Estudio_ID').AsString+' Order By DEPTH');
  Query1.Open;
  Query1.EnableControls;
  Query1.First;
  B3.Enabled:=True;
end;

procedure TReporte_Entradas.B4Click(Sender: TObject);
begin
  Close;
end;

procedure TReporte_Entradas.Table1AfterPost(DataSet: TDataSet);
begin
  Table1.FlushBuffers;
end;

procedure TReporte_Entradas.BitBtn1Click(Sender: TObject);
Var
  Fecha:String;
begin
  QrLabel2.Caption:=IntToStr(Nro_Estudio);
  Fecha:=DateToStr(Query1.Fieldbyname('Fecha').AsDateTime);
  QrLabel4.Caption:=Fecha;
  QrLabel2.Caption:=Query1.Fieldbyname('Estudio_ID').AsString;
  Reporte.Preview;
end;

procedure TReporte_Entradas.QRNeedData(Sender: TObject; var MoreData: Boolean);
var
  onneed:integer;
begin

For Onneed:=1 to 10 do;
end;

procedure TReporte_Entradas.DBGrid1CellClick(Column: TColumn);
begin
  B1.Enabled:=True;
  B3.Enabled:=False;
end;

end.
