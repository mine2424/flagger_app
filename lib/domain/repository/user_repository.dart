// import 'package:riverpod_annotation/riverpod_annotation.dart';

// @Riverpod(keepAlive: true, dependencies: [supabaseClientProvider])
// UserRepository userRepository(SupabaseClientRef ref) {
//   final db = ref.watch(supabaseClientProvider);
//   return UserRepository(db);
// }

// class UserRepository {
//   UserRepository(this._db);

//   final SupabaseClient _db;

//   Future<User> getUser(UserId id) async {
//     final response = await _db.from('users').select().eq('id', id).execute();
//     if (response.error != null) {
//       throw response.error!;
//     }
//     final data = response.data;
//     if (data == null || data.isEmpty) {
//       throw Exception('User not found');
//     }
//     return User.fromJson(data.first);
//   }

//   Future<void> updateUser(User user) async {
//     final response = await _db.from('users').update(user.toJson()).eq('id', user.id).execute();
//     if (response.error != null) {
//       throw response.error!;
//     }
//   }
// }
