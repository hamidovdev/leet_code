int mySqrt(int x) {
  int sum = 0;
  if (x == 1) {
    return 1;
  }
  for (int i = 1; i < x; i++) {
    sum = i;
    if (i * i >= x) {
      break;
    }
  }
  if (sum * sum > x) {
    return sum - 1;
  } else {
    return sum;
  }
}
