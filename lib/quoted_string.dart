extension QuotedString on String {
  /// Encloses the string into double quotes. Escapes the content if necessary.
  String quote() => '"${replaceAll(r'\', r'\\').replaceAll('"', r'\"')}"';

  /// Removes the quotes around the string and unescapes it.
  /// If this string is not a quoted string, returns it unchanged.
  String unquote() {
    if (length < 2 || !startsWith('"') || !endsWith('"')) return this;
    final buf = StringBuffer();
    for (var i = 1; i < length - 1; i++) {
      if (this[i] == r'\') {
        if (i > length - 3) return this;
        i++;
      }
      buf.write(this[i]);
    }
    return buf.toString();
  }
}
