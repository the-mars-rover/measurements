import 'package:measurements/measurements.dart';

void main(List<String> arguments) async {
  print("Some interesting measurements...");

  // Conversion
  Length heightOfEverest = Length.fromMetres(8848);
  print("Height of Everest (in metres): ${heightOfEverest.inMetres}.");
  print("Height of Everest (in kilometres): ${heightOfEverest.inKilometres}.");
  print("Height of Everest (in yards): ${heightOfEverest.inYards}.");
  print("Height of Everest (in miles): ${heightOfEverest.inMiles}.");

  // Calculation
  Length a = Length.fromCentimetres(87);
  Length b = Length.fromCentimetres(43);
  print("a + b is ${(a + b).inCentimetres} centimetres");//130
  print("a - b is ${(a - b).inCentimetres} centimetres.");//44
  print("a * b is ${(a * b).inCentimetres} centimetres.");//3741
  print("a / b is ${(a / b).inCentimetres} centimetres.");//2.02325581395

  // Comparison
  Mass elephantWeight = Mass.fromKilograms(5400);
  Mass zebraWeight = Mass.fromKilograms(380);
  if (elephantWeight == zebraWeight) {
    print("An elephant and a Zebra have the same weight.");
  } else if (zebraWeight < elephantWeight) {
    Mass difference = elephantWeight - zebraWeight;
    print("An elephant is ${difference.inPounds} pounds heavier than a zebra.");
  } else {
    Mass difference = zebraWeight - elephantWeight;
    print("A Zebra is ${difference.inPounds} pounds heavier than an elephant.");
  }
}
