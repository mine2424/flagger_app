import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oprol_template/domain/entity/answer.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

import 'package:oprol_template/foundation/supabase_client_provider.dart';

final memberRepositoryProvider = Provider(
  (ref) => AnswerRepository(ref.read(supabaseClientProvider)),
);

class AnswerRepository {
  AnswerRepository(this._db);

  final supabase_flutter.SupabaseClient _db;

  Future<void> createAnswer(AnswerRequest answer) async {
    try {
      await _db.from('answers').insert(answer.toJson());
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
