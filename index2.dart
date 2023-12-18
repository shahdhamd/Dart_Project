bool isBalancedParentheses(String expression) {
  
  List<String> stack = [];


  for (int i = 0; i < expression.length; i++) {
    String currentChar = expression[i];

   
    if (currentChar == '(') {
      stack.add(currentChar);
    }
   
    else if (currentChar == ')') {
  
      if (stack.isNotEmpty) {
        stack.removeLast();
      } else {
    
        return false;
      }
    }
  }


  return stack.isEmpty;
}

void main() {
  
  String expression1 = "(a + b) * (c - d)";
  String expression2 = "((x + y) / z";

  print('Expression 1 is balanced: ${isBalancedParentheses(expression1)}');
  print('Expression 2 is balanced: ${isBalancedParentheses(expression2)}');
}
