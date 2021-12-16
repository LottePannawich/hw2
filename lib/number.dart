import 'dart:io';
import 'dart:math';





void main() {
  var i = 0;
  int sum=0;
  var guess;
  var r = new Random();
  var answer = r.nextInt(100);
  print(' ตัวอย่างผลเฉลย '+answer.toString());
  print("╔══════════════════════════════════════");
  print("╟             Let Play!!!");
  print("╟──────────────────────────────────────");
  do {

    stdout.write('╟กรุณาใส่่ตัวเลข1ถึง100 ➜ ');
    var input = stdin.readLineSync();

    guess = int.tryParse(input!);
    if(guess==null) {

    }else {
      if (guess == answer) {
        sum++;

        print("╟    " + "ถูกต้อง!!" + "   ");
        print("╟  คุณคือผู้ชนะ!!!");
        print("╟❤❤❤คุณทายไปทั้งหมด " + sum.toString() + " ครั้ง❤❤❤");
        print("╟──────────────────────────────────────");
        print("╟     ❤❤❤   BYE BYE BYE   ❤❤❤   ");
        print("╚══════════════════════════════════════");

        break;
      }
      if (guess < answer) {
        print('╟➜ '+input + ' น้อยเกินไป กรุณาใส่เลขที่มากกว่านี้ ▲');
        sum++;
        print("╟──────────────────────────────────────");
      }
      if (guess > answer) {
        print('╟➜ '+input + ' มากเกินไป กรุณาใส่เลขที่น้อยกว่านี้ ▼');
        sum++;
        print("╟──────────────────────────────────────");
      }
    }
  }while(true);

}