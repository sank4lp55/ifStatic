import 'package:get/get.dart';
import 'package:ifstatic/backend_interface.dart';
import 'package:ifstatic/models/get_restaurents_request_model.dart';
import 'package:ifstatic/models/get_restaurents_response_model.dart';

class GetRestaurentsController extends GetxController {
  var isLoading = false.obs;
  GetRestaurentsResponseModel modelTemp = GetRestaurentsResponseModel();

  @override
  void onInit() async {
    super.onInit();
    getRestaurentsData();
  }

  Future<void> getRestaurentsData() async {
    try {
      isLoading(true);
      GetRestaurentsRequestModel model =
          GetRestaurentsRequestModel(lat: 25.22, lng: 45.32);
      modelTemp = await BackendInterface.getRestaurents(model);
    } finally {
      isLoading(false);
    }
    return;
  }
}
