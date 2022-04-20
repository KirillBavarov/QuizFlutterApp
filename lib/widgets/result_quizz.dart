import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result ({Key? key,
  required this.count,
    required this.total,
    required this.onClearState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Dark side\n dont for your';
      img = BoxDecoration(
          image: DecorationImage (
            image: Image.network('https://i.ytimg.com/vi/iCgEVq51QCU/maxresdefault.jpg').image,
            fit: BoxFit.cover,
          )
      ) as Widget;
    } else if ((4 <= count && count <= 7)) {
      msg = 'the dark side is near';
      img = BoxDecoration(
          image: DecorationImage (
            image: Image.network('https://i.ytimg.com/vi/K6k3ZKQKzBo/maxresdefault.jpg').image,
            fit: BoxFit.cover,
          )
      ) as Widget;
    } else {
      msg = 'the dark side welcomes you';
      img = BoxDecoration(
          image: DecorationImage (
            image: Image.network('https://animemotivation.com/wp-content/uploads/2018/01/anime-girl-dark-side-crazy-creepy.jpg').image,
            fit: BoxFit.cover,
          )
      ) as Widget;
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0, ),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient (
          colors: [
            Color(0xFF55337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget> [
          Container(
            width: 120,
              height: 120,
              child: FittedBox(
                fit: BoxFit.contain,
                child: img,
              ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),
          
         FlatButton(
             onPressed: onClearState(),
             child: Text(
               'Repeat'
             ),
         ),
        ],
      ),
    );
  }
}