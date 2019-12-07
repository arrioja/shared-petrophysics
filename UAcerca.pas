unit uacerca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus, Registry, jpeg;

type
  TAcerca = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Bevel2: TBevel;
    PopupMenu1: TPopupMenu;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label11: TLabel;
    Bevel12: TBevel;
    Label12: TLabel;
    Memo2: TMemo;
    Label13: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function  ObtieneVersion(Form: TForm):string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Acerca: TAcerca;
  Lee1:String;
  Dias:Real;

implementation

uses uprincipal;

{$R *.DFM}

procedure TAcerca.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

function  TAcerca.ObtieneVersion(Form: TForm):string;
var
 Size, Size2: DWord;
 Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
       GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
       VerQueryValue (Pt, '\', Pt2, Size2);
       with TVSFixedFileInfo (Pt2^) do
       begin
         Result:= IntToStr (HiWord (dwFileVersionMS)) +'.'
         + IntToStr (LoWord (dwFileVersionMS)) + '.'
         + IntToStr (HiWord (dwFileVersionLS)) + '.'
         + IntToStr (LoWord (dwFileVersionLS));
      end;
    finally
      FreeMem (Pt);
    end;
  end;
end;

procedure TAcerca.FormActivate(Sender: TObject);
var
  MS: TMemoryStatus;
begin
  GlobalMemoryStatus(MS);
  Label11.Caption:=ObtieneVersion(Principal);
  Label1.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  Label2.Caption := Format('%d %%', [MS.dwMemoryLoad]);
  Label3.caption := IntToStr((Disksize(0) div 1024) div 1024) + ' Mbytes.';
  Label4.caption := IntToStr((DiskFree(0) div 1024) div 1024) + ' Mbytes.';
  Label5.Caption := Inttostr(((Disksize(0) div 1024) div 1024)-((DiskFree(0) div 1024) div 1024))+ ' Mbytes.';
end;

end.
