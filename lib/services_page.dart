import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

import 'package:built_collection/built_collection.dart';
import 'package:provider/provider.dart';
import 'services/buddyboss_api_service.dart';
import 'models/service_item.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APPBAR'),
      ),
      body: _serviceItems(context),
    );
  }

  FutureBuilder<Response> _serviceItems(BuildContext context) {
    return FutureBuilder<Response<BuiltList<ServiceItem>>>(
      future: Provider.of<BuddybossApiService>(context).getServices(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            print(snapshot.error);
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
          print('you are upto here');
          final services = snapshot.data.body;
          print(services);
          return _servicesPage(context, services);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _servicesPage(context, BuiltList<ServiceItem> services) {
    print('services length is : ${services.length}');
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(services[index].id.toString()),
          subtitle: Text('$index'),
        );
      },
    );
  }
}
