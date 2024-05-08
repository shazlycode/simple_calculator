import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String screenValue = "0";
  String operator = "";
  double number1 = 0, number2 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * .3,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "$screenValue",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    screenValue = "0";
                    number1 = 0;
                    number2 = 0;
                  });
                },
                child: Text(
                  "C",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey,
                onPressed: () {
                  if (screenValue.contains("-")) {
                    setState(() {
                      screenValue = screenValue.replaceFirst('-', '');
                    });
                  } else {
                    setState(() {
                      screenValue = "-$screenValue";
                    });
                  }
                },
                child: Text(
                  "+/-",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey,
                onPressed: () {
                  if (screenValue != "0") {
                    setState(() {
                      number1 = double.parse(screenValue);
                      screenValue = (number1 / 100).toString();
                    });
                  }
                },
                child: Text(
                  "%",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.amber,
                onPressed: () {
                  if (screenValue != "0") {
                    setState(() {
                      operator = "/";
                      number1 = double.parse(screenValue);
                      screenValue = "";
                    });
                  }
                },
                child: Text(
                  "÷",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "7";
                    } else {
                      screenValue += "7";
                    }
                  });
                },
                child: Text(
                  "7",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "8";
                    } else {
                      screenValue += "8";
                    }
                  });
                },
                child: Text(
                  "8",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "9";
                    } else {
                      screenValue += "9";
                    }
                  });
                },
                child: Text(
                  "9",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.amber,
                onPressed: () {
                  if (screenValue != "0") {
                    setState(() {
                      operator = "*";
                      number1 = double.parse(screenValue);
                      screenValue = "";
                    });
                  }
                },
                child: Text(
                  "×",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "4";
                    } else {
                      screenValue += "4";
                    }
                  });
                },
                child: Text(
                  "4",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "5";
                    } else {
                      screenValue += "5";
                    }
                  });
                },
                child: Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "6";
                    } else {
                      screenValue += "6";
                    }
                  });
                },
                child: Text(
                  "6",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.amber,
                onPressed: () {
                  if (screenValue != "0") {
                    setState(() {
                      operator = "-";
                      number1 = double.parse(screenValue);
                      screenValue = "";
                    });
                  }
                },
                child: Text(
                  "-",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "1";
                    } else {
                      screenValue += "1";
                    }
                  });
                },
                child: Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "2";
                    } else {
                      screenValue += "2";
                    }
                  });
                },
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "3";
                    } else {
                      screenValue += "3";
                    }
                  });
                },
                child: Text(
                  "3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.amber,
                onPressed: () {
                  if (screenValue != "0") {
                    setState(() {
                      operator = "+";
                      number1 = double.parse(screenValue);
                      screenValue = "";
                    });
                  }
                },
                child: Text(
                  "+",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                height: 80,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = "0";
                    } else {
                      screenValue += "0";
                    }
                  });
                },
                child: Text(
                  "0",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.grey[900],
                onPressed: () {
                  setState(() {
                    if (screenValue == "0") {
                      screenValue = ".";
                    } else if (screenValue.contains(".")) {
                      screenValue = screenValue;
                    } else {
                      screenValue += ".";
                    }
                  });
                },
                child: Text(
                  ".",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Colors.amber,
                onPressed: () {
                  if (operator == "+") {
                    setState(() {
                      number2 = double.parse(screenValue);
                      screenValue = (number1 + number2).toString();
                    });
                  } else if (operator == "-") {
                    setState(() {
                      number2 = double.parse(screenValue);
                      screenValue = (number1 - number2).toString();
                    });
                  } else if (operator == "*") {
                    setState(() {
                      number2 = double.parse(screenValue);
                      screenValue = (number1 * number2).toString();
                    });
                  } else if (operator == "/") {
                    setState(() {
                      number2 = double.parse(screenValue);
                      screenValue = (number1 / number2).toStringAsFixed(2);
                    });
                  }
                },
                child: Text(
                  "=",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
