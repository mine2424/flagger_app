import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

import 'package:flagger_app/domain/entity/answer.dart';
import 'package:flagger_app/domain/repository/answer_repository.dart';
import 'package:flagger_app/domain/repository/member_repository.dart';
import 'package:flagger_app/foundation/supabase_client_provider.dart';

final iatUseCaseProvider = Provider(
  (ref) => IATUseCase(
    answerRepo: ref.watch(answerRepositoryProvider),
    auth: ref.watch(supabaseAuthProvider),
    memberRepo: ref.watch(memberRepositoryProvider),
  ),
);

class IATUseCase {
  const IATUseCase({
    required this.answerRepo,
    required this.auth,
    required this.memberRepo,
  });
  final supabase_flutter.GoTrueClient auth;
  final AnswerRepository answerRepo;
  final MemberRepository memberRepo;

  Future<void> saveIATResult(double score) async {
    // TODO(mine2424): org idを取得したかった、、、
    // TODO(mine2424): event idを取得したかった、、、
    const eventId = 8;
    // member idを取得
    final uid = auth.currentUser?.id;
    if (uid == null) {
      return;
    }
    final member = await memberRepo.getMember(uid);
    // iat resultを取得 -> 保存
    await answerRepo.createAnswer(
      AnswerRequest(
        eventId: eventId,
        memberId: member.id,
        averageScore: score.round(),
      ),
    );
  }
}
