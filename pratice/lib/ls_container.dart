import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:pratice/v.1/domain/repository/recipes_repo.dart';
import 'v.1/data/data_sources/remote.dart';
import 'v.1/data/repository/recipes_impl.dart';
import 'v.1/domain/usecase/usecase_impl.dart';
import 'v.1/presentation/bloc/post_bloc.dart';

// apa itu get it ?
// GetIt adalah library Dart untuk manajemen dependency injection,
// memungkinkan registrasi dan akses objek di seluruh aplikasi dengan mudah.

// lalu apa itu depency injection ?

// Sederhana nya Dependency injection (DI) adalah sebuah teknik dalam pemrograman yang memungkinkan objek-objek dalam sebuah aplikasi
// untuk saling berinteraksi tanpa membuat ketergantungan yang kuat di antara mereka.
// Dalam DI, ketergantungan dari sebuah objek disediakan oleh objek lain, biasanya melalui konstruktor, metode, atau properti.

// pada file ini kita akan mengaplikasikan penggunaan get it

final ls =
    GetIt.instance; // Instance GetIt untuk akses dependency di seluruh aplikasi

Future<void> init() async {
  // Didaftarkan objek Dio untuk kebutuhan HTTP
  ls.registerSingleton<Dio>(Dio());

  // Didaftarkan dependencies untuk API
  ls.registerSingleton<BelajarRetrofitService>(BelajarRetrofitService(ls()));

  // Didaftarkan repository untuk mengelola data dari API
  ls.registerSingleton<PostRepository>(PostRepositoryImpl(ls()));

  // Didaftarkan UseCase untuk menghubungkan UI dan Repository
  ls.registerSingleton<UseCaseImpl>(UseCaseImpl(ls()));

  // Didaftarkan Bloc untuk logika UI
  ls.registerFactory<ProductBloc>(() => ProductBloc(ls()));

  // disana terlihat ada perbedaan , apa itu? ya,benar , yaitu penggunaan singeltone dan factory , lalu apa perbedaannya ? 

  // Singleton: Ketika Anda mendaftarkan objek dengan metode registerSingleton, GetIt akan membuat sebuah instance dari objek tersebut saat pertama kali diambil, 
  // dan kemudian mengembalikan instance yang sama setiap kali objek tersebut diminta.
  // Artinya, hanya ada satu instance dari objek tersebut yang ada di aplikasi, dan itu akan digunakan kembali setiap kali diminta.

  // Factory: Ketika Anda mendaftarkan objek dengan metode registerFactory, GetIt akan membuat 
  // sebuah instance baru dari objek tersebut setiap kali diminta. Ini berarti,
  // setiap pemanggilan ke GetIt untuk objek tersebut akan menghasilkan instance yang berbeda
}
