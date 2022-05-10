import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: flip(),
  ));
}

class flip extends StatefulWidget {
  @override
  State<flip> createState() => _flipState();
}

class _flipState extends State<flip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // ignore: prefer_const_constructors
        child: Card(
          elevation: 1,
          // margin:
          //  const EdgeInsets.only(left: 32, right: 32, top: 20, bottom: 0),
          color: Colors.white,
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            speed: 200,
            onFlipDone: (status) {
              print(status);
            },
            front: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Front',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'clica aqui para ver a parte de trás',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Back', style: Theme.of(context).textTheme.headline1),
                  Text('clica aqui para ver a frente',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
