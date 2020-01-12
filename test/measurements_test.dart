import 'package:measurements/measurements.dart';
import 'package:test/test.dart';

void main() {
  group("Length", (){
    test("1 Foot is 304800000 Nanometres", (){
      Length a = Length.fromFeet(1.0);
      expect(a.inNanometres, equals(304800000));
    });

    test("50 Nautical Miles is 1446875/24146 Miles", (){
      Length a = Length.fromNauticalMiles(50.0);
      expect(a.inMiles, equals(1446875/25146));
    });

    test("100 Inches is 2.54 Metres", (){
      Length a = Length.fromInches(100);
      expect(a.inMetres, equals(2.54));
    });

    test("5 Kilometres is 6250000/1143 Yards", (){
      Length a = Length.fromKilometres(5);
      expect(a.inYards, equals(6250000/1143));
    });

    test("15 Centimetres is 750/127 Inches", (){
      Length a = Length.fromCentimetres(15);
      expect(a.inInches, equals(750/127));
    });

    test("1000 Nautical Miles < 1853 Kilometres yields true", (){
      Length a = Length.fromNauticalMiles(1000);
      Length b = Length.fromKilometres(1853);
      expect(a < b, isTrue);
    });

    test("1000 Nautical Miles == 1852 Kilometres yields true", (){
      Length a = Length.fromNauticalMiles(1000);
      Length b = Length.fromKilometres(1852);
      expect(a == b, isTrue);
    });

    test("5 Metres minus 97 Centimetres is equal to 4.03 Metres", (){
      Length a = Length.fromMetres(5);
      Length b = Length.fromCentimetres(97);
      Length difference = a - b;
      expect(difference.inMetres, equals(4.03));
    });

    test("40 Yards plus 10 Feet is equal to 130 Yards", (){
      Length a = Length.fromYards(40);
      Length b = Length.fromFeet(10);
      Length difference = a + b;
      expect(difference.inFeet, equals(130));
    });

    test("The absolute difference between 1 metre and 1 yard is 3.37007874015748 Inches", (){
      Length a = Length.fromYards(1);
      Length b = Length.fromMetres(1);
      Length difference = a - b;
      expect(difference.abs().inInches, equals(3.37007874015748));
    });
  });

  group("Mass", (){
    test("1 Ounce is 45359237/1600 Milligrams", (){
      Mass a = Mass.fromOunces(1.0);
      expect(a.inMilligrams, equals(45359237/1600));
    });

    test("50 US Tonnes is 45359.237 Kilograms", (){
      Mass a = Mass.fromUsTonnes(50.0);
      expect(a.inKilograms, equals(45359.237));
    });

    test("100 Pounds is 45359.237 Grams", (){
      Mass a = Mass.fromPounds(100.0);
      expect(a.inGrams, equals(45359.237));
    });

    test("5 Kilometres is 0.7873652220888485 Stones", (){
      Mass a = Mass.fromKilograms(5.0);
      expect(a.inStones, equals(0.7873652220888485));
    });

    test("15 Milligrams is 0.000529109429243706 Ounces", (){
      Mass a = Mass.fromMilligrams(15.0);
      expect(a.inOunces, equals(0.0005291094292437062));
    });

    test("1000 US Tonnes < 907184.75 Kilograms yields true", (){
      Mass a = Mass.fromUsTonnes(1000);
      Mass b = Mass.fromKilograms(907184.75);
      expect(a < b, isTrue);
    });

    test("1000 US Tonnes == 907184.74 Kilograms yields true", (){
      Mass a = Mass.fromUsTonnes(1000);
      Mass b = Mass.fromKilograms(907184.74);
      expect(a == b, isTrue);
    });

    test("5 Grams minus 10 Milligrams is equal to 4.99 Grams", (){
      Mass a = Mass.fromGrams(5);
      Mass b = Mass.fromMilligrams(10);
      Mass difference = a - b;
      expect(difference.inGrams, equals(4.99));
    });

    test("40 Pounds plus 10 Ounces is equal to 650 Ounces", (){
      Mass a = Mass.fromPounds(40);
      Mass b = Mass.fromOunces(10);
      Mass difference = a + b;
      expect(difference.inOunces, equals(650));
    });

    test("The absolute difference between 1 Pound and 1 Kilogram is 19.273961949580414 Ounces", (){
      Mass a = Mass.fromPounds(1);
      Mass b = Mass.fromKilograms(1);
      Mass difference = a - b;
      expect(difference.abs().inOunces, equals(19.273961949580414));
    });
  });
}
