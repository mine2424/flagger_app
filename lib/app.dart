import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/presentation/screen/auth_screen/sign_up_screen.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SignUpScreen(),
    );
  }
}