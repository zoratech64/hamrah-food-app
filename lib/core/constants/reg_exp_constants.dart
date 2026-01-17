class RegExpConstants {
  RegExpConstants._();
  static final RegExpConstants instance = RegExpConstants._();

  RegExp get fullName => RegExp(r"^[A-Za-zÀ-ÖØ-öø-ÿ ]+$");
  RegExp get email => RegExp(r"^[a-zA-Z0-9._%+-]+@gmail\.com$");
}
