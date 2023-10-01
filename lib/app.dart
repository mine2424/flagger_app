import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/foundation/supabase_client_provider.dart';
import 'package:oprol_template/presentation/screen/auth_screen/sign_up_screen.dart';
import 'package:oprol_template/presentation/screen/organization_screen/organization_screen.dart';
import 'package:oprol_template/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(supabaseAuthProvider);
    final memberNotifier = ref.watch(memberForAuthStatusProvider.notifier);
    final isSignIn = useState(false);

    useEffect(
      () {
        auth.onAuthStateChange.listen((event) {
          if (event.event == AuthChangeEvent.signedIn) {
            memberNotifier.state = MemberResponse(
              id: event.session?.user.id ?? '',
              email: event.session?.user.email ?? '',
            );
            isSignIn.value = true;
            return;
          } else {
            return;
          }
        });
        return null;
      },
      const [],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      home: isSignIn.value ? const OrganizationScreen() : const SignUpScreen(),
    );
  }
}
