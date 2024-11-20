import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'curved_nav_bar_model.dart';
export 'curved_nav_bar_model.dart';

class CurvedNavBarWidget extends StatefulWidget {
  const CurvedNavBarWidget({
    super.key,
    this.pageIndex,
  });

  final int? pageIndex;

  @override
  State<CurvedNavBarWidget> createState() => _CurvedNavBarWidgetState();
}

class _CurvedNavBarWidgetState extends State<CurvedNavBarWidget> {
  late CurvedNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurvedNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
