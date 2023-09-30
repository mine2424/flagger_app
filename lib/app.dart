import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/presentation/screen/iat_test_screen/iat_test_screen.dart';
import 'package:oprol_template/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      home: IATTestScreen(),
    );
  }
}
