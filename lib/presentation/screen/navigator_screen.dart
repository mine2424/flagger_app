import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oprol_template/presentation/screen/home_screen.dart';
import 'package:oprol_template/presentation/screen/my_page_screen/my_page_analysis.dart';
import 'package:oprol_template/presentation/screen/org_screen/organization_screen.dart';

// enumは列挙型と呼ばれている固定数の定数値を表すために使用される
// 特別な種類のクラスです。
enum TabType { home, map, profile }
// StateProviderを使用して、enum型のTabTypeを型として使い状態管理をする。
// 初期の状態だとhomeの定数を初期値として使うので、HomeScreenが選択される。

final tabTypeProvider = StateProvider<TabType>((ref) => TabType.home);

class ScreenContainer extends ConsumerWidget {
  const ScreenContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watchで変数の状態の変化を監視する。
    final tabTypeNotifier = ref.watch(tabTypeProvider.notifier);
    final tabType = ref.watch(tabTypeProvider);

    // List型で画面遷移先のページを定義する。
    // 参考にしたコードは、final _screensと書かれていた!
    final screens = <Widget>[
      const HomeScreen(),
      const MyPageAnalysis(),
      // const OrganizationScreen(),
    ];
    return Scaffold(
      body: screens[tabType.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabType.index,
        onTap: (int selectIndex) {
          tabTypeNotifier.state = TabType.values[selectIndex];
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            label: 'my page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'teams',
          ),
        ],
      ),
    );
  }
}
