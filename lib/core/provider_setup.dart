 import 'package:flutter/material.dart';
import 'package:flutter_provider_arch/core/services/api.dart';
import 'package:flutter_provider_arch/core/services/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


List<SingleChildWidget> providers =[
  ..._independantService,
  ..._dependentService
];

List<SingleChildWidget> _independantService = [
  Provider.value(value: Api()),
];

List<SingleChildWidget> _dependentService = [
  ProxyProvider(
    update: (BuildContext context, Api api,
        AuthenticationService authenticationService) {
      return AuthenticationService(api: api);
    },
  ),
];
