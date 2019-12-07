unit UCarga_Datos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, ExtCtrls, ComCtrls, OleCtrls,
  Chartfx3, VCFI, DB, DBTables, TeeProcs, TeEngine, Chart, DbChart, QRTEE,
  QuickRpt, Series, QRCtrls, TeeFunci, Grids, DBGrids, math;

type

  No_Cero      = class(Exception);
  No_Cero_1      = class(Exception);

  TCarga_Datos = class(TForm)
    OD: TOpenDialog;
    Gauge1: TGauge;
    B1: TBitBtn;
    B2: TBitBtn;
    B3: TBitBtn;
    B4: TBitBtn;
    RadioGroup1: TRadioGroup;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RadioGroup2: TRadioGroup;
    Table1: TTable;
    Edit9: TEdit;
    Label10: TLabel;
    DataSource1: TDataSource;
    Query1: TQuery;
    DataSource2: TDataSource;
    QR: TQuickRep;
    QRChart1: TQRChart;
    QRDBChart1: TQRDBChart;
    Series1: TAreaSeries;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    QRChart2: TQRChart;
    QRDBChart2: TQRDBChart;
    QRChart3: TQRChart;
    QRDBChart3: TQRDBChart;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    AverageTeeFunction2: TAverageTeeFunction;
    LineSeries1: TAreaSeries;
    QRChart4: TQRChart;
    QRDBChart4: TQRDBChart;
    QRChart5: TQRChart;
    QRDBChart5: TQRDBChart;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    AverageTeeFunction3: TAverageTeeFunction;
    LineSeries8: TAreaSeries;
    AverageTeeFunction4: TAverageTeeFunction;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Grafico: TChartfx;
    Panel1: TPanel;
    procedure B1Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRNeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delay:integer;
  Carga_Datos: TCarga_Datos;
  Nro_Estudio:Integer;
  FileA,FileB :TextFile;

implementation

{$R *.dfm}

procedure TCarga_Datos.B1Click(Sender: TObject);
begin
  OD.Execute;
  B3.Enabled:=False;
  If OD.FileName = '' then
    Begin
      Showmessage ('No se ha seleccionado un archivo (.LAS) v�lido');
      B2.Enabled:=False;
    end
  else
    Begin
      Label1.Caption:='';
      Label1.Caption:=OD.FileName;
      B2.Enabled:=True;
    end;
end;

procedure TCarga_Datos.B4Click(Sender: TObject);
begin
  Close;
end;

procedure TCarga_Datos.B2Click(Sender: TObject);
Var
// <>
  J,X,Lineas: Integer;
  Leido, Leido3:String;
  Variables_LAS: Array[1..7] of Real;
  PMA,ARW,PHIDMRT:Real;
  RSW,OT,PHID,VCL:Real; //Variables de Resultado
begin
//******************************************************************************
// Para Validaci�n: Edit1 y Edit2 no pueden ser iguales porque se produce un error de division entre cero
//en la formula de VCL.
//******************************************************************************
Try
  Begin
      // se validan los campos para evitar errores matem�ticos
      If StrToFloat(Edit1.Text) = StrToFloat(Edit2.Text) Then raise No_Cero.create(' ');
      Case RadioGroup1.ItemIndex of
        0:If StrToFloat(Edit9.Text) = 2.65 Then Raise No_Cero_1.Create(' ');
        1:If StrToFloat(Edit9.Text) = 2.71 Then Raise No_Cero_1.Create(' ');
        2:If StrToFloat(Edit9.Text) = 2.86 Then Raise No_Cero_1.Create(' ');
        3:If StrToFloat(Edit9.Text) = 1 Then Raise No_Cero_1.Create(' ');
      end;

      //Se dehabilitan los campos de usuario para que no los modifiquen en corrida
      Edit1.Enabled:=False;
      Edit2.Enabled:=False;
      Edit3.Enabled:=False;
      Edit4.Enabled:=False;
      Edit5.Enabled:=False;
      Edit6.Enabled:=False;
      Edit7.Enabled:=False;
      Edit8.Enabled:=False;
      Edit9.Enabled:=False;
      RadioGroup1.Enabled:=False;

      //Se inicia la carga de datos
      AssignFile(FileA,OD.FileName);
      Reset(FileA);
      Lineas:=0;
      While Not EOF(FileA) do   //Para saber cuantas lineas tiene el archivo y
        Begin                   // Ajustar el maxValue del Gauge
          Readln(Filea,Leido);
          Lineas:=Lineas+1;
        end;
      Closefile(FileA);
      Gauge1.MaxValue:=Lineas;

     //Ahora hago el recorrido procesando el archivo
      Reset(FileA);
      Lineas:=0;       
      J:=1;   // para saber que columna del .LAS estoy leyendo

      //Se lee del archivo el Nro de estudio que se realiza
      AssignFile(FileB,'C:\Desarrollos\Petrofisica\Estudio.cnt');
      Reset(FileB);
      Readln(FileB,Nro_Estudio);
      Closefile(FileB);

      //Se inicia el procedimiento para leer los datos del archivo y para acomodarlos
      //en la base de datos.
      While Not EOF(FileA) do
        Begin
          Readln(Filea,Leido);
          Leido3:='';
          For X:=1 to Length(Leido) do
            Begin  // Para poner lo que esta en la linea leida en el arreglo
              If Leido[X] <> #9 then
                Begin
                  If Leido[X] = '.' then Leido[X]:=',';
                  Leido3:=Leido3+Leido[X];
                end
              else
                Begin
                 Variables_LAS[J]:=StrToFloat(Leido3);
                 Leido3:='';
                  J:=J+1;
                end;
            end;
          Variables_LAS[J]:=StrToFloat(Leido3); //Para grabar el �ltimo registro
    // Con todos los datos necesarios, se inicia el calculo de la Arcillosidad  VCL
    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************
    //                    VCL:= (GS-GRSD)/(GRSH-GRSD)
    // siendo GR = Segunda columna del .LAS
    //        GRSD = Gamma Ray Limpio (Clean) extraido del edit1
    //        GRSH = Gamma Ray Shale extraido del Edit2
    //        VCL:=0;
            VCL:=(Variables_LAS[2]-StrToFloat(Edit1.Text))/(StrToFloat(Edit2.Text)-StrToFloat(Edit1.Text));

    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************

    //  Se inicia el c�lculo de la Porosidad

    //   PHID = RhoM - RHOB / RhoM - RhoF
    //RhoM = Densidad de la Matriz = Valor de PMA
    //RHOB = Del Archivo .Las (5ta Columna)
    //RhoF = Densidad en F (proporcionado por el usuario (Edit9)
       Pma:=1; // se le da el estandar por si no hay selecci�n;
          Case RadioGroup1.ItemIndex of
            0:PMA:=2.65;
            1:PMA:=2.71;
            2:PMA:=2.86;
            3:PMA:=1;
          end;

  //          PHID:=0;
            PHID:=(PMA-Variables_LAS[5])/(PMA-StrToFloat(Edit9.Text));

    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************
    // se inicia el c�lculo de saturaci�n de agua en base a la formula de Archie

    // SW = Raiz_N de ( (a*RW)/(PHID a la M * RT) )

    ARW:= StrtoFloat(Edit4.Text)*StrToFloat(Edit3.Text);
    PHIDMRT:= Power(PHID,StrToInt(Edit5.Text)) * StrToFloat(Edit3.Text);

    RSW:=Power((ARW/PHIDMRT),(1/StrToInt(Edit6.Text)));

    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************

            OT:=(StrToFloat(Edit7.Text)*0.1)+(StrToFloat(Edit8.Text)*0.1)+(Variables_LAS[2]*0.1);

    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************


          // Una vez que los datos se encuentren en el arreglo, se guardan en la base de datos
          Table1.IndexName:='';
          Table1.Edit;
          Table1.Append;
          Table1.FieldByname('Estudio_ID').AsInteger:=Nro_Estudio;
          Table1.FieldByname('Fecha').AsDateTime:=Date;
          Table1.FieldByname('TimeStamp').AsDateTime:=Time;
          Table1.FieldByname('DEPTH').AsFloat:=Variables_LAS[1];
          Table1.FieldByname('GR').AsFloat:=Variables_LAS[2];
          Table1.FieldByname('SP').AsFloat:=Variables_LAS[3];
          Table1.FieldByname('RD').AsFloat:=Variables_LAS[4];
          Table1.FieldByname('RHOB').AsFloat:=Variables_LAS[5];
          Table1.FieldByname('NPHI').AsFloat:=Variables_LAS[6];
          Table1.FieldByname('DT').AsFloat:=Variables_LAS[7];
          Table1.FieldByname('SW_A').AsFloat:=StrToFloat(Edit4.Text);
          Table1.FieldByname('SW_RW').AsFloat:=StrToFloat(Edit3.Text);
          Table1.FieldByname('SW_N').AsFloat:=StrToFloat(Edit5.Text);
          Table1.FieldByname('SW_M').AsFloat:=StrToFloat(Edit6.Text);
          Table1.FieldByname('OT_A').AsFloat:=StrToFloat(Edit7.Text);
          Table1.FieldByname('OT_RW').AsFloat:=StrToFloat(Edit8.Text);
          Table1.FieldByname('VCL_CLEAN').AsFloat:=StrToFloat(Edit1.Text);
          Table1.FieldByname('VCL_SHALE').AsFloat:=StrToFloat(Edit2.Text);
          Table1.FieldByname('PMA').AsFloat:=PMA;
          Table1.FieldByname('D_en_F').AsFloat:=StrToFloat(Edit9.Text);
          Table1.FieldByname('Result_VCL').AsFloat:=VCL;
          Table1.FieldByname('Result_PHID').AsFloat:=PHID;
          Table1.FieldByname('Result_OT').AsFloat:=OT;
          Table1.FieldByname('Result_SW').AsFloat:=RSW;
          Table1.Post;



            If Lineas < 25 then
            Begin  // Si son los primeros 25 valores se grafica ahi mismo

              GRAFICO.OpenDataEx(COD_VALUES,2,Lineas);
              GRAFICO.ThisSerie:=  0;
              GRAFICO.Value[Lineas]:=PHID;
              GRAFICO.ThisSerie:=  1;
              GRAFICO.Value[Lineas]:=VCL;
              GRAFICO.CloseData(COD_VALUES);
            end
          else
            Begin  // si son mas de 25 se le da el efecto de movimiento
              GRAFICO.OpenDataEx(COD_VALUES,2,Lineas);
              GRAFICO.ThisSerie:=  0;
           //   For X:=0 to 23 do GRAFICO.Value[X]:=GRAFICO.Value[X+1];
              GRAFICO.Value[Lineas]:=PHID;
              GRAFICO.ThisSerie:=  1;
            //  For X:=0 to 23 do GRAFICO.Value[X]:=GRAFICO.Value[X+1];
              GRAFICO.Value[Lineas]:=VCL;
              Grafico.Scroll(1,1);
              GRAFICO.CloseData(COD_VALUES);
            end;



      // Para graficar todo
          {    GRAFICO.OpenDataEx(COD_VALUES,2,Lineas);
              GRAFICO.ThisSerie:=  0;
              GRAFICO.Value[Lineas]:=PHID;
              GRAFICO.ThisSerie:=  1;
              GRAFICO.Value[Lineas]:=VCL;
              GRAFICO.CloseData(COD_VALUES);        }

{
      Para graficar por parte se usa este c�digo

          If Lineas < 25 then
            Begin  // Si son los primeros 25 valores se grafica ahi mismo
              GRAFICO.OpenDataEx(COD_VALUES,2,25);
              GRAFICO.ThisSerie:=  0;
              GRAFICO.Value[Lineas]:=PHID;
              GRAFICO.ThisSerie:=  1;
              GRAFICO.Value[Lineas]:=VCL;
              GRAFICO.CloseData(COD_VALUES);
            end
          else
            Begin  // si son mas de 25 se le da el efecto de movimiento
              GRAFICO.OpenDataEx(COD_VALUES,2,25);
              GRAFICO.ThisSerie:=  0;
              For X:=0 to 23 do GRAFICO.Value[X]:=GRAFICO.Value[X+1];
              GRAFICO.Value[24]:=PHID;
              GRAFICO.ThisSerie:=  1;
              For X:=0 to 23 do GRAFICO.Value[X]:=GRAFICO.Value[X+1];
              GRAFICO.Value[24]:=VCL;
              GRAFICO.CloseData(COD_VALUES);
            end;

   }
              // Se limpia el valor del arreglo
          For X:=1 to 7 do Variables_LAS[X]:=0;  J:=1;
          Lineas:=Lineas+1;
          Gauge1.Progress:=Lineas;
          Sleep(Delay);
          Application.ProcessMessages;
        end;

     // Se incrementa el contador de estudios realizados
      Nro_Estudio:=Nro_Estudio+1;
      Rewrite(FileB);
      Writeln(FileB,Nro_Estudio);
      Closefile(FileB);

      Closefile(FileA);
      B3.Enabled:=True;
      B2.Enabled:=False;

            //Se habilitan los campos de usuario para otros estudios
      Edit1.Enabled:=True;
      Edit2.Enabled:=True;
      Edit1.Enabled:=True;
      Edit2.Enabled:=True;
      Edit1.Enabled:=True;
      Edit2.Enabled:=True;
      Edit1.Enabled:=True;
      Edit2.Enabled:=True;
      Edit1.Enabled:=True;
      RadioGroup1.Enabled:=True;

  end
 Except
    On No_Cero do
       Begin
         Showmessage('Los Valores de VCL-CLEAN y VCL-SHALE no pueden ser iguales, ya que ocaisionar�a '+
                     'una imposibilidad matem�tica al intentar dividir entre cero.');
         Edit1.SetFocus;
       end;
    On No_Cero_1 do
       Begin
         Showmessage('Los Valores de PMA y D en F no pueden ser iguales, ya que ocaisionar�a '+
                     'una imposibilidad matem�tica al intentar dividir entre cero.');
         Edit9.SetFocus;

       end;
    On EConvertError do
       Begin
         Showmessage('Alguno de los valores proporcionados por el usuario no son datos num�ricos v�lidos '+
                     ', por favor int�ntelo de nuevo.');
         Edit9.SetFocus;
       end;
 end;
end;

procedure TCarga_Datos.FormShow(Sender: TObject);
Var
  X:Integer;
begin
  delay:= 0;
  GRAFICO.OpenDataEx(COD_VALUES,1,25);
    GRAFICO.ThisSerie:=  0;
     For X:=0 to 24 do GRAFICO.Value[X] := 0.001;
  GRAFICO.CloseData(COD_VALUES);
end;

procedure TCarga_Datos.RadioGroup2Click(Sender: TObject);
begin
  Case RadioGroup2.ItemIndex of
    0: Delay:=0;
    1: Delay:=60;
    2: Delay:=125;
    3: Delay:=250;
    4: Delay:=500;
    5: Delay:=1000;
  end;
end;

procedure TCarga_Datos.Table1AfterPost(DataSet: TDataSet);
begin
  Table1.FlushBuffers;
end;

procedure TCarga_Datos.BitBtn1Click(Sender: TObject);
Var
  Fecha:String;
begin
  //Se lee del archivo el Nro de estudio que se realiza
  AssignFile(FileB,'C:\Desarrollos\Petrofisica\Estudio.cnt');
  Reset(FileB);
  Readln(FileB,Nro_Estudio);
  Closefile(FileB);
  Nro_Estudio:=Nro_Estudio-1;

  Query1.Close;
  Query1.DisableControls;
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from Estudios where Estudio_ID = '+IntToStr(Nro_Estudio));
//  Query1.SQL.parambyname('Est').AsInteger:=Nro_Estudio;
  Query1.Open;
  Query1.EnableControls;
  Query1.First;
  QrLabel2.Caption:=IntToStr(Nro_Estudio);
  Fecha:=DateToStr(Query1.Fieldbyname('Fecha').AsDateTime);
  QrLabel4.Caption:=Fecha;
  QR.Preview;

  AssignFile(FileB,'C:\Desarrollos\Petrofisica\Estudio.cnt');
  Reset(FileB);
  Readln(FileB,Nro_Estudio);
  Closefile(FileB);
end;

procedure TCarga_Datos.QRNeedData(Sender: TObject; var MoreData: Boolean);
var
  onneed:integer;
begin

For Onneed:=1 to 10 do;
end;

end.
