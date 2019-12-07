unit UEstudios_Previos;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, ExtCtrls, ComCtrls, OleCtrls,
  Chartfx3, VCFI, DB, DBTables, TeeProcs, TeEngine, Chart, DbChart, QRTEE,
  QuickRpt, Series, QRCtrls, TeeFunci, Grids, DBGrids, DBCtrls;

type

  TEstudios_Previos = class(TForm)
    B1: TBitBtn;
    B3: TBitBtn;
    B4: TBitBtn;
    GroupBox1: TGroupBox;
    Table1: TTable;
    QR: TQuickRep;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    DataSource1: TDataSource;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRChart2: TQRChart;
    QRDBChart2: TQRDBChart;
    QRChart3: TQRChart;
    QRDBChart3: TQRDBChart;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    AverageTeeFunction2: TAverageTeeFunction;
    QRChart4: TQRChart;
    QRDBChart4: TQRDBChart;
    QRChart5: TQRChart;
    QRDBChart5: TQRDBChart;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    AverageTeeFunction3: TAverageTeeFunction;
    AverageTeeFunction4: TAverageTeeFunction;
    LineSeries1: TAreaSeries;
    LineSeries8: TAreaSeries;
    Series1: TAreaSeries;
    Query1: TQuery;
    DataSource2: TDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    Query2: TQuery;
    DSQ2: TDataSource;
    DBGrid1: TDBGrid;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QT1: TQRDBText;
    QT2: TQRDBText;
    QT3: TQRDBText;
    QT4: TQRDBText;
    QT5: TQRDBText;
    QT6: TQRDBText;
    QT7: TQRDBText;
    QT8: TQRDBText;
    QT9: TQRDBText;
    QT10: TQRDBText;
    Series2: TAreaSeries;
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
  Estudios_Previos: TEstudios_Previos;
  Nro_Estudio:Integer;

implementation

{$R *.dfm}

procedure TEstudios_Previos.B1Click(Sender: TObject);
begin
  Query1.Close;
  Query1.DisableControls;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from Estudios where Estudio_ID = '+Query2.Fieldbyname('Estudio_ID').AsString);
  Query1.Open;
  Query1.EnableControls;
  Query1.First;
  B3.Enabled:=True;
end;

procedure TEstudios_Previos.B4Click(Sender: TObject);
begin
  Close;
end;

procedure TEstudios_Previos.Table1AfterPost(DataSet: TDataSet);
begin
  Table1.FlushBuffers;
end;

procedure TEstudios_Previos.BitBtn1Click(Sender: TObject);
Var
  Fecha:String;
begin
  QrLabel2.Caption:=IntToStr(Nro_Estudio);
  Fecha:=DateToStr(Query1.Fieldbyname('Fecha').AsDateTime);
  QrLabel4.Caption:=Fecha;
  QrLabel2.Caption:=Query1.Fieldbyname('Estudio_ID').AsString;
  QR.Preview;
end;

procedure TEstudios_Previos.QRNeedData(Sender: TObject; var MoreData: Boolean);
var
  onneed:integer;
begin

For Onneed:=1 to 10 do;
end;

procedure TEstudios_Previos.DBGrid1CellClick(Column: TColumn);
begin
  B1.Enabled:=True;
  B3.Enabled:=False;
end;

end.
