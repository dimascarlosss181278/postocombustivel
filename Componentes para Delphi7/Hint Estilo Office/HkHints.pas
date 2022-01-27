
unit hkHints;

interface

uses Windows, Messages, Graphics, Classes, Controls, Forms,
  ExtCtrls, StdCtrls;

type
  THintIconType = (htAviso, htInforma, htAjuda, htCritico, htNone);
  THintTheme = (htAzul, htPrateado);

  THkHintWindow = class(THintWindow)
  private
    FSrcImage: TBitmap;
    FImage: TBitmap;
    FTextRect: TRect;
    procedure WMEraseBkgnd(var Message: TMessage); message WM_ERASEBKGND;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function CalcHintRect(MaxWidth: Integer; const AHint: string;
      AData: Pointer): TRect; override;
  end;

procedure SetHkHintStyle(ColorTheme: THintTheme);
procedure RegisterHintWindow(AClass: THintWindowClass);
function GetHintControl: TControl;
procedure SetHintParams(TextCaption, TextBottom: string; Separator: Boolean;
  IconTipo: THintIconType);

procedure DrawFrame(Canvas: TCanvas; Offset, FrameWidth: Integer;
  ClWidth, ClHeight: Integer; FBorder: Boolean);
procedure DrawBevel(Canvas: TCanvas; Rect: TRect; LightColor, DarkColor:
  TColor);
procedure GradientFillRect(Canvas: TCanvas; Rect: TRect);
procedure PaintHkHint(FTheme: THintTheme);

var

  FSeparator: TBevel;
  FTopCaption: TLabel;
  FBottomCaption: TLabel;
  FBottom: Integer;
  FTypeIcon: TImage;
  IconID: PChar;
  FPen: Integer;
  FColorFace: TColor;
  FColorGrad: TColor;
  FColorLight: TColor;
  FColorDark: TColor;
  FColorTheme: THintTheme;

implementation

{$R IconsHint.res}

//----------------------------------------------------------------------------------------------

// Procedures e functions

function WidthOf(R: TRect): Integer;
begin
  Result := R.Right - R.Left;
end;

function HeightOf(R: TRect): Integer;
begin
  Result := R.Bottom - R.Top;
end;

procedure PaintHkHint(FTheme: THintTheme);
begin
  case FTheme of

    htPrateado:
      begin
        FColorFace := clWhite;
        FColorGrad := $00E7DDDC;
        FColorDark := $00767676;
        FColorLight := $00767676;
      end;
    htAzul:
      begin
        FColorFace := clWhite;
        FColorGrad := $00EBD0BE;
        FColorDark := $00767676;
        FColorLight := $00767676;
      end;

  end;
end;

procedure GradientFillRect(Canvas: TCanvas; Rect: TRect);
var
  Steps: Integer;
  StartR, StartG, StartB, EndR, EndG, EndB: Byte;
  CrrR, CrrG, CrrB: Double;
  IncR, IncG, incB: Double;
  i: integer;
begin

  Steps := Rect.Bottom - Rect.Top;

  StartR := GetRValue(FColorFace);
  EndR := GetRValue(FColorGrad);
  StartG := GetGValue(FColorFace);
  EndG := GetGValue(FColorGrad);
  StartB := GetBValue(FColorFace);
  EndB := GetBValue(FColorGrad);

  IncR := (EndR - StartR) / steps;
  IncG := (EndG - StartG) / steps;
  IncB := (EndB - StartB) / steps;

  CrrR := StartR;
  CrrG := StartG;
  CrrB := StartB;

  for i := 0 to Steps do
    begin
      Canvas.Pen.Color := RGB(Round(CrrR), Round(CrrG), Round(CrrB));

      Canvas.MoveTo(Rect.Left, i);
      Canvas.LineTo(Rect.Right + Rect.Left, i);

      CrrR := CrrR + IncR;
      CrrG := CrrG + IncG;
      CrrB := CrrB + IncB;
    end;
end;

procedure DrawFrame(Canvas: TCanvas; Offset, FrameWidth: Integer;
  ClWidth, ClHeight: Integer; FBorder: Boolean);
var
  i: integer;
begin
  if FBorder then
    begin
      for i := Offset to Offset + FrameWidth - 1 do
        begin
          DrawBevel(Canvas,
            Rect(i, i, ClWidth - 2 * i - 2, ClHeight - 2 * i - 1),
            FColorLight, FColorDark);
        end;
    end;
end;

procedure DrawBevel(Canvas: TCanvas; Rect: TRect; LightColor,
  DarkColor: TColor);
begin
  Canvas.Pen.Width := FPen;
  Canvas.Pen.Color := LightColor;
  Canvas.MoveTo(Rect.Left, Rect.Top + Rect.Bottom);
  Canvas.LineTo(Rect.Left, Rect.Top);
  Canvas.LineTo(Rect.Left + Rect.Right, Rect.Top);
  Canvas.Pen.Color := LightColor;
  Canvas.LineTo(Rect.Left + Rect.Right, Rect.Top + Rect.Bottom);
  Canvas.LineTo(Rect.Left, Rect.Top + Rect.Bottom);
end;

procedure RegisterHintWindow(AClass: THintWindowClass);
begin
  HintWindowClass := AClass;
  with Application do
    if ShowHint then
      begin
        ShowHint := False;
        ShowHint := True;
      end;
end;

procedure SetHintParams(TextCaption, TextBottom: string; Separator: Boolean;
  IconTipo: THintIconType);
begin
  case IconTipo of
    htAviso: IconID := 'IcB';
    htInforma: IconID := 'IcD';
    htAjuda: IconID := 'IcA';
    htCritico: IconID := 'IcC';
    htNone: IconID := '';
  end;
  FTypeIcon.Picture.Bitmap.Handle := LoadBitmap(hInstance, IconID);
  FTopCaption.Caption := '  ' + TextCaption;
  FBottomCaption.Caption := TextBottom + '    ';
  FSeparator.Visible := Separator;
  case Separator of
    False:
      begin
        FBottom := 40;
        FTypeIcon.Visible := False;
        FBottomCaption.Visible := False;
      end;
    True:
      begin
        FBottom := 64;
        FTypeIcon.Visible := True;
        FBottomCaption.Visible := True;

      end;
  end;
end;

procedure SetHkHintStyle(ColorTheme: THintTheme);
begin
  FColorTheme := ColorTheme;
  RegisterHintWindow(THkHintWindow);
end;

function GetHintControl: TControl;
var
  CursorPos: TPoint;
begin
  GetCursorPos(CursorPos);
  Result := FindDragTarget(CursorPos, True);
  while (Result <> nil) and not Result.ShowHint do
    Result := Result.Parent;
  if (Result <> nil) and (csDesigning in Result.ComponentState) then
    Result := nil;
end;

//---------------------------------------------------------------------------------------------------

{ THkHintWindow }

constructor THkHintWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FImage := TBitmap.Create;
  FSrcImage := TBitmap.Create;
  FSeparator := TBevel.Create(Application);
  FTopCaption := TLabel.Create(Application);
  FBottomCaption := TLabel.Create(Application);
  FTypeIcon := TImage.Create(Application);
  with FTypeIcon do
    begin
      Transparent := True;
      Parent := Self;
    end;
end;

destructor THkHintWindow.Destroy;
begin
  FSrcImage.Free;
  FImage.Free;
  FTopCaption.Free;
  FBottomCaption.Free;
  FTypeIcon.Free;
  inherited Destroy;
end;

procedure THkHintWindow.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style and not WS_BORDER;
end;

procedure THkHintWindow.WMEraseBkgnd(var Message: TMessage);
begin
  Message.Result := 1;
end;

procedure THkHintWindow.Paint;
const
  HintAlignment: TAlignment = taLeftJustify;
var
  R: TRect;
  procedure PaintText(R: TRect);
  const
    Flag: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);

  begin
    DrawText(FImage.Canvas.Handle, PChar(#13 + Caption),
      -1, R, DT_NOPREFIX or DT_WORDBREAK or Flag[HintAlignment]
      or DrawTextBiDiModeFlagsReadingOnly);
  end;

begin

  R := ClientRect;
  FImage.Handle := CreateCompatibleBitmap(Canvas.Handle,
    WidthOf(ClientRect), HeightOf(ClientRect));
  FImage.Canvas.Draw(0, 0, FSrcImage);

  R := FTextRect;
  if HintAlignment = taLeftJustify then
    Inc(R.Left, 2);
  FImage.Canvas.Font.Name := 'Calibri';
  FImage.Canvas.Font.Size := 9;
  FImage.Canvas.Font.Color := $004C4C4C;

  PaintHkHint(FColorTheme);

  GradientFillRect(FImage.Canvas, Rect(0, 0, ClientWidth, ClientHeight));
  DrawFrame(FImage.Canvas, 0, 1, ClientWidth + 1, ClientHeight, True);
  FImage.Canvas.Brush.Style := bsClear;
  PaintText(R);
  Canvas.Draw(0, 0, FImage);

  with FSeparator do
    begin
      Parent := Self;
      Top := R.Bottom - 15;
      Left := 6;
      Width := Self.ClientWidth - 15;
      Shape := bsTopLine;
    end;

  with FTopCaption do
    begin
      Transparent := True;
      Font.Name := 'Calibri';
      Font.Color := $004C4C4C;
      Font.Style := [fsBold];
      Font.Size := 9;
      Parent := Self;
      Layout := tlBottom;
      Align := alTop;
      Height := 20;
    end;

  FTypeIcon.SetBounds(8, ClientHeight - 22, 20, 20);

  with FBottomCaption do
    begin
      Transparent := True;
      Font.Name := 'Calibri';
      Font.Color := $004C4C4C;
      Font.Style := [fsBold];
      Font.Size := 9;
      Parent := Self;
      Layout := tlTop;
      Align := alBottom;
      Height := 22;
      Alignment := taRightJustify;
    end;

end;

function THkHintWindow.CalcHintRect(MaxWidth: Integer; const AHint: string;
  AData: Pointer): TRect;
const
  HintAlignment: TAlignment = taLeftJustify;
  Flag: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);

begin
  Result := Rect(0, 0, MaxWidth, 0);
  DrawText(Canvas.Handle, PChar(AHint), -1, Result, DT_CALCRECT or DT_WORDBREAK
    or DT_NOPREFIX or Flag[HintAlignment] or
    DrawTextBiDiModeFlagsReadingOnly);
  Inc(Result.Right, 70);
  Inc(Result.Bottom, FBottom);
  FTextRect := Result;
  InflateRect(FTextRect, -12, -12);
end;

end.

