part of measurements;

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
  /// A zero-valued 'Length' constant.
  static const Length zero = const Length.fromNanometres(0);

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
