//palindrome checker for string

class Solution {
  bool validPalindrome(String s) {
    final str = s.toLowerCase().toString().split('').join();
    int n = str.length;

    for (int i = 0; i < n/2; i++){
      if(str[i] != str[n-i-1]){
        return false;
      }
    }

    return true;
  }
}

void main(){
  Solution solution = Solution();

  print(solution.validPalindrome("mama"));
}