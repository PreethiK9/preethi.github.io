# http://sis.gechassan.ac.in:9005/p/flutter

  btnPressed(String btnText) {
    if (btnText == 'CLEAR') {
      num1 = 0;
      num2 = 0;
      operand = '0';
      temp = '0';
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/') {
      num1 = int.parse(output);
      operand = btnText;
      temp = '0';
    } else if (btnText == '=') {
      num2 = int.parse(output);

      if (operand == '+') {
        temp = (num1 + num2).toString();
      }

      if (operand == '-') {
        temp = (num1 - num2).toString();
      }

      if (operand == 'x') {
        temp = (num1 * num2).toString();
      }

      if (operand == '/') {
        temp = (num1 / num2).toString();

        num1 = 0;
        num2 = 0;
        operand = '0';
      }
    } else {
      temp = temp + btnText;
    }

    setState(() {
      output = temp;
    });
  }


