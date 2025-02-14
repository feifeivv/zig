export fn entry1() i8 {
    var x: u32 = 10;
    return @truncate(i8, x);
}
export fn entry2() u8 {
    var x: i32 = -10;
    return @truncate(u8, x);
}
export fn entry3() i8 {
    comptime var x: u32 = 10;
    return @truncate(i8, x);
}
export fn entry4() u8 {
    comptime var x: i32 = -10;
    return @truncate(u8, x);
}

// truncate sign mismatch
//
// tmp.zig:3:26: error: expected signed integer type, found 'u32'
// tmp.zig:7:26: error: expected unsigned integer type, found 'i32'
// tmp.zig:11:26: error: expected signed integer type, found 'u32'
// tmp.zig:15:26: error: expected unsigned integer type, found 'i32'
