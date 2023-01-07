import 'package:flutter/material.dart';
import 'package:what_is_flutter/layout/main_layout.dart';
import 'package:what_is_flutter/screen/route_other_push.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route 3', children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => RoutePushes(),
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
        const Text('Named Route : URL처럼 지정하는 방식'),
        const Text('main.dart를 수정해야 한다.'),
        Image.asset('asset/img/nav07.png'),
        const Text('void main()을 수정해 준 모습'),
        const Text('route를 넣어줘 각 스크린 별로 이름을 지정해준다.'),
        const Text('처음 표시할 화면이 지정되지 않았으므로 initialRoute를 통해 지정.'),
        Image.asset('asset/img/nav08.png'),
        const Text('push : parameter로 Route를 넣어줘야 한다.'),
        const Text('pushNamed : parameter로 String타입의 Route 이름을 지정'),
        const Text(''),
        const Text('argument를 전달하고 싶을 때'),
        Image.asset('asset/img/nav09.png'),
        const Text('pushNamed에 argument를 직접 넣어줄 수 있음.'),
        const Text('받는 방식은 settings로 전달하는 것과 동일.'),
        const Text('이 외에도, route의 이름에 직접 인자를 넣는 방식도 존재한다.')
      ],
    );
  }
}
