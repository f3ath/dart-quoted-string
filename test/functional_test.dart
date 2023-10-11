import 'package:quoted_string/quoted_string.dart';
import 'package:test/test.dart';

void main() {
  group('Quoting', () {
    const cases = {
      r'"hello"\world ': r'"\"hello\"\\world "',
      r'': r'""',
      r'"': r'"\""',
      r'\': r'"\\"',
    };
    cases.forEach((unquoted, quoted) {
      test('<$unquoted> => <$quoted>', () {
        expect(unquoted.quote(), equals(quoted));
      });
    });
  });

  group('Unquoting', () {
    const cases = {
      '': '',
      'foo': 'foo',
      '"': '"',
      '""': '',
      r'"\\"': r'\',
      r'"\"': r'"\"',
      r'"\\\"': r'"\\\"',
      r'"\\\""': r'\"',
    };
    cases.forEach((quoted, unquoted) {
      test('<$quoted> => <$unquoted>', () {
        expect(quoted.unquote(), equals(unquoted));
      });
    });
  });
}
