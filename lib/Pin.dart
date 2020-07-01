import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './LandingPage1.dart';

class Pin extends StatelessWidget {
  Pin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(36.0, 110.0),
            child: Text(
              'Hey Demo,',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 35,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 234.0),
            child: Text(
              'Please enter your Area\n Zip/Pin Code',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(141.5, 406.5),
            child: SvgPicture.string(
              _svg_ywvbcn,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(142.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(178.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(214.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(250.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(286.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(322.0, 373.0),
            child: SizedBox(
              width: 22.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  color: const Color(0xff7f1cff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 492.0),
            child: Text(
              'Now, We can show you \nnearby outlets ',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(92.0, 685.0),
            child: Container(
              width: 192.0,
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xff7f1cff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x298742ff),
                    offset: Offset(0, 4),
                    blurRadius: 42,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(141.0, 698.0),
            child: Text(
              'Let\'s Start',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 22,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(231.0, 33.0),
            child: Container(
              width: 55.0,
              height: 55.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(27.5, 27.5)),
                color: const Color(0xcf7f1cff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 331.0),
            child: Container(
              width: 29.0,
              height: 29.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(14.5, 14.5)),
                color: const Color(0x697f1cff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(241.0, 635.0),
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(45.0, 45.0)),
                color: const Color(0x3dffffff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ywvbcn =
    '<svg viewBox="141.5 406.5 203.0 1.0" ><path transform="translate(141.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(177.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(213.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(249.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(285.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(321.5, 406.5)" d="M 0 0 L 23 0" fill="none" fill-opacity="0.3" stroke="#707070" stroke-width="2" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
