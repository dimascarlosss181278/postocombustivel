unit UnitParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmParam = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParam: TFrmParam;

implementation

uses dm;

{$R *.dfm}

procedure TFrmParam.BitBtn1Click(Sender: TObject);
begin
    If RadioGroup1.ItemIndex = 0 then begin
    showmessage('Instancia DCSS selecionada com sucesso');
    DMdados.AdoFunc.ConnectionString:='Provider=SQLOLEDB.1;Password=diegoass;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalcdcss;Data Source=dcss';
    DMdados.AdoVeic.ConnectionString:='Provider=SQLOLEDB.1;Password=diegoass;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalcdcss;Data Source=dcss';
    DMdados.AdoMapaPrev.ConnectionString:='Provider=SQLOLEDB.1;Password=diegoass;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalcdcss;Data Source=dcss';
    DMdados.AdoSaidaaba.ConnectionString:='Provider=SQLOLEDB.1;Password=diegoass;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalcdcss;Data Source=dcss';
  end
  else if RadioGroup1.ItemIndex = 1 then begin
    DMdados.AdoFunc.ConnectionString:='Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalc2;Data Source=iclu002';
    DMdados.AdoVeic.ConnectionString:='Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalc2;Data Source=iclu002';
    DMdados.AdoMapaPrev.ConnectionString:='Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalc2;Data Source=iclu002';
    DMdados.AdoSaidaaba.ConnectionString:='Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=True;User ID=sa;Initial Catalog=Biosalc2;Data Source=iclu002';
    showmessage('Instancia ICLU002 selecionada com sucesso');
  end
end;

procedure TFrmParam.BitBtn2Click(Sender: TObject);
begin
  close
end;

end.
