import 'package:quoted_string/quoted_string.dart';

void main() {
  // "Quote (\") and backslash (\\)"
  print(r'Quote (") and backslash (\)'.quote());

  // Quote (") and backslash (\)
  print(r'"Quote (\") and backslash (\\)"'.unquote());
}
