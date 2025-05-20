unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs;

type
  TfrmMain = class(TForm)
    procedure FormPaint(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormPaint(Sender: TObject);
begin
  // 배경 지우기
  Canvas.Brush.Color := clWhite;
  Canvas.FillRect(ClientRect);

  // 선 그리기
  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Width := 2;
  Canvas.MoveTo(20, 20);
  Canvas.LineTo(120, 20);

  Canvas.Pen.Style := psDash;
  Canvas.MoveTo(20, 40);
  Canvas.LineTo(120, 40);

  Canvas.Pen.Style := psDot;
  Canvas.MoveTo(20, 60);
  Canvas.LineTo(120, 60);

  // 사각형 그리기
  Canvas.Pen.Style := psSolid;
  Canvas.Brush.Color := clLime;
  Canvas.Rectangle(150, 20, 250, 70);

  Canvas.Brush.Style := bsClear;
  Canvas.Rectangle(280, 20, 380, 70);

  Canvas.Brush.Style := bsCross;
  Canvas.Brush.Color := clAqua;
  Canvas.Rectangle(410, 20, 510, 70);

  // 원 그리기
  Canvas.Pen.Color := clRed;
  Canvas.Brush.Style := bsSolid;
  Canvas.Brush.Color := clYellow;
  Canvas.Ellipse(20, 100, 120, 200);

  Canvas.Brush.Style := bsFDiagonal;
  Canvas.Brush.Color := clFuchsia;
  Canvas.Ellipse(150, 100, 250, 200);

  // 텍스트 출력
  Canvas.Brush.Style := bsClear;
  Canvas.Font.Name := 'Arial';
  Canvas.Font.Size := 12;
  Canvas.Font.Color := clNavy;
  Canvas.TextOut(280, 130, '일반 텍스트');

  Canvas.Font.Style := [fsBold];
  Canvas.TextOut(280, 150, '굵은 텍스트');

  Canvas.Font.Style := [fsItalic];
  Canvas.TextOut(280, 170, '기울임 텍스트');

  Canvas.Font.Style := [fsBold, fsUnderline];
  Canvas.TextOut(410, 130, '굵고 밑줄있는 텍스트');

  Canvas.Font.Style := [];
  Canvas.Font.Size := 16;
  Canvas.Brush.Style := bsSolid;
  Canvas.Brush.Color := clYellow;
  Canvas.TextOut(410, 170, '배경있는 텍스트');

  // 추가적인 그래픽
  Canvas.Pen.Width := 3;
  Canvas.Pen.Color := RGB(128, 0, 128); // 보라색
  Canvas.RoundRect(20, 230, 120, 330, 30, 30);

  // 다각형 그리기
  Canvas.Pen.Color := clOlive;
  Canvas.Brush.Color := clMoneyGreen;
  var Points: array of TPoint;
  SetLength(Points, 5);
  Points[0] := Point(200, 250);
  Points[1] := Point(250, 230);
  Points[2] := Point(300, 250);
  Points[3] := Point(275, 330);
  Points[4] := Point(225, 330);
  Canvas.Polygon(Points);
end;

end.
