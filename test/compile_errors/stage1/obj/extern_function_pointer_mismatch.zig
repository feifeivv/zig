const fns = [_](fn(i32)i32) { a, b, c };
pub fn a(x: i32) i32 {return x + 0;}
pub fn b(x: i32) i32 {return x + 1;}
export fn c(x: i32) i32 {return x + 2;}

export fn entry() usize { return @sizeOf(@TypeOf(fns)); }

// extern function pointer mismatch
//
// tmp.zig:1:37: error: expected type 'fn(i32) i32', found 'fn(i32) callconv(.C) i32'
