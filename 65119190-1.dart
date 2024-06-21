import 'dart:math';

void main() {
  double sideA = 1;
  double sideB = 1;
  double sideC = 1;

  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    print("Error: All side lengths must be positive numbers.");
  } else if (sideA + sideB <= sideC ||
      sideA + sideC <= sideB ||
      sideB + sideC <= sideA) {
    print("Error: The given sides do not form a triangle.");
  }

  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter *
      (semiPerimeter - sideA) *
      (semiPerimeter - sideB) *
      (semiPerimeter - sideC));

  print(area);
}
