unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  r: integer;
  g: integer;
  b: integer;
  hexclr: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  r := TrackBar1.Position;
  g := TrackBar2.Position;
  b := TrackBar3.Position;

  Image1.Canvas.Brush.Color:=RGBToColor(r,g,b);
  Image1.Canvas.Brush.Style:=bsSolid;
  Image1.Canvas.Clear;
  Image1.Canvas.Clear;

  hexclr := RGBToHex(r,g,b);
  Form1.Caption := 'ColorSliders - ' +hexclr;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  r := TrackBar1.Position;
  g := TrackBar2.Position;
  b := TrackBar3.Position;

  Image1.Canvas.Brush.Color:=RGBToColor(r,g,b);
  Image1.Canvas.Brush.Style:=bsSolid;
  Image1.Canvas.Clear;
  Image1.Canvas.Clear;

  hexclr := RGBToHex(r,g,b);
  Form1.Caption := 'ColorSliders - ' +hexclr;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
  r := TrackBar1.Position;
  g := TrackBar2.Position;
  b := TrackBar3.Position;

  Image1.Canvas.Brush.Color:=RGBToColor(r,g,b);
  Image1.Canvas.Brush.Style:=bsSolid;
  Image1.Canvas.Clear;
  Image1.Canvas.Clear;
end;

end.

