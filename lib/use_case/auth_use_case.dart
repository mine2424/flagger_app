import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oprol_template/foundation/supabase_client_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthUseCase {
  //こいつの置く場所と書き方わからん
  //return受け取る系はriverpod_generatorでかけるけど
  //voidはどうすればいい?generatorでnotifier作ったら結局ややこしいしシンプルに関数書く感じでいいんかな
  static Future<void> signUp({
    required WidgetRef ref,
    required String email,
    required String password,
  }) async {
    final instance = ref.read(supabaseAuthProvider);
    try {
      await instance.signUp(
        email: email,
        password: password,
      );
    } on AuthException catch (e) {
      debugPrint(e.message);
      return;
    }
  }
}
