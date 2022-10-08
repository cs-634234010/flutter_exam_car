import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Grobgrab extends StatelessWidget {
  final int km;
  final int passenger;
  final Function changekm;
  final Function changepassenger;

  const Grobgrab({
    Key? key, 
    required this.km, 
    required this.passenger, 
    required this.changekm, 
    required this.changepassenger}) : 
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          'ระยะทาง ${(km * 1).toString()}  กิโลเมตร\n',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          //style: kNumberTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.blue,
                        thumbColor: Colors.blue, //Color(0xFFEB1555),
                        overlayColor: const Color.fromARGB(148, 56, 123, 255),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: km.toDouble(),
                        min: 1,
                        max: 100,
                        onChanged: (newValue) {
                          changekm(newValue);
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    'จำนวนผู้โดยสาร',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),                   
                    //style: kLabelTextStyle,
                  ),
                  Text(
                    '\n${passenger.toString()} ${((passenger > 1) ? ' คน\n' : ' คน\n')}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    //style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changepassenger(1),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: Color.fromARGB(255, 80, 109, 255),
                        child: const Icon(FontAwesomeIcons.one),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changepassenger(2),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: Color.fromARGB(255, 80, 109, 255),
                        child: const Icon(FontAwesomeIcons.two),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changepassenger(3),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: Color.fromARGB(255, 80, 109, 255),
                        child: const Icon(FontAwesomeIcons.three),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changepassenger(4),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: Color.fromARGB(255, 80, 109, 255),
                        child: const Icon(FontAwesomeIcons.four),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
