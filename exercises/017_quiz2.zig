//
// Quiz time again! Let's see if you can solve the famous "Fizz Buzz"!
//
//     "Players take turns to count incrementally, replacing
//      any number divisible by three with the word "fizz",
//      and any number divisible by five with the word "buzz".
//          - From https://en.wikipedia.org/wiki/Fizz_buzz
//
// Let's go from 1 to 16.  This has been started for you, but there's
// some problems. :-(
//
const std = @import("std");

pub fn main() void {
    var i: u8 = 1;
    var stop_at: u8 = 16;
    var by3: bool = false;
    var by5: bool = false;

    // What kind of loop is this? A 'for' or a 'while'?
    while (i <= stop_at) : (i += 1) {
        if (i % 3 == 0) by3 = true;
        if (i % 5 == 0) by5 = true;
        if (by3 and by5) {
            std.debug.print("Fizz Buzz", .{});
            by3 = false;
            by5 = false;
        } else if (by3) {
            std.debug.print("Buzz", .{});
            by3 = false;
        } else if (by5) {
            std.debug.print("Fizz", .{});
            by5 = false;
        } else {
            std.debug.print("{}", .{i});
        }
        std.debug.print(", ", .{});
    }
    std.debug.print("\n", .{});
}
