import 'package:flutter/material.dart';
import 'package:friendly_payment/app/core/providers/base_page_provider.dart';
import 'package:provider/single_child_widget.dart';

class BaseModuleProvider {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  BaseModuleProvider({
    required Map<String, WidgetBuilder> routers,
    List<SingleChildWidget>? bindings,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(
          key,
          (_) => BasePageProvider(
            bindings: _bindings,
            page: pageBuilder,
          ),
        ));
  }
}
