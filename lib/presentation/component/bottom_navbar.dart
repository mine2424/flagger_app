import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TabType { home, map, profile }

final tabTypeProvider = StateProvider<TabType>((ref) => TabType.home);
