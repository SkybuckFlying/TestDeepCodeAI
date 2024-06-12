program TestProgram;

{

TestProgram for DeepCode.AI

Testing if DeepCode.AI can find vunerabilities in Delphi software.

}


{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_ParameterOverrun in 'Unit_ParameterOverrun.pas',
  unit_StringReadOverrun in 'unit_StringReadOverrun.pas',
  unit_BufferOverrun in 'unit_BufferOverrun.pas';

procedure Main;
var
	TestInteger : integer;
begin
	writeln('program started');

//	ParameterOverrun( TestInteger );
	TestBufferOverrun;
	TestStringReadOverrun;

	writeln('program finished');
end;

begin
  try
	Main;
  except
	on E: Exception do
	  Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;
end.
