unit HintBalloon;

interface

uses
  Windows, Forms, SysUtils, Classes,Commctrl;


type
  TStyleBalloon = (sbNone,sbInformation,sbExclamation,sbError);
  THintBalloon = class(TComponent)
  private
    { Private declarations }
    FTitle:string;
    FText:string;
    FStyle:TStyleBalloon;
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure AddToolInfo(Form:HWnd;Component:HWnd);
    constructor Create(AOwner:TComponent);override;
  published
    property Title:string read FTitle write FTitle;
    property Text:string read FText write FText;
    property Style:TStyleBalloon read FStyle write FStyle;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Hint Balloon', [THintBalloon]);
end;

constructor THintBalloon.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  FStyle := sbInformation;
end;

procedure THintBalloon.AddToolInfo(Form:HWnd;Component:HWnd);
var
  Rect: TRect;
  ti: TToolInfo;
  ToolTip:HWnd;
  icon:integer;
begin
ToolTip := CreateWindowEx(0, 'Tooltips_Class32', nil, TTS_ALWAYSTIP or $40,
Integer(CW_USEDEFAULT), Integer(CW_USEDEFAULT), Integer(CW_USEDEFAULT),
Integer(CW_USEDEFAULT), Form, 0, hInstance,nil);
SetWindowPos(ToolTip, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or
SWP_NOACTIVATE);
 if (FStyle = sbNone) then icon := 0 else
  if (FStyle = sbInformation) then icon := 1 else
    if (FStyle = sbExclamation) then icon := 2 else icon := 3;
SendMessage(ToolTip, ($0400 + 32), icon, Integer(PChar(FTitle)));

GetClientRect(Component, Rect);
FillChar(Ti, Sizeof(TToolInfo), 0);
ti.cbSize := SizeOf(TToolInfo);
ti.uFlags := TTF_SUBCLASS;
ti.hInst := hInstance;
ti.hwnd := Component;
ti.Rect := Rect;
ti.lpszText := PChar(FText);
SendMessage(ToolTip, TTM_ADDTOOL, 0, Integer(@ti));
end;

end.
