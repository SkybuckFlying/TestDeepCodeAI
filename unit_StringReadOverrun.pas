unit unit_StringReadOverrun;

interface

procedure TestStringReadOverrun;

implementation

procedure TestStringReadOverrun;
var
  s: String;
  i: Integer;
begin
  s:= 'four';  // Length of string: 4 characters
  for i:= 1 to 1138 do begin  // This loop goes WAY beyond the String's buffer
	write( s[i] );  // What will it access after i=4?
  end;
end;

end.
