import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  ///탭바의 메뉴와 탭바의 뷰를 연동시킴
  ///얘가 어디들어갈지를 확인해봐

  //오브젝트 초기화 메서드
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    print("초기화됨");
    //length : 탭바의갯수  //vsync : 어떤걸 싱크할건가? 지금 메모리에 띄워진 this
  }

  @override
  Widget build(BuildContext context) {
    print("빌드 다시 됨");
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.directions_transit),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) =>
                    Image.network("https://picsum.photos/id/${index}/200/300"),
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
