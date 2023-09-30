import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/foundation/supabase_client_provider.dart';

final memberRepositoryProvider = Provider(
  (ref) => MemberRepository(ref.read(supabaseClientProvider)),
);

class MemberRepository {
  MemberRepository(this._db);

  final supabase_flutter.SupabaseClient _db;

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

  Future<void> updateMember(MemberId id, MemberRequest member) async {
    try {
      await _db.from('members').update(member.toJson()).match({'id': id});
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}