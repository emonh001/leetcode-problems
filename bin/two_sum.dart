void main(){
  var res = Solution.twoSum([1,2,3,4,5], 8);
  print(res);
}

class Solution {
  static List<int> twoSum(List<int> nums, int target) {
    int a = nums.length;

    for (int i = 0; i < a; i++){

      for (int j = i+1; j < a; j++){
        if (nums[i]+nums[j] == target){
          return [i,j];
        }
      }

    }


    return nums;
  }
}