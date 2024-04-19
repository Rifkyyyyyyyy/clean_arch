enum AppEndpoints {
  initial,
  homepage,
  profile,
  cart,
  productPage,
}

String pathEndpoint({required AppEndpoints endpoints, String? params}) {
  String path = '';
  switch (endpoints) {
    case AppEndpoints.initial:
      path = '/#';
      break;

    case AppEndpoints.homepage:
      path = '/homepage';
      break;
    case AppEndpoints.profile:
      path = '/profile';
      break;

    case AppEndpoints.cart:
      path = '/cart';
      break;
    case AppEndpoints.productPage:
      params != null
          ? path = '/productPage/${Uri.encodeComponent(params)}'
          : path = '/productPage';

      break;
  }
  return path;
}
