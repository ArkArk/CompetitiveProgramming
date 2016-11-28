import std.stdio;
import std.string;
import std.conv;
import std.typecons;
import std.algorithm;
import std.functional;
import std.bigint;
import std.numeric;
import std.array;
import std.math;
import std.range;
import std.container;
import std.ascii;
void times(alias pred)(int n) {
    foreach(i; 0..n) pred();
}
auto rep(alias pred, T = typeof(pred()))(int n) {
    T[] res = new T[n];
    foreach(ref e; res) e = pred();
    return res;
}

void main() {
  int H, W;
  readf("%d %d\n", &H, &W);
  string[][] ary = H.rep!(() => readln.split);
  foreach(i; 0..H) foreach(j; 0..W) {
    if (ary[i][j] == "snuke") {
      writeln(('A'+j).to!char, i+1);
    }
  }
}
