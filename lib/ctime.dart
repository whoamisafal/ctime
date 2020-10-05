library ctime;

import 'dart:core';

class MSTime {
  int timestamp;
  MSTime({this.timestamp});
  // return seconds
  int getSeconds() {
    return (DateTime.now().millisecondsSinceEpoch - timestamp) % 1000;
  }

  int getMinutes() {
    return getSeconds() % 60;
  }

  int getHours() {
    return getMinutes() % 60;
  }

  int getDay() {
    return getHours() % 24;
  }

  double getWeek() {
    return getDay() / 7;
  }

  String getFormattedDate() {
    var date = DateTime.fromMicrosecondsSinceEpoch(timestamp);
    if (getSeconds() < 60) {
      return "${getSeconds().toString()} ";
    }
    if (getMinutes() < 60) {
      return "${getMinutes().toString()} min ago";
    }
    if (getHours() < 24) {
      return '${getHours().toString()} hrs ago';
    }
    if (getDay() < 7) {
      return '${getDay().toString()} day ago';
    }
    if (getDay() > 7 && getDay() < 30) {
      return '${getWeek().toString()} week ago';
    }
    return date.toString();
  }
}
