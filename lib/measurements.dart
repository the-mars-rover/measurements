library measurements;

/// Base class used by types that represent forms of measurement.
///
/// This class provides all `Measurement` subclasses with a collection of
/// arithmetic and comparison operators.
///
/// See also:
/// [Length], for measurements of length.
/// [Mass], for measurements of weight.
abstract class Measurement<T extends Measurement<T>> implements Comparable<T> {
  // Represents the value of this measurement in the smallest possible units.
  // It is used for the implementation of all arithmetic and comparison operators.
  final double _baseValue;

  // Called by subclasses to instantiate _baseValue
  const Measurement(this._baseValue);

  // The abstract factory method that must be implemented by all subclasses.
  T _getInstance(double baseValue);

  /// Adds this `Measurement` and [other] and
  /// returns the sum as a new object of [T].
  T operator +(T other) => _getInstance(_baseValue + other._baseValue);

  /// Subtracts [other] from this `Measurement` and
  /// returns the difference as a new object of [T].
  T operator -(T other) => _getInstance(_baseValue - other._baseValue);

  /// Multiples this `Measurement` by [other] and
  /// returns the result as a new object of [T].
  T operator *(T other) => _getInstance(_baseValue * other._baseValue);

  /// Divides this `Measurement` by [other] and
  /// returns the result as a new object of [T].
  T operator /(T other) => _getInstance(_baseValue / other._baseValue);

  /// Returns a new object of [T] representing this `Measurement` negated.
  ///
  /// The returned `Measurement` has the same length as this one, but will have the
  /// opposite sign of this one.
  T operator -() => _getInstance(0 - _baseValue);

  /// Returns `true` if the value of this `Measurement`
  /// is less than the value of [other].
  bool operator <(T other) => _baseValue < other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is greater than the value of [other].
  bool operator >(T other) => _baseValue > other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is less than or equal to the value of [other].
  bool operator <=(T other) => _baseValue <= other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is greater than or equal to the value of [other].
  bool operator >=(T other) => _baseValue >= other._baseValue;

  /// Returns `true` if this [Measurement] has the same value as [other].
  @override
  bool operator ==(dynamic other) =>
      other is T && (_baseValue - other._baseValue) < 0.0000001;

  @override
  int get hashCode => _baseValue.hashCode;

  /// Compares this `Measurement` to [other], returning zero if the values are
  /// equal.
  ///
  /// Returns a negative integer if this `Measurement` is less than
  /// [other], or a positive integer if it is greater.
  ///
  /// A negative `Measurement` is always considered shorter than a positive one.
  ///
  /// It is always the case that `measurement1.compareTo(measurement2) < 0` iff
  /// `(someMeasurement + measurement1).compareTo(someMeasurement + measurement2) < 0`.
  @override
  int compareTo(T other) => _baseValue.compareTo(other._baseValue);

  /// Returns a new object of [T] representing the absolute value of this
  /// `Measurement`.
  ///
  /// The returned object has the same base value as this one, but is always
  /// positive.
  T abs() => _getInstance(_baseValue.abs());

  /// Returns whether this `Measurement` is negative.
  bool get isNegative => _baseValue < 0;
}

/// A length [Measurement] - for example 55.67 metres.
///
/// To create a new `Length` object, use any of this class's factory
/// constructors.
/// For example,
/// ```dart
/// Length heightOfEverest = Length.fromKilometres(8.848);
/// ```
///
/// Use one of the properties, such as [inMetres], to retrieve the double value
/// of the `Length` in the specified length unit.
/// For example,
/// ```dart
/// Length heightOfEverest = Length.fromKilometres(8.848);
/// assert(heightOfEverest.inMetres == 8848.0);
/// ```
/// This class provides a collection of arithmetic
/// and comparison operators.
///
/// See [Measurement] for the collection of arithmetic and comparison operators
/// which this class provides.
class Length extends Measurement<Length> {
  static const double _nanometresPerMicrometre = 1000;
  static const double _nanometresPerMillimetre = 1000000;
  static const double _nanometresPerCentimetre = 10000000;
  static const double _nanometresPerMetre = 1000000000;
  static const double _nanometresPerKilometre = 1000000000000;
  static const double _nanometresPerInch = 25400000;
  static const double _nanometresPerFoot = 304800000;
  static const double _nanometresPerYard = 914400000;
  static const double _nanometresPerMile = 1609344000000;
  static const double _nanometresPerNauticalMile = 1852000000000;

  // Returns a new `Length` object using baseValue as the length in nanometres.
  @override
  Length _getInstance(double baseValue) {
    return Length.fromNanometres(baseValue);
  }

  /// Returns a new `Length` object from the number of nanometres.
  const Length.fromNanometres(double nanometres) : super(nanometres);

  /// Returns a new `Length` object from the number of nanometres.
  const Length.fromMicrometres(double micrometres)
      : super(micrometres * _nanometresPerMicrometre);

  /// Returns a new `Length` object from the number of millimetres.
  const Length.fromMillimetres(double millimetres)
      : super(millimetres * _nanometresPerMillimetre);

  /// Returns a new `Length` object from the number of centimetres.
  const Length.fromCentimetres(double centimetres)
      : super(centimetres * _nanometresPerCentimetre);

  /// Returns a new `Length` object from the number of metres.
  const Length.fromMetres(double metres) : super(metres * _nanometresPerMetre);

  /// Returns a new `Length` object from the number of kilometres.
  const Length.fromKilometres(double kilometres)
      : super(kilometres * _nanometresPerKilometre);

  /// Returns a new `Length` object from the number of inches.
  const Length.fromInches(double inches) : super(inches * _nanometresPerInch);

  /// Returns a new `Length` object from the number of feet.
  const Length.fromFeet(double feet) : super(feet * _nanometresPerFoot);

  /// Returns a new `Length` object from the number of yards.
  const Length.fromYards(double yards) : super(yards * _nanometresPerYard);

  /// Returns a new `Length` object from the number of miles.
  const Length.fromMiles(double miles) : super(miles * _nanometresPerMile);

  /// Returns a new `Length` object from the number of nautical miles.
  const Length.fromNauticalMiles(double nauticalMiles)
      : super(nauticalMiles * _nanometresPerNauticalMile);

  /// Returns the total number of nanometres making up this `Length`.
  double get inNanometres => _baseValue;

  /// Returns the total number of micrometres making up this `Length`.
  double get inMicrometres => _baseValue / _nanometresPerMicrometre;

  /// Returns the total number of millimetres making up this `Length`.
  double get inMillimetres => _baseValue / _nanometresPerMillimetre;

  /// Returns the total number of centimetres making up this `Length`.
  double get inCentimetres => _baseValue / _nanometresPerCentimetre;

  /// Returns the total number of metres making up this `Length`.
  double get inMetres => _baseValue / _nanometresPerMetre;

  /// Returns the total number of kilometres making up this `Length`.
  double get inKilometres => _baseValue / _nanometresPerKilometre;

  /// Returns the total number of inches making up this `Length`.
  double get inInches => _baseValue / _nanometresPerInch;

  /// Returns the total number of feet making up this `Length`.
  double get inFeet => _baseValue / _nanometresPerFoot;

  /// Returns the total number of yards making up this `Length`.
  double get inYards => _baseValue / _nanometresPerYard;

  /// Returns the total number of miles making up this `Length`.
  double get inMiles => _baseValue / _nanometresPerMile;

  /// Returns the total number of nautical miles making up this `Length`.
  double get inNauticalMiles => _baseValue / _nanometresPerNauticalMile;
}

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
  static const double _microgramsPerMilligram = 1000;
  static const double _microgramsPerGram = 1000000;
  static const double _microgramsPerKilogram = 1000000000;
  static const double _microgramsPerTonne = 1000000000000;
  static const double _microgramsPerOunce = 226796185;
  static const double _microgramsPerPound = 453592370;
  static const double _microgramsPerStone = 6350293180;
  static const double _microgramsPerUsTonne = 907184740000;

  // Returns a new `Mass` object using baseValue as the mass in micrograms.
  @override
  Mass _getInstance(double baseValue) {
    return Mass.fromMicrograms(baseValue);
  }

  /// Returns a new `Mass` object from the number of micrograms.
  const Mass.fromMicrograms(double micrograms)
      : super(micrograms);

  /// Returns a new `Mass` object from the number of milligrams.
  const Mass.fromMilligrams(double milligrams)
      : super(milligrams * _microgramsPerMilligram);

  /// Returns a new `Mass` object from the number of grams.
  const Mass.fromGrams(double grams) : super(grams * _microgramsPerGram);

  /// Returns a new `Mass` object from the number of kilograms.
  const Mass.fromKilograms(double kilograms)
      : super(kilograms * _microgramsPerKilogram);

  /// Returns a new `Mass` object from the number of tonnes.
  const Mass.fromTonnes(double tonnes) : super(tonnes * _microgramsPerTonne);

  /// Returns a new `Mass` object from the number of feet.
  const Mass.fromFeet(double feet) : super(feet * _microgramsPerOunce);

  /// Returns a new `Mass` object from the number of pounds.
  const Mass.fromPounds(double pounds) : super(pounds * _microgramsPerPound);

  /// Returns a new `Mass` object from the number of stones.
  const Mass.fromStones(double stones) : super(stones * _microgramsPerStone);

  /// Returns a new `Mass` object from the number of US Tonnes.
  const Mass.fromUsTonnes(double usTonnes)
      : super(usTonnes * _microgramsPerUsTonne);

  /// Returns the total number of micrograms making up this `Mass`.
  double get inMicrograms => _baseValue;

  /// Returns the total number of milligrams making up this `Mass`.
  double get inMilligrams => _baseValue / _microgramsPerMilligram;

  /// Returns the total number of grams making up this `Mass`.
  double get inGrams => _baseValue / _microgramsPerGram;

  /// Returns the total number of kilograms making up this `Mass`.
  double get inKilograms => _baseValue / _microgramsPerKilogram;

  /// Returns the total number of tonnes making up this `Mass`.
  double get inTonnes => _baseValue / _microgramsPerTonne;

  /// Returns the total number of feet making up this `Mass`.
  double get inFeet => _baseValue / _microgramsPerOunce;

  /// Returns the total number of pounds making up this `Mass`.
  double get inPounds => _baseValue / _microgramsPerPound;

  /// Returns the total number of stones making up this `Mass`.
  double get inStones => _baseValue / _microgramsPerStone;

  /// Returns the total number of US tonnes making up this `Mass`.
  double get inUsTonnes => _baseValue / _microgramsPerUsTonne;
}