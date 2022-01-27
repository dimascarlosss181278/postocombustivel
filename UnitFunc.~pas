unit UnitFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids, dllcompanytec, DBGrids, DBCtrls,
  Buttons;

type
  TFunc = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Func: TFunc;

implementation

uses dm;

{$R *.dfm}

procedure TFunc.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFunc.Image1DblClick(Sender: TObject);
begin
 DMdados.ADOQSRA010.SQL.Add('select F.CODIGO, F.NOME, F.FUNCAO ');
 DMdados.ADOQSRA010.SQL.Add(' FROM FUNC F WHERE (F.DATA_DEMISSAO >= ');
 DMdados.ADOQSRA010.SQL.Add('GETDATE() OR F.DATA_DEMISSAO IS NULL');
 DMdados.ADOQSRA010.SQL.Add(' AND F.ATIVO=1 AND ')


{  Select F.CODIGO, F.NOME,F.FUNCAO
FROM FUNC F
WHERE
(F.DATA_DEMISSAO >= GETDATE() OR  F.DATA_DEMISSAO IS NULL)
AND F.ATIVO=1 and f.codigo=:codigo}

end;

end.
