class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode(0);
    ListNode cur = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        cur.next = list1;
        list1 = list1.next;
      } else {
        cur.next = list2;
        list2 = list2.next;
      }
      cur = cur.next!;
    }

    cur.next = list1 ?? list2;
    return dummy.next;
  }
}

void main(){
  ListNode list1 = ListNode(1);
  list1.next = ListNode(2);
  list1.next!.next = ListNode(3);

  ListNode list2 = ListNode(2);
  list2.next = ListNode(2);
  list2.next!.next = ListNode(4);
  list2.next!.next!.next = ListNode(1);


  Solution solution = Solution();
  solution.mergeTwoLists(list1, list2);

}