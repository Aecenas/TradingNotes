import '../../core/enums.dart';
import '../../core/result.dart';

abstract class TagRepository {
  Future<Result<List<String>>> getTagsByType(TagType type);
}
