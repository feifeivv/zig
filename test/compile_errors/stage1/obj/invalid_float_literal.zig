const std = @import("std");

pub fn main() void {
    var bad_float :f32 = 0.0;
    bad_float = bad_float + .20;
    std.debug.assert(bad_float < 1.0);
}

// invalid float literal
//
// tmp.zig:5:29: error: expected expression, found '.'
