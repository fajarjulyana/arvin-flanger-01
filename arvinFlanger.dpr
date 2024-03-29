{$J-,H+,T-P+,X+,B-,V-,O+,A+,W-,U-,R-,I-,Q-,D-,L-,Y-,C-}
library arvinFlanger;

uses
  Forms,
  DVSTEffect,
  DVSTModule,
  flangerDM in 'src\flangerDM.pas' {FlangerDataModule: TVSTModule},
  flangerFrm in 'src\flangerFrm.pas' {flangerForm};

function main(audioMaster: TAudioMasterCallbackFunc): PVSTEffect; cdecl; export;
var
  FlangerDataModule: TFlangerDataModule;
begin
  try
    FlangerDataModule := TFlangerDataModule.Create(Application);
    FlangerDataModule.Effect^.user := FlangerDataModule;
    FlangerDataModule.AudioMaster := audioMaster;
    Result := FlangerDataModule.Effect;
  except
    Result := nil;
  end;
end;

exports Main name 'main';
exports Main name 'VSTPluginMain';

begin
end.