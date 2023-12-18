class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}
class LinkedList<T> {
  Node<T>? head;

  void add(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node<T>? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
  

  void removeAllOccurrences(T value) {
    while (head != null && head!.data == value) {
      head = head!.next;
    }

    Node<T>? current = head;
    Node<T>? prev = null;

    while (current != null) {
      if (current.data == value) {
        prev!.next = current.next;
      } else {
        prev = current;
      }
      current = current.next;
    }
  }

st
  void reverse() {
    Node<T>? prev = null;
    Node<T>? current = head;
    Node<T>? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
  }

  
  Node<T>? findMiddleNode() {
    if (head == null) {
      return null;
    }

    Node<T>? slowPointer = head;
    Node<T>? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer!.next;
      fastPointer = fastPointer.next!.next;
    }

    return slowPointer;
  }

 
  void printReverse(Node<T>? node) {
    if (node == null) {
      return;
    }
    printReverse(node.next);
    print(node.data);
  }
}
void main() {
  LinkedList<int> linkedList = LinkedList<int>();

  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  linkedList.add(4);
  linkedList.add(5);

  print('Original Linked List:');
  linkedList.printList();


  print('\n Print in Reverse:');
  linkedList.printReverse(linkedList.head);

  
  print('\n Find the Middle Node:');
  Node<int>? middleNode = linkedList.findMiddleNode();
  print('Middle Node: ${middleNode?.data}');

  
  print('\n Reverse a Linked List:');
  linkedList.reverse();
  linkedList.printList();

  
  print(' Remove All Occurrences of 3:');
  linkedList.removeAllOccurrences(3);
  linkedList.printList();
}
