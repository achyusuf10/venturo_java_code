class AppRoutes {
  /// Memastikan bahwa class ini tidak bisa diinstansiasi
  AppRoutes._();

  /// Otentikasi
  static const String splashView = '/';
  static const String loginView = '/login';

  /// Home
  static const String dashboardView = '/dashboard';

  /// Menu dan Promo
  static const String detailPromoView = '/dashboard/detail-promo';
  static const String detailMenuView = '/dashboard/detail-menu';

  /// Cart
  static const String cartView = '/cart';
  static const String chooseVoucherView = '/cart/choose-voucher';
  static const String detailVoucherView = '/cart/choose-voucher/detail-voucher';

  /// Order
  static const String detailOrderView = '/order/detail-order';

  /// Review
  static const String reviewView = '/review/';
  static const String addReviewView = '/review/add-review';
  static const String replyReviewView = '/review/reply-review';

  /// Network Error
  static const String networkErrorView = '/network-error';
}
