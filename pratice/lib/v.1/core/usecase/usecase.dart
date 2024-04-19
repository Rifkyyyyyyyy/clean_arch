// Selanjutnya disini ada superclass Usecase, yang berarti Usecase di sini berperan sebagai superclass dan dapat diwariskan ke class anak.
// Ini adalah deklarasi sebuah abstract class yang bernama Usecase. Class ini memiliki dua parameter generik, yaitu Type dan Params.
// Parameter Type menunjukkan tipe data yang akan dikembalikan oleh use case, sedangkan Params adalah tipe data dari parameter yang dibutuhkan oleh use case.

abstract class Usecase<Type, Params> {
  Future<Type> call({Params params});
  //  Ini adalah deklarasi sebuah method abstract bernama call. Method ini mengembalikan sebuah Future dengan tipe data Type. 
  //  Method call menerima sebuah named parameter params dengan tipe data Params.
  //  Method ini bertujuan untuk menjalankan use case dengan memberikan parameter yang diperlukan dan mengembalikan hasilnya dalam bentuk Future.
}
