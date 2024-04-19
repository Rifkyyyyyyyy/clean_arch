import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/core/usecase/usecase.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/domain/repository/recipes_repo.dart';



// Dalam arsitektur MVVM (Model-View-ViewModel), class UseCaseImpl digunakan untuk mengimplementasikan logika bisnis 
// atau fitur-fitur tertentu dalam aplikasi. Use case adalah representasi dari satu fitur atau fungsionalitas yang dapat dilakukan oleh aplikasi.

// Contohnya, dalam sebuah aplikasi e-commerce, beberapa fitur yang mungkin di-handle oleh class UseCaseImpl adalah:

// - Mengambil daftar produk: Use case ini bertanggung jawab untuk mengambil daftar produk dari sumber data, seperti database atau API,
//   dan menyediakan data tersebut kepada ViewModel untuk ditampilkan ke pengguna.

// - Menambahkan produk ke keranjang belanja: Use case ini mengurus proses menambahkan produk ke dalam keranjang belanja. 
//   Ini mungkin melibatkan validasi data, interaksi dengan database atau API untuk menyimpan data keranjang belanja, dan memberi tahu ViewModel tentang hasilnya.

// - Memproses pembayaran: Use case ini mengurus proses pembayaran untuk pesanan yang telah dibuat oleh pengguna.
//   Ini mungkin melibatkan validasi data pembayaran, pengelolaan inventaris, interaksi dengan sistem pembayaran, dan memberi tahu ViewModel tentang hasilnya.

// - Mengelola sesi pengguna: Use case ini bertanggung jawab untuk mengelola sesi pengguna, seperti proses login, logout, atau validasi token otentikasi.
//   Ini mungkin melibatkan interaksi dengan server untuk otentikasi, menyimpan token sesi, dan memberi tahu ViewModel tentang status sesi pengguna.

// DIsini anda perlu mengimplementasikan abstract class dari post repository ,
// yang telah kita buat sebelumnya.

class UseCaseImpl implements Usecase<DataState<List<ProductEntity>>, void> {
  final PostRepository _postRepository;
  UseCaseImpl(this._postRepository);
  @override
  Future<DataState<List<ProductEntity>>> call({void params}) {
    return _postRepository.getData();
  }
}
