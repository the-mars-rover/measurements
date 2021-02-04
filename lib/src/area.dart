part of measurements;

/// An area [Measurement] - for example 55.67m².
///
/// To create a new `Area` object, use any of this class's factory
/// constructors.
/// For example,
/// ```dart
/// Area plotArea = Area.fromHectares(20.0);
/// ```
///
/// Use one of the properties, such as [inSquareFeet], to retrieve the double value
/// of the `Area` in the specified Area unit.
/// For example,
/// ```dart
/// Area plotArea = Area.fromHectares(20.0);
/// assert(plotArea.fromSquareMetres == 200000.0);
/// ```
/// This class provides a collection of arithmetic and comparison operators.
/// See [Measurement] for the collection of arithmetic and comparison operators
/// which this class provides.
class Area extends Measurement<Area> {
  /// A zero-valued 'Area' constant.
  static const Area zero = const Area.fromSquareCentimetres(0);

  static const double _squareCentimetrePerSquareMetre = 10000;
  static const double _squareCentimetrePerSquareKilometre = 10000000000;
  static const double _squareCentimetrePerSquareInch = 16129 / 2500;
  static const double _squareCentimetrePerSquareFoot = 580644 / 625;
  static const double _squareCentimetrePerSquareYard = 5225796 / 625;
  static const double _squareCentimetrePerSquareMile = 647497027584 / 25;
  static const double _squareCentimetrePerHectare = 100000000;
  static const double _squareCentimetrePerAcre = 40468564.224;

  // Returns a new `Area` object using baseValue as the Area in cm².
  @override
  Area _getInstance(double baseValue) {
    return Area.fromSquareCentimetres(baseValue);
  }

  /// Returns a new `Area` object from the length and width of a rectangle.
  factory Area.fromRectangle(Length length, Length width) {
    return Area.fromSquareCentimetres(
        length.inCentimetres * width.inCentimetres);
  }

  /// Returns a new `Area` object from the base and height of a triangle.
  factory Area.fromTriangle(Length base, Length height) {
    return Area.fromSquareCentimetres(
        base.inCentimetres * height.inCentimetres / 2);
  }

  /// Returns a new `Area` object from the radius of a circle.
  factory Area.fromCircle(Length radius) {
    return Area.fromSquareCentimetres(
        math.pi * math.pow(radius.inCentimetres, 2));
  }

  /// Returns a new `Area` object from the number of cm².
  const Area.fromSquareCentimetres(double squareCentimetres)
      : super(squareCentimetres);

  /// Returns a new `Area` object from the number of Centimetres.
  const Area.fromSquareMetres(double squareMetres)
      : super(squareMetres * _squareCentimetrePerSquareMetre);

  /// Returns a new `Area` object from the number of centimetres.
  const Area.fromSquareKilometres(double squareKilometres)
      : super(squareKilometres * _squareCentimetrePerSquareKilometre);

  /// Returns a new `Area` object from the number of metres.
  const Area.fromSquareFeet(double squareFeet)
      : super(squareFeet * _squareCentimetrePerSquareFoot);

  /// Returns a new `Area` object from the number of kilometres.
  const Area.fromSquareInches(double squareInches)
      : super(squareInches * _squareCentimetrePerSquareInch);

  /// Returns a new `Area` object from the number of inches.
  const Area.fromHectares(double hectares)
      : super(hectares * _squareCentimetrePerHectare);

  /// Returns a new `Area` object from the number of feet.
  const Area.fromAcres(double acres) : super(acres * _squareCentimetrePerAcre);

  /// Returns a new `Area` object from the number of yards.
  const Area.fromSquareYards(double squareYards)
      : super(squareYards * _squareCentimetrePerSquareYard);

  /// Returns a new `Area` object from the number of miles.
  const Area.fromSquareMiles(double squareMiles)
      : super(squareMiles * _squareCentimetrePerSquareMile);

  /// Returns the total number of centimetres making up this `Area`.
  double get inSquareCentimetres => _baseValue;

  /// Returns the total number of metres² making up this `Area`.
  double get inSquareMetres => _baseValue / _squareCentimetrePerSquareMetre;

  /// Returns the total number of kilometres² making up this `Area`.
  double get inSquareKilometres =>
      _baseValue / _squareCentimetrePerSquareKilometre;

  /// Returns the total number of feet² making up this `Area`.
  double get inSquareFeet => _baseValue / _squareCentimetrePerSquareFoot;

  /// Returns the total number of km² making up this `Area`.
  double get inSquareInches => _baseValue / _squareCentimetrePerSquareInch;

  /// Returns the total number of hectares making up this `Area`.
  double get inHectares => _baseValue / _squareCentimetrePerHectare;

  /// Returns the total number of acres making up this `Area`.
  double get inAcres => _baseValue / _squareCentimetrePerAcre;

  /// Returns the total number of yards² making up this `Area`.
  double get inSquareYards => _baseValue / _squareCentimetrePerSquareYard;

  /// Returns the total number of miles² making up this `Area`.
  double get inSquareMiles => _baseValue / _squareCentimetrePerSquareMile;
}
