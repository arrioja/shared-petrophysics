unit UExportar;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, ExtCtrls, ComCtrls, OleCtrls,
  Chartfx3, VCFI, DB, DBTables, TeeProcs, TeEngine, Chart, DbChart, QRTEE,
  QuickRpt, Series, QRCtrls, TeeFunci, Grids, DBGrids, DBCtrls, jpeg;

type

  No_Cero      = class(Exception);
  No_Cero_1      = class(Exception);

  TExportar = class(TForm)
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
    Gauge1: TGauge;
    procedure B1Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure B3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delay:integer;
  Exportar: TExportar;
  Nro_Estudio:Integer;

implementation

{$R *.dfm}

procedure TExportar.B1Click(Sender: TObject);
begin
  Query1.Close;
  Query1.DisableControls;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from Estudios where Estudio_ID = '+Query2.Fieldbyname('Estudio_ID').AsString+' Order By DEPTH');
  Query1.Open;
  Query1.EnableControls;
  Query1.First;
  Gauge1.MaxValue:=Query1.RecordCount;
  B3.Enabled:=True;
end;

procedure TExportar.B4Click(Sender: TObject);
begin
  Close;
end;

procedure TExportar.Table1AfterPost(DataSet: TDataSet);
begin
  Table1.FlushBuffers;
end;

procedure TExportar.DBGrid1CellClick(Column: TColumn);
begin
  B1.Enabled:=True;
  B3.Enabled:=False;
end;

procedure TExportar.B3Click(Sender: TObject);
Var
  FileB:TextFile;
  Linea:String;
begin
  AssignFile(FileB,'C:\Desarrollos\Petrofisica\Export.txt');
  Rewrite(FileB);
  Closefile(FileB);
  Query1.First;
  Linea:='';
  While Not Query1.Eof do
    Begin
      Linea:=Query1.Fieldbyname('Depth').AsString+#9+Query1.Fieldbyname('GR').AsString+#9+
             Query1.Fieldbyname('SP').AsString+#9+Query1.Fieldbyname('Rd').AsString+#9+
             Query1.Fieldbyname('Rhob').AsString+#9+Query1.Fieldbyname('Nphi').AsString+#9+
             Query1.Fieldbyname('dt').AsString+#9+Query1.Fieldbyname('sw_a').AsString+#9+
             Query1.Fieldbyname('sw_rw').AsString+#9+Query1.Fieldbyname('sw_n').AsString+#9+
             Query1.Fieldbyname('sw_m').AsString+#9+Query1.Fieldbyname('OT_A').AsString+#9+
             Query1.Fieldbyname('ot_rw').AsString+#9+Query1.Fieldbyname('vcl_clean').AsString+#9+
             Query1.Fieldbyname('vcl_shale').AsString+#9+Query1.Fieldbyname('pma').AsString+#9+
             Query1.Fieldbyname('d_en_f').AsString+#9+Query1.Fieldbyname('result_vcl').AsString+#9+
             Query1.Fieldbyname('result_phid').AsString+#9+Query1.Fieldbyname('result_ot').AsString+#9+
             Query1.Fieldbyname('result_sw').AsString;

      Append(FileB);
      Writeln(FileB,Linea);
      Closefile(FileB);
      Query1.Next;
      Gauge1.Progress:=Gauge1.Progress+1;
      Application.ProcessMessages;
    end;
  Showmessage('Se ha creado el archivo "C:\Desarrollos\Petrofisica\Export.txt" con la información del estudio.');
end;

end.
