class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String,int> freqMap = {};

    for(int i =0; i < s.length; i++){
      String charS = s[i].toLowerCase();
      String charT = t[i].toLowerCase();

      freqMap[charS] = (freqMap[charS] ?? 0) +1;
      freqMap[charT] = (freqMap[charT] ?? 0) -1;
    }

    return freqMap.values.every((count) => count == 0);
  }
}

void main(){
  Solution solution = Solution();
  print(solution.isAnagram("silent", "listen"));
}