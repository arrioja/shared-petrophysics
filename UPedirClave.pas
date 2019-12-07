unit UPedirClave;

interface

uses
  Windows,  SysUtils,  Classes,  Graphics,  Forms,  Controls,  StdCtrls,
  Buttons,  ExtCtrls,  Dialogs,  messages;

type
  TPedirClave = class(TForm)
    Password: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    Bevel3: TBevel;
    OKBtn: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure LoginKeyPress(Sender: TObject; var Key: Char);
    procedure PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
//    procedure FijarVentana(var m: TWMWINDOWPOSCHANGED); message WM_WINDOWPOSCHANGING ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedirClave: TPedirClave;
  Entrar:Boolean;
  Contador_de_Intentos:Integer;

implementation


uses UPrincipal;

// **************      Funciones importadas de Control.Dll   **************

{$R *.DFM}

// Procedimiento para fijar la ventana de petici�n de Claves
// y que no pueda moverse, con esto se logra la completa
// atenci�n del usuario a esta ventana.
//Procedure TPedirClave.FijarVentana(var m : TWMWINDOWPOSCHANGED);
//Begin
//  m.windowpos.x := 400;
//  m.windowpos.y := 332;
//end;

procedure TPedirClave.FormShow(Sender: TObject);
begin
  Contador_de_Intentos:=0;
  Password.Text:='';
  Password.Setfocus;
  Entrar:=False;
end;

procedure TPedirClave.LoginKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Begin
      Password.SetFocus;
      Key:=#3;
    end;
end;

procedure TPedirClave.PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Begin
      OKBtn.Setfocus;
      Key:=#0;
    end;
end;

procedure TPedirClave.OKBtnClick(Sender: TObject);
Var
  Clave:String;
  FileB :TextFile;
begin
  AssignFile(FileB,'C:\Desarrollos\Petrofisica\Passwd.pwd');
  Reset(FileB);
  Readln(FileB,Clave);
  Closefile(FileB);

  If Password.Text = Clave Then Entrar:=True
  else
    Begin
      Contador_de_Intentos:=Contador_de_Intentos+1;
      If Contador_de_Intentos >= 3 Then
         Begin
           Messagedlg('Usted ha ingresado tres c�digos de acceso '
                     +'err�neos, por razones de seguridad, el sistema '
                     +'no puede permitirle la entrada, por favor, int�ntelo '
                     +'de nuevo cuando recuerde la clave. . .      '
                     +'  << SALIENDO DEL PROGRAMA >>',mterror,[mbok],0);
           Application.Terminate
         end
      else
        Begin
          Showmessage('La clave de ingreso es inv�lida, por favor int�ntelo de nuevo');
          Password.SetFocus;
        end;
    end;
  Close;
end;

procedure TPedirClave.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Canclose:=Entrar;
end;

procedure TPedirClave.FormCreate(Sender: TObject);
begin
  Entrar:=False;
end;

procedure TPedirClave.BitBtn2Click(Sender: TObject);
begin
  Entrar:=True;
end;

end.

