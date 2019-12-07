unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    Reportes1: TMenuItem;
    Acercade1: TMenuItem;
    CargadeDatos1: TMenuItem;
    EstudiosAnteriores1: TMenuItem;
    EntradasdeDatos1: TMenuItem;
    GraficacindeCurvas1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Image1: TImage;
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Salir1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
