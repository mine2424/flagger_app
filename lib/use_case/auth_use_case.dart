import 'package:flutter/widgets.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/domain/repository/member_repository.dart';
import 'package:oprol_template/foundation/supabase_client_provider.dart';

class AuthUseCase {
  static Future<void> signUpWithEmailAndPassword({
    required WidgetRef ref,
    required String email,
    required String password,
  }) async {
    final instance = ref.read(supabaseAuthProvider);
    try {
      // emailによるサインアップ
      await instance.signUp(
        email: email,
        password: password,
      );

      final repo = ref.watch(memberRepositoryProvider);
      // DBへMemberを登録
      // プロフィール作成は別途処理を行う
      await repo.createMember(
        MemberRequest(
          email: email,
          updatedAt: DateTime.now(),
          createdAt: DateTime.now(),
        ),
      );
    } on AuthException catch (e) {
      debugPrint(e.message);
      return;
    }
  }
}
