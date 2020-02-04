import 'package:measurements/measurements.dart';
import 'package:test/test.dart';

void main() {
  group("Mass", (){
    test("fromMicrograms", (){
      Mass testMass = Mass.fromMicrograms(1000000000);

      expect(testMass.inNanograms, 1000000000000);
      expect(testMass.inMilligrams, 1000000);
      expect(testMass.inGrams, 1000);
      expect(testMass.inKilograms, 1);
      expect(testMass.inMetricTonnes, 0.001);
      expect(testMass.inOunces, 35.27396194958041);
      expect(testMass.inStones, 0.15747304441776971);
      expect(testMass.inPounds, 2.2046226218487757);
      expect(testMass.inImperialTonnes, 0.0009842065276110606);
      expect(testMass.inUSTonnes, 0.001102311310924388);
    });

    test("fromMilligrams", (){
      Mass testMass = Mass.fromMilligrams(1000000);

      expect(testMass.inNanograms, 1000000000000);
      expect(testMass.inMicrograms, 1000000000);
      expect(testMass.inGrams, 1000);
      expect(testMass.inKilograms, 1);
      expect(testMass.inMetricTonnes, 0.001);
      expect(testMass.inOunces, 35.27396194958041);
      expect(testMass.inStones, 0.15747304441776971);
      expect(testMass.inPounds, 2.2046226218487757);
      expect(testMass.inImperialTonnes, 0.0009842065276110606);
      expect(testMass.inUSTonnes, 0.001102311310924388);
    });

    test("fromGrams", (){
      Mass testMass = Mass.fromGrams(1000);

      expect(testMass.inNanograms, 1000000000000);
      expect(testMass.inMicrograms, 1000000000);
      expect(testMass.inMilligrams, 1000000);
      expect(testMass.inKilograms, 1);
      expect(testMass.inMetricTonnes, 0.001);
      expect(testMass.inOunces, 35.27396194958041);
      expect(testMass.inStones, 0.15747304441776971);
      expect(testMass.inPounds, 2.2046226218487757);
      expect(testMass.inImperialTonnes, 0.0009842065276110606);
      expect(testMass.inUSTonnes, 0.001102311310924388);
    });

    test("fromKilograms", (){
      Mass testMass = Mass.fromKilograms(1);

      expect(testMass.inNanograms, 1000000000000);
      expect(testMass.inMicrograms, 1000000000);
      expect(testMass.inMilligrams, 1000000);
      expect(testMass.inGrams, 1000);
      expect(testMass.inMetricTonnes, 0.001);
      expect(testMass.inOunces, 35.27396194958041);
      expect(testMass.inStones, 0.15747304441776971);
      expect(testMass.inPounds, 2.2046226218487757);
      expect(testMass.inImperialTonnes, 0.0009842065276110606);
      expect(testMass.inUSTonnes, 0.001102311310924388);
    });

    test("fromTonnes", (){
      Mass testMass = Mass.fromMetricTonnes(0.001);

      expect(testMass.inNanograms, 1000000000000);
      expect(testMass.inMicrograms, 1000000000);
      expect(testMass.inMilligrams, 1000000);
      expect(testMass.inGrams, 1000);
      expect(testMass.inKilograms, 1);
      expect(testMass.inOunces, 35.27396194958041);
      expect(testMass.inStones, 0.15747304441776971);
      expect(testMass.inPounds, 2.2046226218487757);
      expect(testMass.inImperialTonnes, 0.0009842065276110606);
      expect(testMass.inUSTonnes, 0.001102311310924388);
    });

    test("fromOunces", (){
      Mass testMass = Mass.fromOunces(16);

      expect(testMass.inNanograms, 453592370000);
      expect(testMass.inMicrograms, 453592370);
      expect(testMass.inMilligrams, 453592.37);
      expect(testMass.inGrams, 453.59237);
      expect(testMass.inKilograms, 0.45359237);
      expect(testMass.inMetricTonnes, 0.00045359237);
      expect(testMass.inStones, 0.07142857142857142);
      expect(testMass.inPounds, 1);
      expect(testMass.inImperialTonnes, 0.0004464285714285714);
      expect(testMass.inUSTonnes, 0.0005);
    });

    test("fromStones", (){
      Mass testMass = Mass.fromStones(0.07142857142857142);

      expect(testMass.inNanograms, 453592370000);
      expect(testMass.inMicrograms, 453592370);
      expect(testMass.inMilligrams, 453592.37);
      expect(testMass.inGrams, 453.59237);
      expect(testMass.inKilograms, 0.45359237);
      expect(testMass.inMetricTonnes, 0.00045359237);
      expect(testMass.inOunces, 16);
      expect(testMass.inPounds, 1);
      expect(testMass.inImperialTonnes, 0.0004464285714285714);
      expect(testMass.inUSTonnes, 0.0005);
    });

    test("fromPounds", (){
      Mass testMass = Mass.fromPounds(1);

      expect(testMass.inNanograms, 453592370000);
      expect(testMass.inMicrograms, 453592370);
      expect(testMass.inMilligrams, 453592.37);
      expect(testMass.inGrams, 453.59237);
      expect(testMass.inKilograms, 0.45359237);
      expect(testMass.inMetricTonnes, 0.00045359237);
      expect(testMass.inOunces, 16);
      expect(testMass.inStones, 0.07142857142857142);
      expect(testMass.inImperialTonnes, 0.0004464285714285714);
      expect(testMass.inUSTonnes, 0.0005);
    });

    test("fromImperialTonnes", (){
      Mass testMass = Mass.fromImperialTonnes(0.0004464285714285714);

      expect(testMass.inNanograms, 453592370000);
      expect(testMass.inMicrograms, 453592370);
      expect(testMass.inMilligrams, 453592.37);
      expect(testMass.inGrams, 453.59237);
      expect(testMass.inKilograms, 0.45359237);
      expect(testMass.inMetricTonnes, 0.00045359237);
      expect(testMass.inOunces, 16);
      expect(testMass.inStones, 0.07142857142857142);
      expect(testMass.inPounds, 1);
      expect(testMass.inUSTonnes, 0.0005);
    });

    test("fromUSTonnes", (){
      Mass testMass = Mass.fromUSTonnes(0.0005);

      expect(testMass.inNanograms, 453592370000);
      expect(testMass.inMicrograms, 453592370);
      expect(testMass.inMilligrams, 453592.37);
      expect(testMass.inGrams, 453.59237);
      expect(testMass.inKilograms, 0.45359237);
      expect(testMass.inMetricTonnes, 0.00045359237);
      expect(testMass.inOunces, 16);
      expect(testMass.inStones, 0.07142857142857142);
      expect(testMass.inPounds, 1);
      expect(testMass.inImperialTonnes, 0.0004464285714285714);
    });
  });
}
