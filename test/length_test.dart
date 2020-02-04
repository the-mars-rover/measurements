import 'package:measurements/measurements.dart';
import 'package:test/test.dart';

void main() {
  Length testLength;

  group("Length", () {
    test("fromNanometres", () {
      testLength = Length.fromNanometres(304800000);

      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromMicrometres", () {
      testLength = Length.fromMicrometres(304800);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromMillimetres", () {
      testLength = Length.fromMillimetres(304.8);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromCentimetres", () {
      testLength = Length.fromCentimetres(30.48);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromMetres", () {
      testLength = Length.fromMetres(0.3048);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromKilometres", () {
      testLength = Length.fromKilometres(0.0003048);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromInches", () {
      testLength = Length.fromInches(12);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromFeet", () {
      testLength = Length.fromFeet(1);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromYards", () {
      testLength = Length.fromYards(1 / 3);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inMiles, 0.0001893939393939394);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromMiles", () {
      testLength = Length.fromMiles(0.0001893939393939394);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inNauticalMiles, 0.00016457883369330455);
    });

    test("fromNauticalMiles", () {
      testLength = Length.fromNauticalMiles(0.00016457883369330455);

      expect(testLength.inNanometres, 304800000);
      expect(testLength.inMicrometres, 304800);
      expect(testLength.inMillimetres, 304.8);
      expect(testLength.inCentimetres, 30.48);
      expect(testLength.inMetres, 0.3048);
      expect(testLength.inKilometres, 0.0003048);
      expect(testLength.inInches, 12);
      expect(testLength.inFeet, 1);
      expect(testLength.inYards, 1 / 3);
      expect(testLength.inMiles, 0.0001893939393939394);
    });
  });
}
