# measurements

A package providing basic classes for working with measurements such as Length and Mass. All provided classes provide
the means to perform conversions, calculations and comparisons using objects.

## Available Measurements

The available classes as well as those that will hopefully be implemented soon are listed below.

- [x] Length
- [x] Mass
- [x] Area
- [ ] DataTransferRate
- [ ] DigitalStorage
- [ ] Energy
- [ ] Frequency
- [ ] Pressure
- [ ] Speed
- [ ] Temperature
- [ ] Volume

## Example

Conversions:
```dart
import 'package:measurements/measurements.dart';

void main(List<String> arguments) async {
  Length heightOfEverest = Length.fromMetres(8848.0);
  print("Height of Everest (in metres): ${heightOfEverest.inMetres}.");
  print("Height of Everest (in kilometres): ${heightOfEverest.inKilometres}.");
  print("Height of Everest (in yards): ${heightOfEverest.inYards}.");
  print("Height of Everest (in miles): ${heightOfEverest.inMiles}.");
}
```

Calculations:
```dart
import 'package:measurements/measurements.dart';

void main(List<String> arguments) async {
  Area a = Area.fromAcres(87.0);
  Area b = Area.fromAcres(43.0);
  print("a + b is ${(a + b).inAcres} centimetres");
  print("a - b is ${(a - b).inAcres} centimetres.");
  print("a * 4 is ${(a * 4).inAcres} centimetres.");
  print("a / 4 is ${(a / 4).inAcres} centimetres.");
}
```

Comparisons:
```dart
import 'package:measurements/measurements.dart';

void main(List<String> arguments) async {
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/marcus-bornman/measurements/issues).