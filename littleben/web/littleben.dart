import 'dart:html';
import 'package:web_ui/web_ui.dart';

String currentTime;

void main() {
  DateTime today = new DateTime.now();
  currentTime = formatTime(today.hour, today.minute, today.second) ;
  currentTime = "[[{$currentTime}]]";
}

String formatTime(int h, int m, int s) {
  if (h > 12) { h = h - 12; }
  String minute = (m <= 9) ? '0$m' : '$m';
  String second = (s <= 9) ? '0$s' : '$s';
  return '$h:$minute:$second';
}