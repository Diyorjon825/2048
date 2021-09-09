List<List<int>> matrix = [
  [2, 2, 4, 8],
  [2, 4, 4, 0],
  [4, 8, 16, 16],
  [0, 0, 0, 0]
];
void toLeft() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 3; j++) {
      if (matrix[i][j] == matrix[i][j + 1]) {
        matrix[i][j] += matrix[i][j + 1];
        if (j == 2) {
          matrix[i][j + 1] = 0;
        }
        for (int k = j + 1; k < 3; k++) {
          matrix[i][k] = matrix[i][k + 1];
          matrix[i][k + 1] = 0;
        }
      }
    }
  }
}
