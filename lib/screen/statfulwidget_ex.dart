import 'package:flutter/material.dart';

class StatefulEx extends StatelessWidget {
  const StatefulEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What is StatefulWidget?'),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Text('Stateless는 Constructor로 생성이 되고'),
                const Text('생성이 되자마자 build 함수를 실행한다.'),
                const Text('변경이 필요하면 새로운 위젯을 만든다.'),
                const Text('하나의 StatelessWidget은 라이프 사이클 동안 단 한번만 build'),
                const Text(''),
                const Text('StatefulWidget 상태를 관리할 수 있다.'),
                const Text('즉, build 함수를 여러 번 부를 수 있다.'),
                const Text(''),
                const Text('기본 StatefulWidget 생명주기'),
                Image.asset('asset/img/stf00.png'),
                const Text('파라미터가 바뀌었을 때 생성 주기'),
                Image.asset('asset/img/stf01.png'),
                const Text(''),
                const Text('먼저 StatefulWidget이 생성된 후 파라미터가 바뀌면'),
                const Text('기존 위젯은 삭제되고 새로 생긴 Widget의 Constructor가 실행된다.'),
                const Text('createState는 실행되지 않고 기존 state를 찾는다.'),
                const Text('clean 상태에서 didUpdateWidget이 실행된다.'),
                const Text('바뀐 값을 기반으로 build가 실행된다.'),
                const Text(''),
                const Text('setState를 실행했을 때 생명 주기'),
                const Text('StatefulWidget을 생성했을 경우 실행 가능한 특별한 함수'),
                Image.asset('asset/img/stf03.png'),
                const Text(''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

