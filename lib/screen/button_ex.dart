import 'package:flutter/material.dart';

import '../constant/color_data.dart';

class ButtonEx extends StatelessWidget {
  const ButtonEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What is Button?'),
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
                _Header(),
                _Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ElevatedButton button1() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      // same with primary, version under 3.1.0
      backgroundColor: RED_COLOR,
      // same with onPrimary, version under 3.1.0
      foregroundColor: Colors.black54,
      shadowColor: GREEN_COLOR,
      elevation: 10.0,
      textStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
      side: BorderSide(
        color: Colors.black,
        width: 2.0,
      ),
    ),
    child: Text('ElevatedButton'),
  );
}

OutlinedButton button2() {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
        // same with primary, version under 3.1.0
        foregroundColor: RED_COLOR,
        backgroundColor: Color(0xFFFFF3F2),
        shadowColor: GREEN_COLOR,
        elevation: 10.0,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        )),
    child: Text('OutlinedButton'),
  );
}

TextButton button3() {
  return TextButton(
    onPressed: () {},
    child: Text('Text Button'),
  );
}

ElevatedButton button4() {
  return ElevatedButton(
    onPressed: () {},
    child: Text('ButtonStyle'),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(GREEN_COLOR),
        foregroundColor:
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.white;
          }
          return RED_COLOR;
        })),
  );
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        button1(),
        const Text('배경색이 중요할 때 사용한다.'),
        Image.asset('asset/img/btn01.png'),
        const Text('onPressed : 버튼을 누를 시 작동 함수'),
        const Text('child : 버튼 내부 (텍스트 등)'),
        const Text('style : ElevatedButton.styleFrom()을 통해 변경'),
        const Text('backgroundColor : 버튼 배경 색'),
        const Text('foregroundColor : 글자 및 애니메이션 색'),
        const Text('shadowColor : 그림자 색'),
        const Text('elevation : 3D 입체감의 높이'),
        const Text('textStyle : 버튼 내부 텍스트 스타일'),
        const Text('side : BorderSide() => 버튼 테두리 스타일'),
        const Text(''),
        button2(),
        const Text('글씨와 주 색상이 primary인 버튼'),
        const Text('background도 활용 가능하지만 권장하지 않음'),
        Image.asset('asset/img/btn02.png'),
        const Text('foregroundColor : 글자 및 애니메이션 색'),
        const Text('backgroundColor : 버튼 배경 색'),
        const Text('shadowColor : 그림자 색'),
        const Text('elevation : 3D 입체감의 높이'),
        const Text('textStyle : 버튼 내부 텍스트 스타일'),
        const Text(''),
        button3(),
        const Text('버튼 모양 없이 텍스트만 버튼으로 활용할 경우 사용'),
        Image.asset('asset/img/btn03.png'),
        const Text(''),
        const Text('사실 각 버튼들은 서로 완전히 다른 위젯이 아니라'),
        const Text('비슷한 위젯을 자주 사용하는 세 가지 형태로 분류한 것이다.'),
        const Text(''),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('ButtonStyle?'),
        button4(),
        const Text('사실 각 버튼의 스타일을 변경할 때 ButtonStyle 클래스를 통해 변경한다.'),
        const Text('이를 호출하기 위해 styleFrom 함수에서 파라미터를 통해 전달한다.'),
        const Text(''),
        Image.asset('asset/img/btn04.png'),
        const Text('직접 ButtonStyle을 호출하여 사용하는 경우.'),
        const Text('MaterialStateProperty.all : 모든 상태에서 똑같은 색을 지정.'),
        const Text('MaterialStateProperty.resolveWith : 특정 조건문에 따라 색을 지정.'),
        const Text(''),
        const Text('Material State'),
        const Text(''),
        const Text('hovered : 호버링 상태 (마우스 오버)'),
        const Text('focused : 포커스 됐을 때 (텍스트 필드)'),
        const Text('pressed : 눌렸을 때'),
        const Text('dragged : 드래그 됐을 때'),
        const Text('selected : 선택됐을 때 (체크박스, 라디오)'),
        const Text('scrollUnder : 다른 컴포넌트 밑으로 스크롤링 됐을 때'),
        const Text('disabled : 비활성화 됐을 때'),
        const Text('error : 에러상태 (텍스트필드)'),
      ],
    );
  }
}
