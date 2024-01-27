unit flangerFrm;

interface

uses 
  Windows, Messages, SysUtils, Classes, Forms, DAVDCommon, DVSTModule,
  cDIBControl, cDIBImage, cDIBImageList, Controls, ExtCtrls, cDIBPanel,
  cDIBKnob;

type
  TflangerForm = class(TForm)
    DIBContainer1: TDIBContainer;
    DIBImageList1: TDIBImageList;
    DIBImage1: TDIBImage;
    DIBKnob1: TDIBKnob;
    DIBImageList2: TDIBImageList;
    DIBKnob2: TDIBKnob;
    procedure DIBKnob1Change(Sender: TObject);
    procedure DIBKnob2Change(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TflangerForm.DIBKnob1Change(Sender: TObject);
begin
DIBKnob1.IndexMain.DIBIndex := DIBKnob1.Position;
end;

procedure TflangerForm.DIBKnob2Change(Sender: TObject);
begin
DIBKnob2.IndexMain.DIBIndex := DIBKnob2.Position;
end;

end.