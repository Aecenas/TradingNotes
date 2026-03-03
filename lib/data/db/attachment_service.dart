import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class AttachmentService {
  const AttachmentService();

  static const _attachmentDir = 'attachments';

  Future<String> saveImageFile({
    required String sourcePath,
    required String originalName,
  }) async {
    final baseDir = await getApplicationDocumentsDirectory();
    final targetDir = Directory(p.join(baseDir.path, _attachmentDir));
    if (!targetDir.existsSync()) {
      targetDir.createSync(recursive: true);
    }

    final extension = p.extension(originalName).toLowerCase();
    final now = DateTime.now().microsecondsSinceEpoch;
    final digest = sha256
        .convert('$sourcePath|$now|$originalName'.codeUnits)
        .toString();
    final fileName = '$digest$extension';
    final targetPath = p.join(targetDir.path, fileName);

    await File(sourcePath).copy(targetPath);
    return p.join(_attachmentDir, fileName);
  }

  Future<void> deleteByRelativePath(String relativePath) async {
    final absolutePath = await resolveAbsolutePath(relativePath);
    final file = File(absolutePath);
    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<void> deleteMany(Iterable<String> relativePaths) async {
    for (final path in relativePaths) {
      await deleteByRelativePath(path);
    }
  }

  Future<String> resolveAbsolutePath(String relativePath) async {
    final baseDir = await getApplicationDocumentsDirectory();
    return p.join(baseDir.path, relativePath);
  }
}
