// bai 5
class Solution {
  bool isMonotonic(List<int> nums) {
      //nếu chỉ có 1 phần tử thì trả về true luôn
    if(nums.length < 2) return true;

    //mặc định coi như là danh sách tăng dần
    bool isIncrement = true;
    //duyệt danh sách
    for(int i = 0; i < nums.length; i++) {
        if((i+1) >= nums.length) break;
        //nếu phần tử  đang duyệt mà lớn hơn phần tử kết tiếp nó thì 
        //thoát khỏi vòng for và thiệt lập danh sách không phải tăng dần mà là giảm dần.
        if( nums[i] > nums[i + 1] ) {
            isIncrement = false;
            break;
        }
    }
    //nếu danh sách là tăng dần
    if(!isIncrement) {
        //duyệt danh sách
        for(int i = 0; i < nums.length; i++) {
            //nếu phần từ tại i mà nhỏ hơn phẩn tử kế tiếp nó 
            //thì trả về false, vì danh sách tăng dần thì 
            //phần từ tại i phải nhỏ hơn phẩn tử kế tiếp nó 
            if( (i+1) < nums.length && nums[i] < nums[i + 1] ) {
                return false;
            }
        }
        return true;
    }

    //duyệt danh sách giảm dần 
    for(int i = 0; i < nums.length; i++) {
        //nếu phần từ tại i mà ln  hơn phẩn tử kế tiếp nó 
        //thì trả về false, vì danh sách giảm dần thì 
        //phần từ tại i phải lớn hơn phẩn tử kế tiếp nó
        if( (i+1) < nums.length && nums[i] > nums[i + 1] ) {
            return false;
        }
    }
    return true;
  }
}