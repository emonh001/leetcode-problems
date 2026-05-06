import 'dart:math';

class Solution {
  bool containsDuplicate(List<int> nums) {
    if(nums.isEmpty) return false;
    final Set<int> seen = {};

    for(int num in nums){
      if(seen.contains(num)){
        return true;
      }
      seen.add(num);
    }
    return false;
  }
}

void main(){
  Solution solution = Solution();
  
  print(solution.containsDuplicate([1,2,3,4]));
}