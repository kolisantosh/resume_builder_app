import 'package:get/get.dart';
import 'common_controller.dart';

class NetworkBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CommonController>(() => CommonController());
  }

}