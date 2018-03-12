program VCL_Sudoku_Ver;

uses
  Vcl.Forms,
  VCLSudokuVer2 in 'VCLSudokuVer2.pas' {Form4},
  SudokuSolver in '..\SudokuVer4\SudokuSolver.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSudokuForm, SudokuForm);
  Application.Run;
end.
