import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

import 'package:flagger_app/domain/entity/answer.dart';
import 'package:flagger_app/foundation/supabase_client_provider.dart';

final answerRepositoryProvider = Provider(
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
