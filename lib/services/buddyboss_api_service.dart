import 'package:fetch/common/config/network_config.dart';
import 'package:fetch/models/service_item.dart';
import 'package:fetch/services/header_interceptor.dart';
import 'package:fetch/services/model_converter.dart';

import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

part 'buddyboss_api_service.chopper.dart';

@ChopperApi()
abstract class BuddybossApiService extends ChopperService {
  @Get(path: '$WP2/service_list')
  Future<Response<BuiltList<ServiceItem>>> getServices();

  @Get(path: '$WP2/service_list/{id}')
  Future<Response<ServiceItem>> getService(@Path('id') int id);

  static BuddybossApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      interceptors: [HeaderInterceptor(), HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
      services: [
        _$BuddybossApiService(),
      ],
    );
    return _$BuddybossApiService(client);
  }
}
