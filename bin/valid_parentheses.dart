class Solution {
  bool isValid(String s) {
    final stack = <String>[];

    for (int i = 0; i < s.length; i++) {
      if (s[i].contains("(") || s[i].contains("{") || s[i].contains("[")) {
        stack.add(s[i]);
      } else {
        if (stack.isEmpty) {
          return false;
        }

        if (stack.last == "(" && s[i].contains(")") ||
            stack.last == "{" && s[i].contains("}") ||
            stack.last == "[" && s[i].contains("]")) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}

void main() {
  Solution s = Solution();

  print(s.isValid("[(){}[]]"));
}
