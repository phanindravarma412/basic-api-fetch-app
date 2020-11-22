import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

import 'package:fetch/models/serializers.dart';

class ModelConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    final dynamicRequest = super.convertRequest(request.copyWith(
        body: serializers.serializeWith(
            serializers.serializerForType(request.body.runtimeType),
            request.body)));

    print("dynamicRequest.url");
    print(dynamicRequest.url);
    print("dynamicRequest.body");
    print(dynamicRequest.body);
    print("dynamicRequest.headers");
    print(dynamicRequest.headers);
    print("dynamicRequest.parameters");
    print(dynamicRequest.parameters);

    return dynamicRequest;
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
      Response response) {
    final Response dynamicResponse = super.convertResponse(response);
    final BodyType customBody =
        _convertToCustomObject<SingleItemType>(dynamicResponse.body);

    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {
    if (element is SingleItemType) return element;

    if (element is List) {
      return _deserializeListOf<SingleItemType>(element);
    } else {
      return _deserialize<SingleItemType>(element);
    }
  }

  BuiltList<SingleItemType> _deserializeListOf<SingleItemType>(
    List dynamicList,
  ) {
    return BuiltList<SingleItemType>(
      dynamicList.map(
        (element) => _deserialize<SingleItemType>(element),
      ),
    );
  }

  SingleItemType _deserialize<SingleItemType>(Map<String, dynamic> value) {
    return serializers.deserializeWith(
        serializers.serializerForType(SingleItemType), value);
  }
}
