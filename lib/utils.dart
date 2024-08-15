// не Ок
int byPrecision(int value, int precision) {
  if (value <= precision) {
    return value;
  }
  return precision;
}

// Ok

int byPrecision2(int value, int precision) {
  if (value < precision || value == precision) {
    return value;
  }
  return precision;
}