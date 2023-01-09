/*
 * Input: n = 2
Output: 1
Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.
 * */

int fib (int n) {
  if(n == 0) return 0;
  if(n == 1) return 1;
  //tới đây thì n sẽ >= 2, nên ta khởi tạo mảng có 2 phần tử 0 và 1.
  List<int> arr = [0, 1];
  //duyệt từ 2 tới n.
  for(int i = 2; i<= n; i++) {
    //tính số Fibonacci tại i = giá trị của 2 số liền trước dựa vào i
    int val = arr[i-2] + arr[i-1];
    arr.add(val);
  }
  
  return arr.last;//trả về phần tử cuối cùng của mảng
}

void main() {
    print(fib(4));
}
