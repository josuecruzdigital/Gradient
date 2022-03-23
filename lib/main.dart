import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gradient'), backgroundColor: const Color(0xFF6FB2D2)),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 16.0),
          Text('Lineal Horizontal', style: Theme.of(context).textTheme.headline6),
          _linearHorizontal(),
          const SizedBox(height: 16.0),
          Text('Lineal Vertical', style: Theme.of(context).textTheme.headline6),
          _linearVertical(),
          const SizedBox(height: 16.0),
          Text('Lineal Diagonal', style: Theme.of(context).textTheme.headline6),
          _linearDiagonal(),
          const SizedBox(height: 16.0),
          Text('Lineal Con Paradas', style: Theme.of(context).textTheme.headline6),
          _linearStop(),
          const SizedBox(height: 16.0),
          Text('Radial', style: Theme.of(context).textTheme.headline6),
          _radialSimple(),
          const SizedBox(height: 16.0),
          Text('Radial Center', style: Theme.of(context).textTheme.headline6),
          _radialCenter(),
          const SizedBox(height: 16.0),
          Text('Radial Radio', style: Theme.of(context).textTheme.headline6),
          _radialRadius(),
        ],
      ),
    );
  }

  Widget _linearHorizontal() {
    return Container(
      height: 128.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }

  Widget _linearVertical() {
    return Container(
      height: 256.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }

  Widget _linearDiagonal() {
    return Container(
      height: 256.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment(0.25, 0.75),
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }

  Widget _linearStop() {
    return Container(
      height: 128.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          Color(0xFFFFE162),
          Color(0xFF6FB2D2),
          Color(0xFFEEEEEE),
          Color(0xFF91C483),
        ], stops: [
          0.12,
          0.37,
          0.54,
          0.86
        ]),
      ),
    );
  }

  Widget _radialSimple() {
    return Container(
      height: 256.0,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }

  Widget _radialCenter() {
    return Container(
      height: 256.0,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }

  Widget _radialRadius() {
    return Container(
      height: 256.0,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 0.75,
          colors: <Color>[
            Color(0xFFFFE162),
            Color(0xFF6FB2D2),
          ],
        ),
      ),
    );
  }
}
