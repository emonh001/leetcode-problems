//palindrome checker for string

class Solution {
  bool validPalindrome(String s) {
    int left = 0;
    int right = s.length - 1;

    while (left < right){
      if (s[left] !=  s[right]){
        return isPalindrome(s, right, left+1) || isPalindrome(s, right-1, left);
      }

      left++;
      right--;
    }

    return true;
  }

  bool isPalindrome(String s, int right, int left){
    while (left < right){
      if(s[left] != s[right]) return false;
      left++;
      right--;
    }
    return true;
  }

}

void main(){
  Solution solution = Solution();

  print(solution.validPalindrome("bcbe"));
}