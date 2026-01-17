enum Language {
  ENGLISH;

  String get name => switch (this) {
    ENGLISH => 'English', // Tr
  };

  String get code => switch (this) {
    ENGLISH => 'en',
  };
}
