# Tugas 7 : Elemen Dasar Flutter
### Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023
#
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless Widget Adalah: widget yang hanya bertugas untuk menampilkan sesuatu secara statis. Tanpa melakukan tracking perubahan data dari waktu ke waktu.

Intinya, tampilan dari stateless widget akan seperti itu-itu saja dan tidak ada mekanisme untuk memantau state perubahan aplikasi. Itu lah kenapa ia dikatakan stateless.

Stateful widget adalah widget yang dinamis atau dapat berubah. Berbanding terbalik dengan stateless, stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris dll. Jadi dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget

jadi Jika kita ingin membuat komponen sederhana dan bersifat statis maka Stateless Widget adalah pilihan yang tepat. Tetapi apabila membutuhkan komponen yang dinamis maka gunakan stateful widget
#
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
MaterialApp(): adalah sebuah parent dimana yang diapitnya akan menerapkan style material design. Selain itu, dia juga memiliki control untuk mengatur route, theme, supported locales, dan lain sebagainya

Scaffold() : Sebagai Landasan Halaman

AppBar() : untuk membuat sebuah bar pada aplikasi, salah satu contohnya adalah menampilkan teks

Text() : menampilkan teks dan memberikan style pada teks

Center() : semua Widget yang ada didalam Widget ini akan diletakkan di bagian tengah

Container() : berfungsi untuk membungkus atau sebagai tempat dari child – child dari berbagai tipe. dan dapat diberikan suatu nilai feature seperti padding, decorations, colour, alignment, transform dan lain-lain.

Stack() : untuk memberikan kebebasan dan kemudahan terhadap programmer untuk mengatur tata letak dari children widget yang terdapat dalam widget stack pada tugas ini untuk menampilkan 2 buah button FloatingAcitonButton

Padding() : untuk memberikan padding / jarak pada content dalam tugas ini memberikan jarak antara FloatingAcitonButton

Icon() : untuk menampilkan sebuah Icon, pada tugas ini untuk menampilkan Icon '+' dan '-'

Column() : agar tampilan menjadi vertikal

BoxDecoration() : untuk mendekorasi ulang sebuah widget, pada tugas ini untuk mengubah warna pada AppBar

LinearGradient() : untuk menambahkan warna secara gradient pada AppBar, pada tugas ini menambahkan warna biru diseblah kiri dan merah disebelah kanan
#
### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
merencanakan suatu pembaruan ke suatu state objek komponen. Ketika state berubah, komponen merespons dengan me-render ulang. jika sebuah state yang ingin diubah tidak terdapat dalam setState() maka perubahan itu tidak akan terjadi 
#
### Jelaskan perbedaan antara const dengan final.
final dan const merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. 
perbedaan nya adalah pada inisiasi sebuamembuat sebuah  nilai dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.
Sumber
#
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. pertama saya membuat FlutterApp bernama counter_7 dengan cara flutter create counter_7
2. mengubah title yang terdapat pada class StatelessWidget menjadi 'ProgramCounter'
3. menambahkan fungsi _decrementCounter() dan membuat setState() yang berfungsi untuk mengurangi nilai dari _counter dengan menginisiasi jika _counter lebih dari 0 maka nilai counter--
4. menambahkan teks Const 'Ganjil' dan 'Genap' dan memberi warna pada kedua teks tersebut 
5. menghandle agar tidak terjadi nilai _counter minus dengan  _counter kurang dari 0 maka icons '-' tidak akan muncul dilayar
#

# Tugas 8 : Flutter Form
#
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedannya adalah saat perpindahan layer, navigator.push menambahkan rute lain keatas tumpukan screen (stack), sedangkan navigator.pushReplacement tidak menimpa layer sebelumnya melainkan mengganti dengan layer itu sendiri yang ditunjuk oleh page dari navigator.pushReplacement.
#
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
1. Drawer() berfungsi untuk menambahkan panel yang terdapat pada sisi kiri aplikasi guna melakukan perpindahan layer yang kita ingingkan.
2. Column, Padding, Center, Row() berfungsi untuk mengatur posisi widget 
3. DrawerHeader() berfungsi untuk menambahkan header pada drawer untuk memisahkan list drawer yg kita buat.
4. BoxDecoration() berfungsi untuk menambahkan sebuah kotak pada DrawerHeader guna memberi jarak dari list drawer.
5. Text() berfungsi untuk menampilkan sebuah teks.
6. LisTile() berfungsi untuk menambahkan komponen layer yang terdapat pada drawer.
7. Icon() berfungsi untuk menambahkan sebuah icon.
8. TextButton() berfungsi untuk menambahkan button text
9. dropDownButton() berfungsi untuk membuat tampilan yang menumpuk didalamnya guna memilih input yang tersedia.
10. showDatePicker() berfungsi nuntuk menampilkan sebuah date.
11. TextStyle() berfungsi untuk menambahkan style yang kita inginkan pada text tersebut.
12. DateFormat() berfungsi untuk memformat sebuah date yang kita inginkan.
#
### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
1. onSaved()
2. onChanged()
3. onPressed()
#
### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
yaitu dengan cara menimpa layer sebelumnya dengan methode navigator.push dan bisa juga berpindah layer yang dituju tanpa menimpa dengan method navigator.pushReplacement.
#
### elaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. membuat file drawer.dart untuk menerapkan template drawer pada setiap file yang kita inginkan. disini saya menambahkan pada file main, form dan data.dart.
2. membuat file form.dart untuk membuat input masukan user dan membuat widget yang dibutuhkan pada file form.dart tersebut serta menimpannya.
3. membuat file data.dart untuk menampilkan hasil inputan user yang disimpan pada form.dart. 

