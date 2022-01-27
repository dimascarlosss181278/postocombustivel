program Posto;

uses
  Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UnitAbastece in 'UnitAbastece.pas' {FrmAbastece},
  dllcompanytec in 'DLL\dllcompanytec.pas',
  UntConect in 'UntConect.pas' {FrmConeccao},
  dm in 'dm.pas' {DMdados: TDataModule},
  UntRestr in 'UntRestr.pas' {FrmRestr},
  Comprov in 'Comprov.pas' {ComprovAb},
  UnitParam in 'UnitParam.pas' {FrmParam},
  UnitFunc in 'UnitFunc.pas' {Func},
  UnitCVeic in 'UnitCVeic.pas' {FrmCVeic},
  UnitCMotor in 'UnitCMotor.pas' {FrmCMot},
  UnitCSetor in 'UnitCSetor.pas' {FrmCSetor},
  UnitCFaz in 'UnitCFaz.pas' {FrmCFaz},
  UnitCCcusto in 'UnitCCcusto.pas' {FrmCCcusto},
  UnitParaG in 'UnitParaG.pas' {FrmParaG},
  UnitCAtiv in 'UnitCAtiv.pas' {FrmCAtiv},
  UnitMAbast in 'UnitMAbast.pas' {FrmMAbast};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmAbastece, FrmAbastece);
  Application.CreateForm(TFrmConeccao, FrmConeccao);
  Application.CreateForm(TDMdados, DMdados);
  Application.CreateForm(TFrmRestr, FrmRestr);
  Application.CreateForm(TComprovAb, ComprovAb);
  Application.CreateForm(TFrmParam, FrmParam);
  Application.CreateForm(TFunc, Func);
  Application.CreateForm(TFrmCVeic, FrmCVeic);
  Application.CreateForm(TFrmCMot, FrmCMot);
  Application.CreateForm(TFrmCSetor, FrmCSetor);
  Application.CreateForm(TFrmCFaz, FrmCFaz);
  Application.CreateForm(TFrmCCcusto, FrmCCcusto);
  Application.CreateForm(TFrmParaG, FrmParaG);
  Application.CreateForm(TFrmCAtiv, FrmCAtiv);
  Application.CreateForm(TFrmMAbast, FrmMAbast);
  Application.Run;
end.
