//Bai 3:
//https://leetcode.com/problems/valid-palindrome/submissions/916905383/
class Solution {
  bool isPalindrome(String s) {
    //khai báo danh sách chứa các kí tự sau khi lọc
    List<String> result = [];
    //duyệt qua từng kí tự
    for (int i = 0; i < s.length; i++) {
      //lấy mã code của kí tự đang được duyệt.
      int code = s.codeUnitAt(i);
      //nếu kí tự là chuỗi hoặc số thì thêm vào danh sách result.
      if (
          (code >= 65 && code <= 90)
          || (code >= 97 && code <= 122)
          || (code >= 48 && code <= 57)
      ) {
        result.add(s[i].toLowerCase());
      }
    }
    //lưu chuỗi từng danh sách result.
    String s1 = result.join('');
    //đảo ngược danh sách và lưu lại thành chuỗi
    String s2 = result.reversed.join('');
    //so sánh chuỗi sau khi đảo ngược và khi chưa đảo ngược,
    //nếu giống nhau thì trả về true, ngược lại trả về false.
    return s1 == s2;
  }
}
