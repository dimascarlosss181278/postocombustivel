unit UntRestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, jpeg, Buttons;

type
  TFrmRestr = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRestr: TFrmRestr;

implementation

uses dm;

{$R *.dfm}

procedure TFrmRestr.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=chr(27) then close;
end;

procedure TFrmRestr.Image1DblClick(Sender: TObject);
begin
  DMdados.AdoQMapa.Close;
  DMdados.AdoQMapa.SQL.Clear;
  DMdados.AdoQMapa.SQL.Add('select MV.ID_MAPA,MV.CO_VEICULO, VE.NOME, ');
  DMdados.AdoQMapa.SQL.Add('MV.DT_EXECUCAO, MV.CO_PROCESSO,MV.DT_GERACAO, ');
  DMdados.AdoQMapa.SQL.Add('MV.CO_ATIVIDADE from  MV_MAPA_FROTA MV ');
  DMdados.AdoQMapa.SQL.Add(' INNER JOIN VEICULOS VE ON MV.CO_VEICULO = VE.CODIGO ');
  DMdados.AdoQMapa.SQL.Add('where (DT_EXECUCAO > GETDATE()) OR (DT_EXECUCAO IS NULL)');
  DMdados.AdoQMapa.Open;
  DMdados.AdoQMapa.ExecSQL;
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TFrmRestr.Edit1Enter(Sender: TObject);
begin
//   HintBalloon1.AddToolInfo(Handle,Edit1.Handle)
end;

procedure TFrmRestr.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmRestr.Button1Click(Sender: TObject);
begin
  DMdados.AdoQMapa.Close;
  DMdados.AdoQMapa.SQL.Clear;
  DMdados.AdoQMapa.SQL.Add('select MV.ID_MAPA,MV.CO_VEICULO, VE.NOME, ');
  DMdados.AdoQMapa.SQL.Add('MV.DT_EXECUCAO, MV.CO_PROCESSO,MV.DT_GERACAO, ');
  DMdados.AdoQMapa.SQL.Add('MV.CO_ATIVIDADE from  MV_MAPA_FROTA MV ');
  DMdados.AdoQMapa.SQL.Add(' INNER JOIN VEICULOS VE ON MV.CO_VEICULO = VE.CODIGO ');
  DMdados.AdoQMapa.SQL.Add('where (DT_EXECUCAO > GETDATE()) OR (DT_EXECUCAO IS NULL)');
  DMdados.AdoQMapa.SQL.Add(' and MV.CO_VEICULO = '+ '''' + Edit1.Text + '''' );
  DMdados.AdoQMapa.Open;
  DMdados.AdoQMapa.ExecSQL;
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TFrmRestr.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=chr(13) then begin
      if DMdados.AdoQMapa.Locate('CO_VEICULO', Edit1.TEXT, [])=TRUE then begin
         Button1.SetFocus;
      end
      else begin
         ShowMessage('Ve?culo n?o tem restri??o de abastecimento');
      end;
  end;    
end;

end.
