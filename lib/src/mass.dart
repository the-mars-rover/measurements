part of measurements;

/// A mass [Measurement] - for example 55.67 grams.
///
/// To create a new `Mass` object, use any of this class's factory
/// constructors.
/// For example,
/// ```dart
/// Mass heightOfEverest = Mass.fromKilograms(8.848);
/// ```
///
/// Use one of the properties, such as [inGrams], to retrieve the double value
/// of the `Mass` in the specified mass unit.
/// For example,
/// ```dart
/// Mass heightOfEverest = Mass.fromKilograms(8.848);
/// assert(heightOfEverest.inGrams == 8848.0);
/// ```
/// This class provides a collection of arithmetic
/// and comparison operators.
///
/// See [Measurement] for the collection of arithmetic and comparison operators
/// which this class provides.
class Mass extends Measurement<Mass> {
  /// A zero-valued 'Mass' constant.
  static const Mass zero = const Mass.fromGrams(0);

  static const double _nanogramsPerMicrogram = 1000;
  static const double _nanogramsPerMilligram = 1000000;
  static const double _nanogramsPerGram = 1000000000;
  static const double _nanogramsPerKilogram = 1000000000000;
  static const double _nanogramsPerMetricTonne = 1000000000000000;
  static const double _nanogramsPerOunce = 28349523125;
  static const double _nanogramsPerPound = 453592370000;
  static const double _nanogramsPerStone = 6350293180000;
  static const double _nanogramsPerImperialTonne = 1016046908800000;
  static const double _nanogramsPerUSTonne = 907184740000000;

  // Returns a new `Mass` object using baseValue as the mass in nanograms.
  @override
  Mass _getInstance(double baseValue) {
    return Mass.fromNanograms(baseValue);
  }

  /// Returns a new `Mass` object from the number of nanograms.
  const Mass.fromNanograms(double nanograms) : super(nanograms);

  /// Returns a new `Mass` object from the number of micrograms.
  const Mass.fromMicrograms(double micrograms)
      : super(micrograms * _nanogramsPerMicrogram);

  /// Returns a new `Mass` object from the number of milligrams.
  const Mass.fromMilligrams(double milligrams)
      : super(milligrams * _nanogramsPerMilligram);

  /// Returns a new `Mass` object from the number of grams.
  const Mass.fromGrams(double grams) : super(grams * _nanogramsPerGram);

  /// Returns a new `Mass` object from the number of kilograms.
  const Mass.fromKilograms(double kilograms)
      : super(kilograms * _nanogramsPerKilogram);

  /// Returns a new `Mass` object from the number of tonnes.
  const Mass.fromMetricTonnes(double tonnes)
      : super(tonnes * _nanogramsPerMetricTonne);

  /// Returns a new `Mass` object from the number of feet.
  const Mass.fromOunces(double ounces) : super(ounces * _nanogramsPerOunce);

  /// Returns a new `Mass` object from the number of pounds.
  const Mass.fromPounds(double pounds) : super(pounds * _nanogramsPerPound);

  /// Returns a new `Mass` object from the number of stones.
  const Mass.fromStones(double stones) : super(stones * _nanogramsPerStone);

  /// Returns a new `Mass` object from the number of Imperial Tonnes.
  const Mass.fromImperialTonnes(double usTonnes)
      : super(usTonnes * _nanogramsPerImperialTonne);

  /// Returns a new `Mass` object from the number of US Tonnes.
  const Mass.fromUSTonnes(double usTonnes)
      : super(usTonnes * _nanogramsPerUSTonne);

  /// Returns the total number of nanograms making up this `Mass`.
  double get inNanograms => _baseValue;

  /// Returns the total number of micrograms making up this `Mass`.
  double get inMicrograms => _baseValue / _nanogramsPerMicrogram;

  /// Returns the total number of milligrams making up this `Mass`.
  double get inMilligrams => _baseValue / _nanogramsPerMilligram;

  /// Returns the total number of grams making up this `Mass`.
  double get inGrams => _baseValue / _nanogramsPerGram;

  /// Returns the total number of kilograms making up this `Mass`.
  double get inKilograms => _baseValue / _nanogramsPerKilogram;

  /// Returns the total number of metric tonnes making up this `Mass`.
  double get inMetricTonnes => _baseValue / _nanogramsPerMetricTonne;

  /// Returns the total number of feet making up this `Mass`.
  double get inOunces => _baseValue / _nanogramsPerOunce;

  /// Returns the total number of pounds making up this `Mass`.
  double get inPounds => _baseValue / _nanogramsPerPound;

  /// Returns the total number of stones making up this `Mass`.
  double get inStones => _baseValue / _nanogramsPerStone;

  /// Returns the total number of US tonnes making up this `Mass`.
  double get inImperialTonnes => _baseValue / _nanogramsPerImperialTonne;

  /// Returns the total number of US tonnes making up this `Mass`.
  double get inUSTonnes => _baseValue / _nanogramsPerUSTonne;
}
