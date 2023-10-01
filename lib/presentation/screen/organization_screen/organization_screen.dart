import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flagger_app/domain/entity/member.dart';
import 'package:flagger_app/domain/repository/member_repository.dart';
import 'package:flagger_app/presentation/screen/organization_screen/component/team_analysis.dart';
import 'package:flagger_app/presentation/screen/organization_screen/organization_member_screen.dart';

class OrganizationScreen extends HookConsumerWidget {
  const OrganizationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.read(memberRepositoryProvider);
    final allMembersState = useState<List<MemberResponse>>([]);

    useEffect(
      () {
        Future<void> getMembers() async {
          final result = await repo.getAllMembers(0);
          allMembersState.value = result;
        }

        Future<void> getPersonalScoreData() async {
          await repo.getPersonalScoreData();
        }

        getMembers();
        getPersonalScoreData();
        return null;
      },
      const [],
    );

    return Scaffold(
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                '株式会社 Oprol',
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'チーム全体のIAPスコアの推移',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: const TeamAnalysis(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: OrganizationMemberScreen(allMembersState.value),
            ),
          ],
        ),
      ),
    );
  }
}
