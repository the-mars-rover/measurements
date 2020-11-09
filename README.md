<!-- PROJECT LOGO -->
<p align="right">
<a href="https://pub.dev">
<img src="https://raw.githubusercontent.com/born-ideas/measurements/master/assets/project_badge.png" height="100" alt="Flutter">
</a>
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/born-ideas/measurements/master/assets/project_logo.png" height="100" alt="Masterpass Example" />
</p>

<!-- PROJECT SHIELDS -->
<p align="center">
<a href="https://pub.dev/packages/measurements"><img src="https://img.shields.io/pub/v/measurements" alt="pub"></a>
<a href="https://github.com/born-ideas/measurements/actions?query=workflow%3Atest"><img src="https://img.shields.io/github/workflow/status/born-ideas/measurements/test?label=test" alt="test"></a>
<a href="https://github.com/born-ideas/measurements/issues"><img src="https://img.shields.io/github/issues/born-ideas/measurements" alt="issues"></a>
<a href="https://github.com/born-ideas/measurements/network"><img src="https://img.shields.io/github/forks/born-ideas/measurements" alt="forks"></a>
<a href="https://github.com/born-ideas/measurements/stargazers"><img src="https://img.shields.io/github/stars/born-ideas/measurements" alt="stars"></a>
<a href="https://dart.dev/guides/language/effective-dart/style"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="style"></a>
<a href="https://github.com/born-ideas/measurements/blob/master/LICENSE"><img src="https://img.shields.io/github/license/born-ideas/measurements" alt="license"></a>
</p>

---

<!-- TABLE OF CONTENTS -->
## Table of Contents
* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project
<p align="center">
<img src="https://raw.githubusercontent.com/born-ideas/measurements/master/assets/screenshot_1.gif" width="600" alt="Screenshot 1" />
</p>

Working with different units of measurements can be a pain. This project provides a [Dart Library](https://pub.dev/packages/measurements) 
with basic classes for working with various measurement units. So far the supported measurements include:
- [x] Length
- [x] Mass
- [x] Area

### Built With
* [Dart](https://dart.dev/)



<!-- GETTING STARTED -->
## Getting Started
### Prerequisites
This package can only be used by other dart projects. If this is your first dart project, see the following pages to help you get started:                   
- [Codelabs: Guided, hands-on coding experience](https://dart.dev/codelabs)
- [Tutorials: Teaching you how to use Dart](https://dart.dev/tutorials)

### Installation
Add `measurements` as a [dependency in your pubspec.yaml file](https://dart.dev/guides/packages).



<!-- USAGE EXAMPLES -->
## Usage
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



<!-- ROADMAP -->
## Roadmap
We are hoping to provide the following measurements in the near future:
- [ ] DataTransferRate
- [ ] DigitalStorage
- [ ] Energy
- [ ] Frequency
- [ ] Pressure
- [ ] Speed
- [ ] Temperature
- [ ] Volume

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of other proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.



<!-- CONTACT -->
## Contact

BornIdeas - [born.dev](https://www.born.dev) - [info@born.dev](mailto:support@born.dev)

Project Link: [https://github.com/born-ideas/measurements](https://github.com/born-ideas/measurements)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Shields IO](https://shields.io)
* [Open Source Licenses](https://choosealicense.com)