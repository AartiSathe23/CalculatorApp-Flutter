import 'package:calculator/Setting.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String _expression = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 344,),
              IconButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Setting()),);
              },
                  icon: Icon(Icons.settings,color: Colors.white,)
              ),
            ],
          ),
          TextField(
            controller: _controller,
            style: TextStyle(color: Colors.white, fontSize: 80),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '0',
              hintStyle: TextStyle(color: Colors.white, fontSize: 80),
              // contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
            textAlign: TextAlign.right,
            readOnly: true,
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress('AC');
                },
                child: ContainerWithText(
                  color: Colors.white,
                  text: 'AC',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('⌫');
                },
                child: ContainerWithIcon(
                  color: Colors.white,
                  icon: Icons.backspace_outlined,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('+/_');
                },
                child: ContainerWithText(
                    color: Colors.white,
                    text: '+/_',
                    fontSize: 28),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('÷');
                },
                child: ContainerWithText(
                    color: Colors.white, text: '÷', fontSize: 33),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress('7');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '7',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('8');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '8',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('9');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '9',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('×');
                },
                child: ContainerWithIcon(
                  color: Colors.white,
                  icon: Icons.clear,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress('4');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '4',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('5');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '5',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('6');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '6',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('-');
                },
                child: ContainerWithText(
                    color: Colors.white, text: '-', fontSize: 50),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress('1');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '1',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('2');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '2',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('3');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '3',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('+');
                },
                child: ContainerWithText(
                    color: Colors.white, text: '+', fontSize: 30),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  handleButtonPress('%');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '%',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('0');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '0',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('.');
                },
                child: ContainerWithText1(
                  color: Colors.grey,
                  text: '.',
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 12),
              InkWell(
                onTap: () {
                  handleButtonPress('=');
                },
                child: ContainerWithText2(
                    color: Colors.orange, text: '=', fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void handleButtonPress(String text) {
    if (text == 'AC') {
      _controller.text = '';
      _expression = '';
    } else if (text == '⌫') {
      if (_controller.text.isNotEmpty) {
        _controller.text =
            _controller.text.substring(0, _controller.text.length - 1);
        _expression = _expression.substring(0, _expression.length - 1);
      }
    } else if (text == '+/_') {
      // Handle changing sign
      if (_controller.text.isNotEmpty &&
          _controller.text[0] != '-' &&
          _controller.text != '0') {
        _controller.text = '-' + _controller.text;
        _expression = '-' + _expression;
      } else if (_controller.text.isNotEmpty &&
          _controller.text[0] == '-') {
        _controller.text = _controller.text.substring(1);
        _expression = _expression.substring(1);
      }
    }
    else if (text == '×') {
      // Handle multiplication
      _controller.text += '*'; // Use '*' for multiplication
      _expression += '*';
    } else if (text == '÷') {
      // Handle division
      _controller.text += '/'; // Use '/' for division
      _expression += '/';
    }else if (text == '=') {
      try {
        Parser p = Parser();
        Expression exp = p.parse(_expression);
        ContextModel cm = ContextModel();
        double result = exp.evaluate(EvaluationType.REAL, cm);
        _controller.text = result.toString();
        _expression = result.toString();
      } catch (e) {
        // Handle the exception, e.g., show an error message
        _controller.text = 'Error';
      }
    } else if (text == '+' || text == '-' || text == '×' || text == '÷') {
      // Handle addition, subtraction, multiplication, and division
      _controller.text += text;
      _expression += text;
    } else {
      _controller.text += text;
      _expression += text;
    }
  }
}

  class ContainerWithText extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;

  const ContainerWithText({
    required this.color,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.orange,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

class ContainerWithIcon extends StatelessWidget {
  final Color color;
  final IconData icon;

  const ContainerWithIcon({
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: color,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class ContainerWithText1 extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;

  const ContainerWithText1({
    required this.color,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

class ContainerWithText2 extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;

  const ContainerWithText2({
    required this.color,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
