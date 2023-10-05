import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        _buildHeaderAvatar(),
        SizedBox(
          width: 20,
        ),
        _buildHeaderProfile(), // _ 면 private 라는 뜻
      ],
    );
  }
  //1. 이 위젯은 Cntl+C 해도 size가 안나옴.
  // Widget _buildHeaderAvatar() {
  //
  //   return CircleAvatar(
  //     backgroundImage: AssetImage("assets/avatar.png"),
  //   );
  // }
  //2. 그래서 sizedBox 로 크기를 정해줘야함
  //3. 그 결과물이 밑에꺼임

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GetinThere",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "프로그래머",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "GetinThere",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
