# Modul Pembelajaran: Studi kasus aplikasi E-commerce sederhana dengan mengunakan pola arsitektur Bersih Menggunakan Flutter bloc

Pendahuluan

Modul ini bertujuan untuk memberikan pemahaman tentang pengembangan aplikasi Flutter menggunakan pola arsitektur bersih (Clean Architecture) dengan bahasa pemrograman dart. 
Modul ini akan membahas konsep arsitektur bersih, implementasi pola tersebut dalam pengembangan aplikasi e-commerce, serta penggunaan beberapa paket Flutter populer seperti Retrofit, Get_it, dan Dio.

## Pengenalan Arsitektur Bersih 
![0_wOvdAp6-3CXkYSXQ](https://github.com/Rifkyyyyyyyy/package_hell/assets/129695871/58178601-f4a3-4c21-8a1e-e5b33067faea)

- Arsitektur Bersih (Clean Architecture) adalah suatu pendekatan dalam pengembangan perangkat lunak yang menekankan pemisahan antara konsep bisnis (core business logic) dari detail 
  implementasi teknis, sehingga memungkinkan aplikasi untuk menjadi lebih terstruktur, fleksibel, dan mudah diuji. Arsitektur bersih berfokus pada pemisahan konsep bisnis inti dari 
  detail teknis seperti framework, database, atau perangkat keras tertentu.

## Konsep dan Prinsip Arsitektur Bersih 

- Pemisahan Concerns: Arsitektur bersih memisahkan konsep bisnis inti dari detail teknis implementasi, sehingga memungkinkan perubahan di satu bagian tanpa harus memengaruhi bagian 
  lainnya.
- Ketergantungan Terbalik: Arsitektur bersih mengikuti prinsip ketergantungan terbalik, di mana lapisan-lapisan yang lebih dalam tidak boleh bergantung pada lapisan-lapisan yang lebih 
  luar.
- Lapisan-lapisan: Arsitektur bersih terdiri dari beberapa lapisan, seperti Domain, Data, dan Presentasi, yang masing-masing memiliki tanggung jawabnya sendiri.
- Prinsip SOLID: Arsitektur bersih menerapkan prinsip-prinsip SOLID (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion) untuk 
  memastikan desain yang baik dan mudah dipelihara.

##  Manfaat Penggunaan Arsitektur Bersih dalam Pengembangan Aplikasi 

- Terstruktur: Arsitektur bersih membantu mengatur kode menjadi terstruktur dan mudah dimengerti.
- Fleksibel: Dengan pemisahan yang jelas antara lapisan-lapisan, aplikasi menjadi lebih fleksibel terhadap perubahan dan pengembangan lebih lanjut.
- Mudah Diuji: Pemisahan konsep bisnis inti memungkinkan pengujian unit yang lebih baik dan lebih mudah dilakukan.
- Skalabilitas: Arsitektur bersih memudahkan dalam menambahkan fitur baru atau memperluas aplikasi tanpa harus mengubah struktur dasar aplikasi.

##  Struktur Aplikasi 

Lapisan-lapisan dalam arsitektur bersih meliputi:

- Domain Layer: Merupakan inti dari aplikasi yang berisi aturan bisnis, entitas, dan logika aplikasi yang tidak bergantung pada detail implementasi teknis. Lapisan ini harus bersih dari 
  ketergantungan luar.
- Data Layer: Bertanggung jawab untuk mengelola data aplikasi, termasuk akses ke database, API, atau sumber data eksternal lainnya. Lapisan ini berkomunikasi dengan domain layer.
- Presentasi Layer: Menangani tampilan pengguna dan interaksi pengguna. Lapisan ini berkomunikasi dengan domain layer dan menggunakan data dari data layer untuk ditampilkan kepada 
  pengguna.
  
