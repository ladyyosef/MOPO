validInput(String val, int min, int, max) {
  if (val.length > max) {
    return "too longe";
  }
   if (val.length < min) {
    return "Short";
  }
   if (val.isEmpty) {
    return "Empty";
  }
}
