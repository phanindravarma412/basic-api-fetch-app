import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';


part 'service_item.g.dart';

abstract class ServiceItem implements Built<ServiceItem, ServiceItemBuilder> {
  int get id;

  ServiceItem._();

  factory ServiceItem([updates(ServiceItemBuilder b)]) = _$ServiceItem;

  static Serializer<ServiceItem> get serializer => _$serviceItemSerializer;
}
