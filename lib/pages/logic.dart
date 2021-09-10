import 'dart:math';

List<List<int>> matrix = [
  [0, 0, 0, 0],
  [0, 0, 4, 0],
  [2, 0, 0, 0],
  [0, 0, 0, 0]
];
void toLeft() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      int a = 0;
      if (matrix[i][j] == 0) {
        for (int k = j; k < 4; k++) {
          if (matrix[i][k] == 0)
            a++;
          else {
            matrix[i][j] = matrix[i][k];
            matrix[i][k] = 0;
            break;
          }
        }
      }
    }
    for (int j = 0; j < 3; j++) {
      if (matrix[i][j] == matrix[i][j + 1] && matrix[i][j] != 0) {
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
  creatRandom();
}

void toRight() {
  for (int i = 3; i >= 0; i--) {
    for (int j = 3; j >= 0; j--) {
      int a = 0;
      if (matrix[i][j] == 0) {
        for (int k = j; k >= 0; k--) {
          if (matrix[i][k] == 0)
            a++;
          else {
            matrix[i][j] = matrix[i][k];
            matrix[i][k] = 0;
            break;
          }
        }
      }
    }

    for (int j = 3; j > 0; j--) {
      if (matrix[i][j] == matrix[i][j - 1]) {
        matrix[i][j] += matrix[i][j - 1];
        if (j == 1) {
          matrix[i][j - 1] = 0;
        }
        for (int k = j - 1; k > 0; k--) {
          matrix[i][k] = matrix[i][k - 1];
          matrix[i][k - 1] = 0;
        }
      }
    }
  }
  creatRandom();
}

void toUp() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      int a = 0;
      if (matrix[j][i] == 0) {
        for (int k = j; k < 4; k++) {
          if (matrix[k][i] == 0)
            a++;
          else {
            matrix[j][i] = matrix[k][i];
            matrix[k][i] = 0;
            break;
          }
        }
      }
    }
    for (int j = 0; j < 3; j++) {
      if (matrix[j][i] == matrix[j + 1][i] && matrix[j][i] != 0) {
        matrix[j][i] += matrix[j + 1][i];
        if (j == 2) {
          matrix[j + 1][i] = 0;
        }
        for (int k = j + 1; k < 3; k++) {
          matrix[k][i] = matrix[k + 1][i];
          matrix[k + 1][i] = 0;
        }
      }
    }
  }
  creatRandom();
}

void toDown() {
  for (int i = 3; i >= 0; i--) {
    for (int j = 3; j >= 0; j--) {
      int a = 0;
      if (matrix[j][i] == 0) {
        for (int k = j; k >= 0; k--) {
          if (matrix[k][i] == 0)
            a++;
          else {
            matrix[j][i] = matrix[k][i];
            matrix[k][i] = 0;
            break;
          }
        }
      }
    }

    for (int j = 3; j > 0; j--) {
      if (matrix[j][i] == matrix[j - 1][i]) {
        matrix[j][i] += matrix[j - 1][i];
        if (j == 1) {
          matrix[j - 1][i] = 0;
        }
        for (int k = j - 1; k > 0; k--) {
          matrix[k][i] = matrix[k - 1][i];
          matrix[k - 1][i] = 0;
        }
      }
    }
  }
  creatRandom();
}

void creatRandom() {
  int a = 0;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (matrix[i][j] == 0) a++;
    }
  }
  var r = (Random().nextInt(a)).abs();
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (matrix[i][j] == 0) {
        a--;
        if (a == r) {
          int ran = (Random().nextInt(1)).abs() + 1;
          matrix[i][j] = ran * 2;
        }
      }
    }
  }
}
