import 'dart:math';

class Solution {
  bool isPowerOfTwo(int n) {
    final powerOfTwo = [];

    for(int i = 0; i <= 31; i++){
      powerOfTwo.add(pow(2, i));
    }

    return powerOfTwo.contains(n);
  }
}
void main() {
  Solution solution = Solution();
  print(solution.isPowerOfTwo(3));
}