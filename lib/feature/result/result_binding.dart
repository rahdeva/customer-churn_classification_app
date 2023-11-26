import 'package:customerchurn_classification_app/feature/result/result_controller.dart';
import 'package:get/get.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ResultController>(ResultController());
  }
}
