// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddyboss_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$BuddybossApiService extends BuddybossApiService {
  _$BuddybossApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BuddybossApiService;

  @override
  Future<Response<BuiltList<ServiceItem>>> getServices() {
    final $url = 'wp/v2/service_list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<ServiceItem>, ServiceItem>($request);
  }

  @override
  Future<Response<ServiceItem>> getService(int id) {
    final $url = 'wp/v2/service_list/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ServiceItem, ServiceItem>($request);
  }
}
