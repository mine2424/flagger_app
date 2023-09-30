import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/domain/repository/member_repository.dart';
import 'package:oprol_template/presentation/screen/organization_screen/organization_member_screen.dart';

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
          final result = await repo.getPersonalScoreData();
        }

        getMembers();
        getPersonalScoreData();
        return null;
      },
      const [],
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('株式会社 Oprol'),
          const Gap(20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: OrganizationMemberScreen(allMembersState.value),
          ),
        ],
      ),
    );
  }
}
