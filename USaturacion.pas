unit USaturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, ExtCtrls, ComCtrls, OleCtrls,
  Chartfx3, VCFI, DB, DBTables, TeeProcs, TeEngine, Chart, DbChart, QRTEE,
  QuickRpt, Series, QRCtrls, TeeFunci, Grids, DBGrids, math;

type

  No_Cero      = class(Exception);
  No_Cero_1      = class(Exception);

  TSaturacion = class(TForm)
    B2: TBitBtn;
    B4: TBitBtn;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label11: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label12: TLabel;
    procedure B4Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delay:integer;
  Saturacion: TSaturacion;
  Nro_Estudio:Integer;
  FileA,FileB :TextFile;

implementation

{$R *.dfm}

procedure TSaturacion.B4Click(Sender: TObject);
begin
  Close;
end;

procedure TSaturacion.B2Click(Sender: TObject);
Var
  PMA,ARW,PHIDMRT:Real;
  RSW,OT,PHID,VCL:Real; //Variables de Resultado
begin
//******************************************************************************
// Para Validación: Edit1 y Edit2 no pueden ser iguales porque se produce un error de division entre cero
//en la formula de VCL.
//******************************************************************************
Try
  Begin
    //*****************************************************************************
    //*****************************************************************************
    // se inicia el cálculo de saturación de agua en base a la formula de Archie

    // SW = Raiz_N de ( (a*RW)/(PHID a la M * RT) )

    ARW:= StrtoFloat(Edit1.Text)*StrToFloat(Edit4.Text);
    PHIDMRT:= Power(StrToInt(Edit6.Text),StrToInt(Edit2.Text)) * StrToFloat(Edit3.Text);

    RSW:=Power((ARW/PHIDMRT),(1/StrToInt(Edit5.Text)));

    Label1.Caption:='SW = '+FormatFloat('#,####0.0000',RSW)+' = '+FormatFloat('#,##0.00',RSW*100)+'%';

    //*****************************************************************************
    //*****************************************************************************
    //*****************************************************************************

  end
 Except
    On EConvertError do
       Begin
         Showmessage('Alguno de los valores proporcionados por el usuario no son datos numéricos válidos '+
                     ', por favor inténtelo de nuevo.');
         Edit1.SetFocus;
       end;
 end;
end;

procedure TSaturacion.Edit1Change(Sender: TObject);
begin
  If ((Edit1.Text = '') OR
      (Edit2.Text = '') OR
      (Edit3.Text = '') OR
      (Edit4.Text = '') OR
      (Edit5.Text = '') OR
      (Edit6.Text = '')) Then  B2.Enabled:=False else B2.Enabled:=True;
end;

end.
