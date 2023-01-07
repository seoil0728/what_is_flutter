import 'package:flutter/material.dart';
import 'package:what_is_flutter/layout/main_layout.dart';
import 'package:what_is_flutter/screen/route_one_screen.dart';

class NavigationEx extends StatelessWidget {
  const NavigationEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'What is Navigation?', children: [
      ElevatedButton(onPressed: () async {
        final result = await Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => RouteOneScreen(number: 123,))
        );
        print(result);
      },
          child: Text('Push : Go to Next Page')),

      _Body(),
    ]
    );
  }
}


class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(''),
        const Text('Push를 통해 Argument 전달하기'),
        Image.asset('asset/img/nav01.png'),
        const Text('1. Argument를 받을 위젯에 변수 설정'),
        Image.asset('asset/img/nav02.png'),
        const Text('2. Navigator를 통해 호출 시 인자로 설정')
      ],
    );
  }
}

