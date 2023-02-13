///Bài 1
///https://leetcode.com/problems/plus-one/submissions/897085815/

List<int> plusOne(List<int> digits) {
  ///Nếu phần tử cuối cùng của mảng mà nhỏ hơn 9 thì cộng thêm 1 vào phẩn tử cuối cùng và trả về mảng đó luôn
  int last = digits[digits.length - 1];
  if (last < 9) {
      digits[digits.length - 1] = last + 1;
      return digits;
  }
  ///duyệt từ phần tử cuối của mảng
  for(int i = digits.length - 1; i >= 0; i--) {
      ///phần tử tại i bằng 9 và i chưa phải là vị trí đầu tiên thì khi cộng thêm 1 sẽ bằng 10
      ///do đó ta sẽ gán giá trị tại i bằng 0 và duyệt tiếp phần tử tiếp theo về phía đầu mảng
      if(i > 0 && digits[i] == 9) {
          digits[i] = 0;
      } else if(digits[i] < 9) {
          ///nếu phần tử tại i nhỏ hơn 9 thì khi cộng thêm 1 vẫn sẽ nhỏ hơn hoặc bằng 9
          ///trường hợp này thoát luôn vòng lặp và trả về mảng
          digits[i] = digits[i] + 1;
          break;
      } else if(i == 0 && digits[i] == 9) {
          ///Nếu phần tử hiện tại là phần tử đầu tiên của mảng và giá trị mà bằng 9
          ///thì khi cộng thêm 1 sẽ bằng 10, lúc này ta sẽ gán giá trị của phần tử tại i = 0
          ///và chèn thêm 1 vào đầu mảng
          digits[i] = 0;
          digits.insert(0, 1);
      }
  }
  return digits;
}

///Bài 4
String restoreString(String s, List<int> indices) {
  String result = "";
  Map<int, String> map = {};
  ///duyệt danh sách và gán vào map với key là giá trị tại indices[i] và value là kí tự tại chỉ số i của chuỗi s.
  for (int i = 0; i < indices.length; i++) {
    map[indices[i]] = s[i];
  }
  //sắp xếp danh sách indices theo thứ tự tăng dần
  indices.sort();
  ///duyệt danh sách, cộng dồn vào chuỗi result với giá trị lấy từ map dựa vào key là giá trị của indices tại i
  for (int i = 0; i < indices.length; i++) {
    result += map[indices[i]]!;
  }

  return result;
}