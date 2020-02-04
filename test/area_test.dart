import 'package:measurements/measurements.dart';
import 'package:test/test.dart';

void main() {
  group("Area", () {
    test("fromSquareCentimetres", () {
      Area area = Area.fromSquareCentimetres(10000000000);

      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareMetres", () {
      Area area = Area.fromSquareMetres(1000000);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareKilometres", () {
      Area area = Area.fromSquareKilometres(1);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromHectares", () {
      Area area = Area.fromHectares(100);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareInches", () {
      Area area = Area.fromSquareInches(25000000000000 / 16129);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareFeet", () {
      Area area = Area.fromSquareFeet(1562500000000 / 145161);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareYards", () {
      Area area = Area.fromSquareYards(1562500000000 / 1306449);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareMiles, 244140625 / 632321316);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromSquareMiles", () {
      Area area = Area.fromSquareMiles(244140625 / 632321316);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inAcres, 3088817268339567 / 12500000000000);
    });

    test("fromAcres", () {
      Area area = Area.fromAcres(3088817268339567 / 12500000000000);

      expect(area.inSquareCentimetres, 10000000000);
      expect(area.inSquareMetres, 1000000);
      expect(area.inSquareKilometres, 1);
      expect(area.inHectares, 100);
      expect(area.inSquareInches, 25000000000000 / 16129);
      expect(area.inSquareFeet, 1562500000000 / 145161);
      expect(area.inSquareYards, 1562500000000 / 1306449);
      expect(area.inSquareMiles, 244140625 / 632321316);
    });

    test("fromRectangle", () {
      Length length = Length.fromCentimetres(5);
      Length width = Length.fromCentimetres(8);
      Area area = Area.fromRectangle(length, width);

      expect(area.inSquareCentimetres, 40);
    });

    test("fromTriangle", () {
      Length base = Length.fromMetres(6);
      Length height = Length.fromMetres(4);
      Area area = Area.fromTriangle(base, height);

      expect(area.inSquareMetres, 12);
    });

    test("fromCircle", () {
      Length radius = Length.fromKilometres(4);
      Area area = Area.fromCircle(radius);

      expect(area.inSquareKilometres, 50.26548245743669);
    });
  });
}
