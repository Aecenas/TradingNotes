import 'package:drift/drift.dart';

import '../../core/app_error.dart';
import '../../core/enums.dart';
import '../../core/result.dart';
import '../../domain/repositories/tag_repository.dart';
import '../db/app_database.dart';

class TagRepositoryImpl implements TagRepository {
  TagRepositoryImpl(this._db);

  final AppDatabase _db;

  @override
  Future<Result<List<String>>> getTagsByType(TagType type) async {
    try {
      final rows =
          await (_db.select(_db.tags)
                ..where((t) => t.tagType.equals(type.dbValue))
                ..orderBy([(t) => OrderingTerm(expression: t.name)]))
              .get();
      return Result.success(rows.map((e) => e.name).toList());
    } catch (e) {
      return Result.failure(AppError(message: '加载标签失败', cause: e));
    }
  }
}
