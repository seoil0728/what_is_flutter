import 'package:flutter/material.dart';
import 'package:what_is_flutter/layout/main_layout.dart';
import 'package:what_is_flutter/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;
  const RouteOneScreen({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route 1', children: [
      Text(
        'argument : $number',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => RouteTwoScreen(),
            settings: RouteSettings(
              arguments: 789,
            )
          ));
        },
        child: Text('Push : Go to Next Page'),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(321);
          },
          child: Text('Pop : Go Back to previous page')),
      _Body()
    ]);
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(''),
        const Text('pop을 통해 Argument를 전달하는 법'),
        Image.asset('asset/img/nav03.png'),
        const Text('1. pop에 인자로 돌려준다.'),
        Image.asset('asset/img/nav04.png'),
        const Text('2. 해당 Navigator로 돌아가 async와 await을 추가하여 변수로 받는다.')
      ],
    );
  }
}
