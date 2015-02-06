unit uTabuada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    numDaVez: Integer;
    function retornaSinal(): integer;


  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Tform1.retornaSinal(): integer;
begin
  if (ComboBox2.Text = 'Adi��o') Then
    begin
      result := 1;
    end;
  if (ComboBox2.Text = 'Subtra��o') Then
    begin
      result := 2;
    end;
  if (ComboBox2.Text = 'Multiplica��o') Then
    begin
      result := 3;
    end;
  if (ComboBox2.Text = 'Divis�o') Then
    begin
      result := 4;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
   i : integer;
begin
  For i:= 1 To 10 Do
    begin
      ComboBox1.Items.Add(IntToStr(i));
    end;

  ComboBox2.Clear;
  ComboBox2.Items.Add('Adi��o');
  ComboBox2.Items.Add('Subtra��o');
  ComboBox2.Items.Add('Multiplica��o');
  ComboBox2.Items.Add('Divis�o');
  ComboBox2.ItemIndex := 0;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  x: Integer;
  i: Integer;
  sinal: Integer;
begin
  numDaVez := StrToInt(ComboBox1.Text);
  sinal := Form1.retornaSinal;
  x:= 1;
  Label2.Caption := '';

  Case sinal of
  1:
    For x:= 1 To 10 Do
      begin
        Label2.Caption := Label2.Caption + IntToStr(numDaVez) + ' + '+ IntToStr(X) + ' = ' + IntToStr(numDaVez + x) + #13;
      end;
  2:
    While(x<=10)Do
      begin
        Label2.Caption := Label2.Caption + IntToStr(numDaVez) + ' - '+ IntToStr(X) + ' = ' + IntToStr(numDaVez - x) + #13;
        x := x + 1;
      end;
  3:
    For x:= 1 To 10 Do
      begin
        Label2.Caption := Label2.Caption + IntToStr(numDaVez) + ' X '+ IntToStr(X) + ' = ' + IntToStr(numDaVez * x) + #13;
      end;
  4:
    While(x<=10)Do
      begin
        Label2.Caption := Label2.Caption + IntToStr(numDaVez * x) + ' / '+ IntToStr(numDaVez) + ' = ' + IntToStr((numDaVez * x) div numDaVez) + #13;
        x := x + 1;
      end;
  end;

end;

end.
