unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ToggleBox1: TToggleBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure ToggleBox1Change(Sender: TObject);
  private
    function Fatorial(Numero: integer): integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.Fatorial(Numero: integer): integer;
begin
  if Numero <= 0 then
     Result := 1
  else
     Result := Numero * Fatorial(Numero - 1);
end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin
  Edit2.Text := IntToStr(Fatorial(StrToInt(Edit1.Text)));
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8]) then
     key := #0;
end;


end.







