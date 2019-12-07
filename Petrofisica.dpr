program Petrofisica;

{%ToDo 'Petrofisica.todo'}

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {Principal},
  uconfirmar in 'UConfirmar.pas' {Confirmar},
  UExportar in 'UExportar.pas' {Exportar},
  UCambiarClave in 'UCambiarClave.pas' {CambiarClave},
  UPedirClave in 'UPedirClave.pas' {PedirClave},
  uacerca in 'UAcerca.pas' {Acerca},
  USaturacion in 'USaturacion.pas' {Saturacion},
  UEstudios_Previos in 'UEstudios_Previos.pas' {Estudios_Previos},
  UReporte_Salidas in 'UReporte_Salidas.pas' {Reporte_Salidas},
  UReporte_Entradas in 'UReporte_Entradas.pas' {Reporte_Entradas},
  UCarga_Datos in 'UCarga_Datos.pas' {Carga_Datos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TEstudios_Previos, Estudios_Previos);
  Application.CreateForm(TReporte_Salidas, Reporte_Salidas);
  Application.CreateForm(TReporte_Entradas, Reporte_Entradas);
  Application.CreateForm(TCarga_Datos, Carga_Datos);
  Application.Run;
end.
