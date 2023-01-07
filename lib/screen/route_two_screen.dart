import 'package:flutter/material.dart';
import 'package:what_is_flutter/layout/main_layout.dart';
import 'package:what_is_flutter/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(title: 'Route 2', children: [
      Text('arguments : $arguments', textAlign: TextAlign.center,),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => RouteThreeScreen(),
              )
          );
        },
        child: Text('Push : Go to Next Page'),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop : Go Back to previous page')),
      _Body(),
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
        const Text('Push로 Argument를 전달하는 두 번째 방법'),
        Image.asset('asset/img/nav05.png'),
        const Text('1. MaterialPageRoute 인자에 settings 추가.'),
        const Text('2. RouteSettings()를 넣어 arguments에 전달.'),
        Image.asset('asset/img/nav06.png'),
        const Text('3. Push받는 페이지에서 다음과 같이 선언하여 받는다.'),
        const Text('4. ModalRoute.of(context)에 ! 가 있는 이유는'),
        const Text('원래는 argument가 null일 경우가 존재하지만'),
        const Text('이번 문제에선 null로 넘어올 일이 없으므로 !로 null이 아님을 명시')
      ],
    );
  }
}
