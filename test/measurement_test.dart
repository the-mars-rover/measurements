import 'package:measurements/measurements.dart';
import 'package:test/test.dart';

void main() {
  group("Measurement", () {
    test("Overloaded '+' operator", () {
      Length a = Length.fromMetres(34.0);
      Length b = Length.fromCentimetres(20.0);

      Length sum = a + b;

      expect(sum.inMetres, 34.2);
    });

    test("Overloaded '-' operator", () {
      Mass a = Mass.fromPounds(34.0);
      Mass b = Mass.fromOunces(20.0);

      Mass difference = a - b;

      expect(difference.inPounds, 32.75);
    });

    test("Overloaded '*' operator", () {
      Mass a = Mass.fromKilograms(5.0);

      Mass product = a * 4;

      expect(product.inKilograms, 20.0);
    });

    test("Overloaded '/' operator", () {
      Area a = Area.fromAcres(20.0);

      Area divided = a / 4;

      expect(divided.inAcres, 5.0);
    });

    test("Overloaded negation operator", () {
      Length a = Length.fromMiles(50.0);

      Length negated = -a;

      expect(negated.inMiles, -50.0);
    });

    test("Overloaded '<' operator", () {
      Length a = Length.fromMiles(50.0);
      Length b = Length.fromMiles(51.0);

      bool isLessThan = a < b;

      expect(isLessThan, true);
    });

    test("Overloaded '>' operator", () {
      Length a = Length.fromMiles(51.0);
      Length b = Length.fromMiles(50.0);

      bool isGreaterThan = a > b;

      expect(isGreaterThan, true);
    });

    test("Overloaded '<=' operator", () {
      Length a = Length.fromMiles(50.0);
      Length b = Length.fromMiles(50.0);

      bool isLessThanOrEqual = a <= b;

      expect(isLessThanOrEqual, true);
    });

    test("Overloaded '>=' operator", () {
      Length a = Length.fromMiles(50.0);
      Length b = Length.fromMiles(50.0);

      bool isGreaterThanOrEqual = a >= b;

      expect(isGreaterThanOrEqual, true);
    });

    test("Overloaded '==' operator", () {
      Area a = Area.fromRectangle(Length.fromCentimetres(5), Length.fromCentimetres(4));
      Area b = Area.fromSquareCentimetres(20.0);

      bool isEqual = a == b;

      expect(isEqual, true);
    });

    test("Overloaded compareTo method", () {
      List<Mass> weights = [
        Mass.fromGrams(100),
        Mass.fromGrams(40),
        Mass.fromGrams(30),
        Mass.fromGrams(90),
        Mass.fromGrams(10),
      ];

      weights.sort();

      expect(weights.elementAt(0).inGrams, 10);
      expect(weights.elementAt(1).inGrams, 30);
      expect(weights.elementAt(2).inGrams, 40);
      expect(weights.elementAt(3).inGrams, 90);
      expect(weights.elementAt(4).inGrams, 100);
    });

    test("abs() method", () {
      Area a = Area.fromSquareCentimetres(-20.0);

      Area absolute = a.abs();

      expect(absolute.inSquareCentimetres, 20);
    });

    test("isNegative getter", () {
      Area a = Area.fromSquareCentimetres(-20.0);

      bool isNegative = a.isNegative;

      expect(isNegative, true);
    });
  });
}
