import 'package:flutter/material.dart';
import 'package:learn_english/value/app_assets.dart';
import 'package:learn_english/value/app_colors.dart';
import 'package:learn_english/value/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 2;
  _onItemTap(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _navigationBottom(_selectIndex, _onItemTap),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          'Hello Nguyễn Văn Thành,\n'
                          'Bạn đã tích lũy được',
                          style: AppStyle.h5.copyWith(color: Colors.black),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                          child: Text(
                        '1500 từ',
                        style: AppStyle.h4.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.lighGrey, width: 1),
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(flex: 1, child: Image.asset(ImagePath.leaf)),
                        Expanded(
                            flex: 1,
                            child: Text('0',
                                style:
                                    AppStyle.h5.copyWith(color: Colors.black))),
                        Expanded(
                            flex: 1,
                            child: Text('Từ mới học',
                                style:
                                    AppStyle.h5.copyWith(color: Colors.black))),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: AppColor.lighGrey, width: 1),
                              right: BorderSide(
                                  color: AppColor.lighGrey, width: 1))),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1, child: Image.asset(ImagePath.bough)),
                          Expanded(
                              flex: 1,
                              child: Text('0',
                                  style: AppStyle.h5
                                      .copyWith(color: Colors.black))),
                          Expanded(
                              flex: 1,
                              child: Text('Từ đang học',
                                  style: AppStyle.h5
                                      .copyWith(color: Colors.black))),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(flex: 1, child: Image.asset(ImagePath.tree)),
                        Expanded(
                            flex: 1,
                            child: Text('0',
                                style:
                                    AppStyle.h5.copyWith(color: Colors.black))),
                        Expanded(
                            flex: 1,
                            child: Text('Từ đã thuộc',
                                style:
                                    AppStyle.h5.copyWith(color: Colors.black))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [Color(0xfff7b03b), Color(0xfffbd135)]),
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        children: [
                          Text(
                            'Giờ học đã đến ',
                            style: AppStyle.h6.copyWith(fontSize: 12),
                          ),
                          const Icon(
                            Icons.info,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ôn tập ngay để\nghi nhớ từ',
                        style: AppStyle.h4.copyWith(fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.orangeRed,
                                  foregroundColor: Colors.white,
                                  elevation: 10),
                              onPressed: () {},
                              child: Text(
                                'Ôn tập',
                                style: AppStyle.h5
                                    .copyWith(fontWeight: FontWeight.bold),
                              )),
                          Image.asset(
                            ImagePath.magnifier,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                ),
              )),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }

  // Navigation bottom
  Widget _navigationBottom(int selectIndex, Function(int) onTap) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.record_voice_over),label: 'Pronounce'),
      BottomNavigationBarItem(icon: Icon(Icons.auto_stories),label: 'Collection'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting')
    ],
    onTap: onTap,
    currentIndex: selectIndex,
    selectedItemColor: AppColor.primaryColor,
    unselectedItemColor: Colors.grey,);
  }
}
