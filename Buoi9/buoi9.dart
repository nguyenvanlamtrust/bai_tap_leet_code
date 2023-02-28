//Bai 1
import 'dart:math';

class Solution1 {
  bool judgeCircle(String moves) {
    /// khai báo 1 danh sách chứa các kí tự chưa khớp
    List<String> result = [];
    //khai báo 1 map với key value là các kí tự đối lập nhau.
    Map<String, String> map = {
      'L': 'R',
      'R': 'L',
      'U': 'D',
      'D': 'U',
    };
    //duyêt từng kí tự của chuỗi moves
    for (int i = 0; i < moves.length; i++) {
      //gán giá trị tại moves[i] vào biến key
      String key = moves[i];
      //kiểm tra nếu danh sách result không trống và chứa value của map tại key
      //trường hợp này sẽ tìm được cặp đối lập UD hoặc LR ...
      //remove phần tử có giá trị tại map[key]
      if (result.isNotEmpty && result.contains(map[key])) {
        result.remove(map[key]);
      } else {
        // trường hợp còn lại thì chỉ thêm vào danh sách kí tự đã duyệt
        result.add(key);
      }
    }

    //nếu danh sách trống thì tất cả các kí tự đều có cặp đối lập nhau
    //nếu danh sách không trống thì sẽ còn lại một vài kí tự không tìm thấy kí tự đối lập của nó
    return result.isEmpty;
  }
}

//Bai 2
class Solution2 {
  int calPoints(List<String> operations) {
      //tạo danh sách chứa các số nguyên
    List<int> list = [];
    //duyệt qua từng kí tự của operations
    for (int i = 0; i < operations.length; i++) {
      if (operations[i] == 'C') {
        //nếu là kí tự C thì loại bỏ phần tử cuối cùng
        list.removeLast();
      } else if (operations[i] == 'D') {
        //nếu là kí tự D thì nhân phần tử cuối cùng với 2
        list.add(list.last * 2);
      } else if (operations[i] == '+') {
        //nếu là kí tự + thì cộng phần từ cuỗi cùng và phần từ trước nó
        list.add(list.last + list.elementAt(list.length - 2));
      } else {
        list.add(int.parse(operations[i]));
      }
    }

    int sum = 0;
    for (int e in list) {
      sum += e;
    }
    return sum;
  }
}

//Bai3
class Solution3 {
  int dayOfYear(String date) {
      //tách chuỗi date bởi kí tự - để lấy ngày tháng năm
        List<String> listDate = date.split('-');
        final year  = int.parse(listDate[0]);
        final month = int.parse(listDate[1]);
        final day   = int.parse(listDate[2]);
        //tạo biến date1 kiểu datetime để tính ngày mồng 1 bắt đầu của năm
        final date1 = DateTime(year, 1, 1);
        //tạo biến date2 là chuỗi truyền vào
        final date2 = DateTime(year, month, day);

        ///trả về khoảng cách số ngày từ date1 tới date2
        ///sau đó cộng thêm 1 bởi vì hàm difference sẽ chỉ trả về khoảng cách
        ///số ngày, ví dụ 2023-01-01 tới 2023-01-02 thì hàm difference sẽ trả về là 1
        ///nhưng số ngày tới mồng 2 thì là 2 ngày. 
        return date2.difference(date1).inDays + 1;
  }
}

class Solution5 {
  bool isPowerOfFour(int n) {
    ///Nếu n = 1 thì trả về true luôn,
    if(n == 1) return true;
    int i = 0;
    while(true) {
        //khai báo 1 biến giữ giá trị của 4 mũ 1;
      final powValue = pow(4, i);
      //Nếu powValue lớn hơn n thì thoát khỏi vòng lặp trả về false
      if(powValue > n) break;
      //Nếu powValue bằng với n thì trả về true.
      if(powValue == n) return true; 
      i++;
    }
  return false;
  }
}