unit unit_BufferOverrun;

interface

procedure TestBufferOverrun;

implementation

procedure TestBufferOverrun;
var
  buf: array[0..0] of Byte;
  i: Integer;
begin
  Move(buf, i, sizeof(i)); // buffer overflow!
  PInteger(@buf)^ := i;    // buffer overflow!
  writeln(buf[0]);
end;

end.
