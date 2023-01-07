import 'package:flutter/material.dart';
import 'package:what_is_flutter/layout/main_layout.dart';
import 'package:what_is_flutter/screen/route_three_screen.dart';

class RoutePushes extends StatelessWidget {
  const RoutePushes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: '다양한 push와 pop 방식', children: [
      ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset('asset/img/push01.png'),
                  );
                });
          },
          child: Text('Navigator.of(context).pushReplacement()')),
      const Text('push시 기존 route stack에 직전 라우터를 지우고 들어간다.'),
      ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset('asset/img/push02.png'),
                  );
                });
          },
          child: Text('Navigator.of(context).pushReplacementNamed()')),
      const Text('push시 기존 route stack에 직전 라우터를 지우고 들어간다.'),
      ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset('asset/img/push03.png'),
                  );
                });
          },
          child: Text('Navigator.of(context).pushAndRemoveUntil()')),
      const Text('기존 route를 삭제하는 방법 중 하나'),
      const Text('(route) => false일 경우 전부 삭제, true는 전부 살림'),
      const Text('(route) => route.settings.name == routename'),
      const Text('pop 시 지정한 페이지만 남게됨.'),
      const Text(''),
      ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset('asset/img/pop01.png'),
                  );
                });
          } ,
          child: Text('Navigator.of(context).maybePop()')),
      const Text('pop을 할 수 없는 상태일 경우 pop을 하지 않음.'),
      ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset('asset/img/pop02.png'),
                  );
                });
          } ,
          child: Text('(android 한정) 시스템의 뒤로가기 버튼을 막기')),
      const Text(''),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop : Go Back to previous page')),
    ]);
  }
}

class _Bottons extends StatelessWidget {
  const _Bottons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => RouteThreeScreen()));
            },
            child: Text('pushReplacement')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/routename');
            },
            child: Text('pushReplacementNamed')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (_) => RouteThreeScreen(),
                ),
                (route) => false, // true
                // (route) => route.settings.name == '/'
              );
            },
            child: Text('pushReplacementNamed')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text('maybePop')),
      ],
    );
  }
}
