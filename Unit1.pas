unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ExtDlgs, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SaveTextToFile: TSaveTextFileDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    btGenerate: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edFinalNumber: TEdit;
    edInitialNumber: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    edValorFinal: TEdit;
    edValorInicial: TEdit;
    Panel4: TPanel;
    memoList: TMemo;
    btSaveTo: TSpeedButton;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    edNumFinal: TEdit;
    edNumInicial: TEdit;
    SpeedButton3: TSpeedButton;
    procedure btGenerateClick(Sender: TObject);
    procedure btSaveToClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancelar: boolean;
    counted: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btGenerateClick(Sender: TObject);
Var
  ac, pref, num, valor, resultado: String;
  v1, v2, final: real;
begin
  try
    memoList.Clear;
    Cancelar := false;

    v1 := StrToFloat(edInitialNumber.Text);
    v2 := StrToFloat(edFinalNumber.Text);

    counted := 'Total: ' + FloatToStr(v2 - v1 + 1);

    while v1 <= v2 do

    begin

      valor := FloatToStr(v1);

      ac := Copy(valor, 1, 2);
      pref := Copy(valor, 3, 5);
      num := Copy(valor, 8, 4);
      resultado := Format('(%2s)%5s-%4s', [ac, pref, num]);

      memoList.Lines.Add(resultado);

      v1 := v1 + 1;

      Application.ProcessMessages;

      if Cancelar = true then
      begin
        counted := ('Operação cancelada pelo usuário.');
        Break;
      end;

    end;
  except

    memoList.Lines.Add('Ocorreu um erro!');

  end;
  memoList.Lines.Add('');
  memoList.Lines.Add('-----------------------------------------------------');
  memoList.Lines.Add(counted);

end;

procedure TForm1.btSaveToClick(Sender: TObject);
var
  MyText: TStringlist;
  x: integer;
  caminho, data, st: string;
begin
  MyText := TStringlist.create;
  try
    caminho := ExtractFilePath(Application.ExeName);
    MyText.Add(memoList.Text);

    data := DateToStr(Now) + TimeToStr(Now);

    for x := 1 to length(data) do
    begin
      if (data[x] <> '/') and (data[x] <> ':') then

        st := st + data[x];
    end;

    MyText.SaveToFile(caminho + st + '_Lista gerada.txt');

    memoList.Lines.Add('Caminho do arquivo:');
    memoList.Lines.Add(caminho + st + '_Lista gerada.txt');

  finally
    MyText.Free
  end;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
Var
  ac, pref, num, valor, resultado: String;
  v1, v2, final: real;
begin
  try
    memoList.Clear;
    Cancelar := false;

    v1 := StrToFloat(edValorInicial.Text);
    v2 := StrToFloat(edValorFinal.Text);

    counted := 'Total: ' + FloatToStr(v2 - v1 + 1);

    while v1 <= v2 do

    begin

      memoList.Lines.Add(FloatToStr(v1));

      v1 := v1 + 1;

      Application.ProcessMessages;

      if Cancelar = true then
      begin
        counted := ('Operação cancelada pelo usuário.');
        Break;
      end;

    end;
  except

    memoList.Lines.Add('Ocorreu um erro!');
  end;
  memoList.Lines.Add('');
  memoList.Lines.Add('-----------------------------------------------------');
  memoList.Lines.Add(counted);

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
Var
  ac, pref, num, valor, resultado: String;
  v1, v2, final: real;
begin
  try
    memoList.Clear;
    Cancelar := false;

    v1 := StrToFloat(edNumInicial.Text);
    v2 := StrToFloat(edNumFinal.Text);

    counted := 'Total: ' + FloatToStr(v2 - v1 + 1);

    while v1 <= v2 do

    begin

      if Cancelar = true then
      begin
        Break;
        memoList.Lines.Add('Operação cancelada pelo usuário.');
      end;

      valor := FloatToStr(v1);

      ac := Copy(valor, 1, 2);
      pref := Copy(valor, 3, 4);
      num := Copy(valor, 7, 4);
      resultado := Format('(%2s)%4s-%4s', [ac, pref, num]);

      memoList.Lines.Add(resultado);

      v1 := v1 + 1;

      Application.ProcessMessages;

      if Cancelar = true then
      begin
        counted := ('Operação cancelada pelo usuário.');
        Break;
      end;

    end;
  except

    memoList.Lines.Add('Ocorreu um erro!');

  end;
  memoList.Lines.Add('');
  memoList.Lines.Add('-----------------------------------------------------');
  memoList.Lines.Add(counted);

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Cancelar := true;
end;

end.
