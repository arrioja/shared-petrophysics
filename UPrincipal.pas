unit UPrincipal;

interface
       
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Grids, DBGrids, jpeg, StdCtrls;

type
  TPrincipal = class(TForm)
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
    Exportar1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Saturacion1: TMenuItem;
    SalidadeEcuaciones1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure CargadeDatos1Click(Sender: TObject);
    procedure EstudiosAnteriores1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure GraficacindeCurvas1Click(Sender: TObject);
    procedure EntradasdeDatos1Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure Saturacion1Click(Sender: TObject);
    procedure SalidadeEcuaciones1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  Principal: TPrincipal;
  Inicio,Nueva_Sesion:Boolean; //Esta variable es comprobada en el enevto OnAtivate
                             //para ver si se corre la aplicación o si simplemente
                             //se esta activando desde otra ventana.
  Forzar_Salida:Boolean;     //Indica cuando se sale por la ventana de petición de claves.

implementation

uses uconfirmar, UCarga_Datos, UCambiarClave, UPedirClave, uacerca,
  UEstudios_Previos, UReporte_Entradas, UExportar, USaturacion,
  UReporte_Salidas;

{$R *.dfm}

procedure TPrincipal.Salir1Click(Sender: TObject);
begin
  Try
    Begin
      Confirmar := TConfirmar.Create (self);
      Confirmar.Label1.caption:='Salir del Programa ?.';
      Confirmar.Caption:='C o n f i r m a r .';
      Confirmar.showmodal;
      if Confirmar.modalresult = mrok then
        begin
           application.terminate;
        end;
    end
  Finally
    Confirmar.Free;
    Confirmar:=Nil;
  end;
end;

procedure TPrincipal.CargadeDatos1Click(Sender: TObject);
begin
  Try
    Begin
      Carga_Datos:= TCarga_Datos.Create (self);
      Carga_Datos.Table1.Open;
      Carga_Datos.showmodal;
    end
  Finally
    Carga_Datos.Table1.Close;
    Carga_Datos.Free;
    Carga_Datos:=Nil;
  end;
end;

procedure TPrincipal.EstudiosAnteriores1Click(Sender: TObject);
begin
  Try
    Begin
      CambiarClave:= TCambiarClave.Create (self);
      CambiarClave.showmodal;
    end
  Finally
    CambiarClave.Free;
    CambiarClave:=Nil;
  end;
end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
  Forzar_Salida:=False;
  If Inicio = True Then
    Begin
      Try
        Begin
          PedirClave:= TPedirClave.Create(self);
          PedirClave.Showmodal;
          If PedirClave.ModalResult = mrAbort Then
            Begin
              Forzar_Salida:=True;
            end
          else
            Begin
              Inicio:=False;
            end
        end
      Finally
        Begin
          PedirClave.Free;
          PedirClave:=Nil;
          If Forzar_Salida = True Then
            Begin
              Application.Terminate;
            end;
        end;
      end;
    end
  else
    Begin
      If Forzar_Salida = True Then
        Begin
          Application.Terminate;
        end
      else
        Begin
          If Nueva_Sesion = True Then
            Begin
              Nueva_Sesion:=False;
            end;
        end;
    end;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  Inicio:=True;
  Nueva_Sesion:=False;
end;

procedure TPrincipal.Acercade1Click(Sender: TObject);
begin
  Try
    Begin
      Acerca:= TAcerca.Create (self);
      Acerca.showmodal;
    end
  Finally
    Acerca.Free;
    Acerca:=Nil;
  end;
end;

procedure TPrincipal.GraficacindeCurvas1Click(Sender: TObject);
begin
  Try
    Begin
      Estudios_Previos:= TEstudios_Previos.Create (self);
      Estudios_Previos.Query2.Close;
      Estudios_Previos.Query2.DisableControls;
      Estudios_Previos.Query2.Open;
      Estudios_Previos.Query2.EnableControls;
      Estudios_Previos.Query2.First;
      Estudios_Previos.showmodal;
    end
  Finally
    Estudios_Previos.Free;
    Estudios_Previos:=Nil;
  end;
end;

procedure TPrincipal.EntradasdeDatos1Click(Sender: TObject);
begin
  Try
    Begin
      Reporte_Entradas:= TReporte_Entradas.Create (self);
      Reporte_Entradas.Query2.Close;
      Reporte_Entradas.Query2.DisableControls;
      Reporte_Entradas.Query2.Open;
      Reporte_Entradas.Query2.EnableControls;
      Reporte_Entradas.Query2.First;
      Reporte_Entradas.showmodal;
    end
  Finally
    Reporte_Entradas.Free;
    Reporte_Entradas:=Nil;
  end;
end;

procedure TPrincipal.Exportar1Click(Sender: TObject);
begin
  Try
    Begin
      Exportar:= TExportar.Create (self);
      Exportar.Query2.Close;
      Exportar.Query2.DisableControls;
      Exportar.Query2.Open;
      Exportar.Query2.EnableControls;
      Exportar.Query2.First;
      Exportar.showmodal;
    end
  Finally
    Exportar.Free;
    Exportar:=Nil;
  end;
end;

procedure TPrincipal.Saturacion1Click(Sender: TObject);
begin
  Try
    Begin
      Saturacion:= TSaturacion.Create (self);
      Saturacion.showmodal;
    end
  Finally
    Saturacion.Free;
    Saturacion:=Nil;
  end;
end;

procedure TPrincipal.SalidadeEcuaciones1Click(Sender: TObject);
begin
  Try
    Begin
      Reporte_Salidas:= TReporte_Salidas.Create (self);
      Reporte_Salidas.Query2.Close;
      Reporte_Salidas.Query2.DisableControls;
      Reporte_Salidas.Query2.Open;
      Reporte_Salidas.Query2.EnableControls;
      Reporte_Salidas.Query2.First;
      Reporte_Salidas.showmodal;
    end
  Finally
    Reporte_Salidas.Free;
    Reporte_Salidas:=Nil;
  end;
end;

end.
