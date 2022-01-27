unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HkHints, XpMan, ComCtrls, ToolWin, ImgList;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    ScrollBox1: TScrollBox;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 SetHkHintStyle(htAzul);
 Application.HintHidePause:= 100000;
end;

procedure TForm1.ToolButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 SetHintParams('Abrir arquivo (Ctrl + A)','Seleciona um arquivo',True, htInforma);
end;

procedure TForm1.ToolButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SetHintParams('Opções de filtragem','Precione F1 para obter mais ajuda.',True, htAjuda);
end;

procedure TForm1.ToolButton4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 SetHintParams('Ajuda do sistema','Precione F1 para obter mais ajuda.',True, htAjuda);
end;

procedure TForm1.ToolButton3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 SetHintParams('Sair do Sistema','Salvar cadastro antes de sair.',True, htAviso);
 end;
procedure TForm1.ToolButton6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 SetHintParams('Fonte do Hint','Melhor fonte "Calibri".',True, htInforma);
end;

end.
