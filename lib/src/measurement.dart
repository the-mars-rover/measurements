part of measurements;

/// Base class used by types that represent forms of measurement.
///
/// This class provides all `Measurement` subclasses with a collection of
/// arithmetic and comparison operators.
///
/// See also:
/// [Length], for measurements of length.
/// [Mass], for measurements of weight.
abstract class Measurement<T extends Measurement<T>> implements Comparable<T> {
  // Represents the value of this measurement in the smallest possible units.
  // It is used for the implementation of all arithmetic and comparison operators.
  final double _baseValue;

  // Called by subclasses to instantiate _baseValue
  const Measurement(this._baseValue);

  // The abstract factory method that must be implemented by all subclasses.
  T _getInstance(double baseValue);

  /// Adds this `Measurement` and [other] and
  /// returns the sum as a new object of [T].
  T operator +(T other) => _getInstance(_baseValue + other._baseValue);

  /// Subtracts [other] from this `Measurement` and
  /// returns the difference as a new object of [T].
  T operator -(T other) => _getInstance(_baseValue - other._baseValue);

  /// Multiples this `Measurement` by [other] and
  /// returns the result as a new object of [T].
  T operator *(double other) => _getInstance(_baseValue * other);

  /// Divides this `Measurement` by [other] and
  /// returns the result as a new object of [T].
  T operator /(double other) => _getInstance(_baseValue / other);

  /// Returns a new object of [T] representing this `Measurement` negated.
  ///
  /// The returned `Measurement` has the same length as this one, but will have the
  /// opposite sign of this one.
  T operator -() => _getInstance(0 - _baseValue);

  /// Returns `true` if the value of this `Measurement`
  /// is less than the value of [other].
  bool operator <(T other) => _baseValue < other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is greater than the value of [other].
  bool operator >(T other) => _baseValue > other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is less than or equal to the value of [other].
  bool operator <=(T other) => _baseValue <= other._baseValue;

  /// Returns `true` if the value of this `Measurement`
  /// is greater than or equal to the value of [other].
  bool operator >=(T other) => _baseValue >= other._baseValue;

  /// Returns `true` if this [Measurement] has the same value as [other].
  @override
  bool operator ==(dynamic other) =>
      other is T && (_baseValue == other._baseValue);

  @override
  int get hashCode => _baseValue.hashCode;

  /// Compares this `Measurement` to [other], returning zero if the values are
  /// equal.
  ///
  /// Returns a negative integer if this `Measurement` is less than
  /// [other], or a positive integer if it is greater.
  ///
  /// A negative `Measurement` is always considered shorter than a positive one.
  ///
  /// It is always the case that `measurement1.compareTo(measurement2) < 0` iff
  /// `(someMeasurement + measurement1).compareTo(someMeasurement + measurement2) < 0`.
  @override
  int compareTo(T other) => _baseValue.compareTo(other._baseValue);

  /// Returns a new object of [T] representing the absolute value of this
  /// `Measurement`.
  ///
  /// The returned object has the same base value as this one, but is always
  /// positive.
  T abs() => _getInstance(_baseValue.abs());

  /// Returns whether this `Measurement` is negative.
  bool get isNegative => _baseValue < 0;
}
