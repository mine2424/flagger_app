import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/foundation/supabase_client_provider.dart';

final memberRepositoryProvider = Provider(
  (ref) => MemberRepository(
    ref.read(supabaseClientProvider),
    ref.read(supabaseAuthProvider),
  ),
);

class MemberRepository {
  MemberRepository(this._db, this._auth);

  final supabase_flutter.SupabaseClient _db;
  final supabase_flutter.GoTrueClient _auth;

  // TODO(username): currentUserを保存しとく.

  Future<void> createMember(MemberRequest member) async {
    try {
      await _db.from('members').insert(member.toJson());
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<List<MemberResponse>> getMember(MemberId id) async {
    try {
      final response = await _db
          .from('members')
          .select<supabase_flutter.PostgrestList>(
            'id, username, email, organization_id',
          )
          .eq('id', id);
      return response.map(MemberResponse.fromJson).toList();
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<List<MemberResponse>> getAllMembers(int id) async {
    try {
      final response = await _db
          .from('members')
          .select<supabase_flutter.PostgrestList>(
            'id, username, email, organization_id',
          )
          .eq('organization_id', id);
      return response.map(MemberResponse.fromJson).toList();
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> updateMember(MemberId id, MemberRequest member) async {
    try {
      await _db.from('members').update(member.toJson()).match({'id': id});
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<supabase_flutter.PostgrestList> getPersonalScoreData() async {
    try {
      final scoreData =
          await _db.from('answers').select<supabase_flutter.PostgrestList>(
                'average_score, events ( event_date )',
              );
      print(scoreData);

      return scoreData;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
