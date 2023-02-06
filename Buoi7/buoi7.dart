///Bài 1
///https://leetcode.com/problems/largest-odd-number-in-string/submissions/892621136/
String largestOddNumber(String num) {
  ///Nếu kí tự cuối cùng của num mà là số lẻ thì return ra luôn.
  if(int.parse(num[num.length - 1]) % 2 != 0) {
      return num;
  }
  String result = "";
  //duyệt từ cuối chuỗi num
  for(int i = num.length - 1; i >= 0; i--) {
    //Nếu kí tự tại num[i] mà là số lẻ thì return luôn result.
    if( int.parse(num[i]) % 2 != 0 ) {
        return result;
    }
    //không phải là số lẻ thì gán result bằng chuỗi có độ dài từ 0 tới i
    result = num.substring(0, i);
  }

  return result;
}

///Bài 3
///https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/submissions/892629330/
int differenceOfSum(List<int> nums) {
  int s1 = 0;//tổng các phần tử của mảng
  int s2 = 0;//tổng các kí tự số xuất hiện trong mảng, ví dụ 1, 23, 45, 6 => s2 = 1 + 2 + 3 + 4 + 5 + 6
  ///duyệt mảng nums
  for (int i = 0; i < nums.length; i++) {
    s1 += nums[i];//cộng các phần tử của mảng
    ///chuyển phần tử nums[i] thành chuỗi. 
    String str = nums[i].toString();
    ///Nếu phẩn tử đang duyệt mà có từ 2 kí tự trở nên
    ///thì duyệt từng kí tự rồi cộng dồn vào biến s2
    if (str.length > 0) {
      for (int j = 0; j < str.length; j++) {
        s2 += int.parse(str[j]);
      }
    ///ngược lại thì đơn thuần cộng phần tử đang duyệt vào s2.
    } else {
      s2 += nums[i];
    }
  }
  return s1 - s2;
}

///Bài 4
///https://leetcode.com/problems/alternating-digit-sum/submissions/892633008/
int alternateDigitSum(int n) {
  String s = n.toString();
  int sum = 0;
  int hold = 1;
  for (int i = 0; i < s.length; i++) {
    sum += (hold) * int.parse(s[i]);
    hold = -1 * hold;
  }
  return sum;
}
