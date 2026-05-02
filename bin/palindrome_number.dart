class Solution {
  bool isPalindrome(int x) {
    final digits = x.toString().split('').join();
    int n = digits.length;

    if (x < 0){
      return false;
    }

    for (int i = 0; i < n/2; i++){
      if(digits[i] != digits[n-i-1]){
        return false;
      }
    }

    return true;

  }
}

void main(){
  Solution solution = Solution();

  print(solution.isPalindrome(-10));
}