class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    final n1 = nums1.toSet();
    final n2 = nums2.toSet();

    return n1.intersection(n2).toList();

  }
}

void main(){
  Solution solution = Solution();
  print(solution.intersection([1,2,2,1], [2,2]));
}