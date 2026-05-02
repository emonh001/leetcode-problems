class Solution {
  int singleNumber(List<int> nums) {

    if(nums.length == 1){
      return nums.first;
    }

    int a = nums.length;
    for (int i = 0; i < a; i++){
      bool flag = true;
      for (int j = 0; j < a; j++){
        if (i != j && nums[i] == nums[j]){
          flag = false;
          break;
        }
      }
      if (flag){
        return nums[i];
      }
    }

    return -1;
  }
}

void main(){
  Solution solution = Solution();

  print(solution.singleNumber([4,1,2,1,2]));
}