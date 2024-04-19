// selanjutnya disini anda mengintegrasikan logika retrofit anda .

// jangan lupa import package nya dulu

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../constant/constant.dart';
import '../model/product_model.dart';

// anda membutuhkan anotasi part untuk membuat file hasil generate yang akan kita build nanti.
part 'remote.g.dart';

// jangan lupa untuk membuat dekorator, Anotasi @RestApi digunakan untuk menandai kelas BelajarRetrofitService sebagai kelas Retrofit API.
@RestApi(baseUrl: BaseUrl.baseUrl)
abstract class BelajarRetrofitService {
  // selanjutnya anda perlu menggunakan  factory constructor untuk membuat objek. Namun, dalam hal ini,
  // kita tidak mendefinisikan logika pembuatan objek secara langsung di dalam factory constructor itu sendiri
  factory BelajarRetrofitService(Dio dio) = _BelajarRetrofitService;

  // jangan lupa untuk menambahkan path yang akan kita eksekusi , dan sesuaikan dengan methodenya.
  // pada kasus saya , saya hanya menggunakan get
  @GET('/products')
  Future<HttpResponse<List<ProductModel>>> getData(); // karna disini kita tidak membutuhkan query , jadi kita tidak perlu menambahkannya , jika perlu maka anotasinya akan seperi berikut :

        // @GET('/posts/id/name')
  // Future<HttpResponse<List<PostModel>>> getData({
  //   @Query('id') int ? id ,
  //   @Query('name') String ? name
  // }); 
}


// jika sudah jangan lupa command flutter pub run build_runner build di cli