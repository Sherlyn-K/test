unit VCLSudokuVer2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SudokuSolver, Vcl.Menus;

type

  myEdit = Array [1 .. 9, 1 .. 9] of TEdit;
  myStringArray = SudokuSolver.myStringArray;

  TSudokuForm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    btnSolve: TButton;
    btnReset: TButton;
    ComboBox1: TComboBox;
    procedure btnResetClick(Sender: TObject);
    procedure btnSolveClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure displaySudoku(str: myStringArray);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure resetPuzzle;
    procedure fontColor;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SudokuForm: TSudokuForm;
  editArr: myEdit;
  str: myStringArray;

implementation

{$R *.dfm}

procedure TSudokuForm.btnResetClick(Sender: TObject);
begin
  resetPuzzle;
end;

procedure TSudokuForm.btnSolveClick(Sender: TObject);
var
  i, j: Integer;
begin

  for i := 1 to 9 do begin
    str[i] := '';
    for j := 1 to 9 do begin
      if editArr[i][j].Text <> '' then
        str[i] := str[i] + editArr[i][j].Text
      else
        str[i] := str[i] + '0';
    end;
  end;

  if SolveSudoku.isValid(str) then begin
    str := SolveSudoku.solve(str);
    if SolveSudoku.isSolved(str) then begin
      displaySudoku(str);
      ShowMessage('Solved!');
    end
    else begin
      str := SolveSudoku.bruteForce(str);

      if SolveSudoku.isSolved(str) then begin
        displaySudoku(str);
        ShowMessage('Solved!');
      end
      else
        ShowMessage('Unsolvable');
    end;
  end
  else begin
    ShowMessage('Invalid Puzzle!');
  end;

end;

procedure TSudokuForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: begin
        str[1] := '006054900';
        str[2] := '100060042';
        str[3] := '700089000';
        str[4] := '070005081';
        str[5] := '050340600';
        str[6] := '402000000';
        str[7] := '034000100';
        str[8] := '900800050';
        str[9] := '000400307';

        resetPuzzle;
        fontColor;
        displaySudoku(str);
      end;

    1: begin
        str[1] := '090104725';
        str[2] := '000050600';
        str[3] := '004097000';
        str[4] := '930571006';
        str[5] := '720006900';
        str[6] := '040020007';
        str[7] := '300010070';
        str[8] := '009000000';
        str[9] := '007802010';

        resetPuzzle;
        fontColor;
        displaySudoku(str);
      end;

    2: begin
        str[1] := '005968000';
        str[2] := '010045090';
        str[3] := '000100050';
        str[4] := '000000510';
        str[5] := '206050703';
        str[6] := '053000000';
        str[7] := '070003000';
        str[8] := '080720030';
        str[9] := '000594600';

        resetPuzzle;
        fontColor;
        displaySudoku(str);
      end;

    3: begin
        str[1] := '080001000';
        str[2] := '200000001';
        str[3] := '900058000';
        str[4] := '048000700';
        str[5] := '000000000';
        str[6] := '001000690';
        str[7] := '000032007';
        str[8] := '800000009';
        str[9] := '000100030';

        resetPuzzle;
        fontColor;
        displaySudoku(str);
      end;

    4: begin
        str[1] := '020000000';
        str[2] := '000600003';
        str[3] := '074080000';
        str[4] := '000003002';
        str[5] := '080040010';
        str[6] := '600500000';
        str[7] := '000010780';
        str[8] := '500009000';
        str[9] := '000000040';

        resetPuzzle;
        fontColor;
        displaySudoku(str);
      end;

  end;

end;

procedure TSudokuForm.displaySudoku(str: myStringArray);
var
  i, j: Integer;
begin
  for i := 1 to 9 do begin
    for j := 1 to 9 do begin
      if str[i][j] <> '0' then begin
        editArr[i][j].Text := str[i][j];
        editArr[i][j].ReadOnly := false;
      end;
    end;
  end;
end;

procedure TSudokuForm.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  TEdit(Sender).Font.Color := clWebDarkSlateBlue;
end;

procedure TSudokuForm.fontColor;
var
  i, j: Integer;
begin
  for i := 1 to 9 do begin
    for j := 1 to 9 do begin
      if str[i][j] <> '0' then
        editArr[i][j].Font.Color := clWebDarkSlateBlue;
    end;
  end;
end;

procedure TSudokuForm.FormActivate(Sender: TObject);
var
  i, j: Integer;

begin
  // Not Fun
  // str[1] := '020000000';
  // str[2] := '000600003';
  // str[3] := '074080000';
  // str[4] := '000003002';
  // str[5] := '080040010';
  // str[6] := '600500000';
  // str[7] := '000010780';
  // str[8] := '500009000';
  // str[9] := '000000040';

  // Expert
  // str[1] := '080001000';
  // str[2] := '200000001';
  // str[3] := '900058000';
  // str[4] := '048000700';
  // str[5] := '000000000';
  // str[6] := '001000690';
  // str[7] := '000032007';
  // str[8] := '800000009';
  // str[9] := '000100030';

  // Easy
  str[1] := '006054900';
  str[2] := '100060042';
  str[3] := '700089000';
  str[4] := '070005081';
  str[5] := '050340600';
  str[6] := '402000000';
  str[7] := '034000100';
  str[8] := '900800050';
  str[9] := '000400307';

  ComboBox1.AddItem('Easy', nil);
  ComboBox1.AddItem('Medium', nil);
  ComboBox1.AddItem('Hard', nil);
  ComboBox1.AddItem('Expert', nil);
  ComboBox1.AddItem('Not Fun', nil);

  ComboBox1.ItemIndex := 0;

  for i := 1 to 81 do begin
    editArr[(i - 1) div 9 + 1][(i - 1) mod 9 + 1] :=
      SudokuForm.FindComponent('Edit' + IntToStr(i)) as TEdit;
    if str[(i - 1) div 9 + 1][(i - 1) mod 9 + 1] <> '0' then begin
      editArr[(i - 1) div 9 + 1][(i - 1) mod 9 + 1].Font.Color :=
        clWebDarkSlateBlue;
      editArr[(i - 1) div 9 + 1][(i - 1) mod 9 + 1].ReadOnly := True;
    end;

  end;

  displaySudoku(str);

end;

procedure TSudokuForm.resetPuzzle;
var
  i, j: Integer;
begin
  for i := 1 to 9 do begin
    for j := 1 to 9 do begin
      editArr[i][j].Text := '';
      editArr[i][j].Font.Color := clBlack;
    end;
  end;
end;

end.
