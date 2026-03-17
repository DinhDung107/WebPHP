# 🛒 Website Bán Hàng 

> Một dự án thương mại điện tử được xây dựng bằng thiết kế chuẩn mô hình MVC trong PHP và MySQL, chạy trên môi trường XAMPP. Được tích hợp thanh toán VNPAY và Đăng nhập Google.

## 📌 Tính năng chính
- **Client:** Xem sản phẩm, lọc theo danh mục, thêm vào giỏ hàng, đặt hàng (hỗ trợ thanh toán VNPAY), đăng nhập (có hỗ trợ Google Login).
- **Admin:** Quản lý kho hàng, duyệt đơn hàng, thống kê doanh thu.
- **Bảo mật:** Phân quyền User/Admin, mã hóa mật khẩu, sử dụng PDO để chống SQL Injection cơ bản.

## 💻 Công nghệ sử dụng
- **Ngôn ngữ:** PHP thuần hỗ trợ mô hình MVC
- **Database:** MySQL (MariaDB)
- **Kiến trúc:** Mô hình MVC (Model - View - Controller)
- **Thư viện bên ngoài:** Tích hợp tính năng qua thư mục `vendor/` (ví dụ: gửi mail, VNPAY...)
- **Công cụ:** XAMPP Control Panel

## 🚀 Hướng dẫn cài đặt trên XAMPP

### 1. Chuẩn bị
- Tải và cài đặt [XAMPP](https://www.apachefriends.org/index.html).
- Đảm bảo đã bật **Apache** và **MySQL** trong XAMPP Control Panel.
- Nếu dự án yêu cầu, hãy cài đặt **Composer** để cài thư viện vào thư mục `vendor`, hoặc dự án đã đi kèm sẳn `vendor`.

### 2. Copy mã nguồn
- Di chuyển thư mục dự án (chứa file `index.php` trong `datn-main`) vào đường dẫn: `C:\xampp\htdocs\`
- Khuyên dùng cấu trúc thư mục dạng: `C:\xampp\htdocs\datn-main\`

### 3. Cấu hình Database
1. Truy cập [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).
2. Tạo một cơ sở dữ liệu mới mang tên: `da`.
3. Chọn tab **Import**, tìm đến file `datn.sql` nằm ở thư mục gốc của dự án và nhấn **Go**.

### 4. Kết nối Database
Bạn có thể thay đổi cấu hình kết nối tại file `app/model/database.php`. Mặc định cấu hình như sau:
```php
private $servername = "localhost";
private $username = "root";
private $password = "";
private $dbname = "da";
```

### 5. Chạy ứng dụng
Mở trình duyệt và truy cập: http://localhost/datn-main/ (Thay đổi tùy vào tên thư mục bạn đặt trong htdocs)

📁 Cấu trúc thư mục dự án
```plaintext
├── admin/            # Trang quản trị
├── app/              # Chứa xử lý chính theo mô hình MVC (Controller, Model, View)
├── public/           # Tài nguyên tĩnh như CSS, JS, hình ảnh
├── vendor/           # Thư viện PHP được quản lý bởi Composer
├── datn.sql          # File script CSDL để Import
└── index.php         # Entry file (Trang chủ và Điều hướng - Router)
```

⌨️ Thực hiện bởi: **Nguyễn Đình Dũng**

---

## 💡 Lưu ý quan trọng cho dự án PHP:

1.  **File SQL:** Đừng quên import file `datn.sql` (nằm trực tiếp ngoài thư mục gốc). 
2.  **Thông tin đăng nhập Admin:** Vui lòng tìm kiếm tài khoản admin trong bảng `user` (hoặc `admin`) sau khi import CSDL. Nếu mật khẩu mã hóa MD5 / bcrypt thì hãy chú ý cách tạo mật khẩu.
3.  **Đường dẫn tuyệt đối:** Nếu code truy cập bị lỗi CSS/JS, hãy kiểm tra lại cấu hình tên thư mục trên url (ví dụ `localhost/datn-main`) đã đúng khớp với đường dẫn tĩnh hay chưa.
