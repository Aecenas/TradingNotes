List<String> parseTagsInput(String text) {
  return text
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .toSet()
      .toList();
}
