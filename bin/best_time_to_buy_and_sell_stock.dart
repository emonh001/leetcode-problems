import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    if(prices.isEmpty) return 0;

    int minPrice = prices[0];
    int maxProfit = 0;


    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      }

      int currentProfit = prices[i] - minPrice;
      if (maxProfit < currentProfit){
        maxProfit = currentProfit;
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.maxProfit([7,1,5,3,6,4]));
}
