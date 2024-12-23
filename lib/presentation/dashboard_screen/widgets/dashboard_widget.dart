import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stadtplan/presentation/dashboard_screen/utils/marker_utils.dart';
import 'package:stadtplan/presentation/dashboard_screen/widgets/center_change_notifier.dart';
import 'package:stadtplan/presentation/dashboard_screen/widgets/map_widget.dart';
import 'package:stadtplan/presentation/home_screen/widgets/current_location/current_location_widget.dart';
import 'package:stadtplan/presentation/home_screen/widgets/map_filter/map_filter_widget.dart';
import 'package:stadtplan/presentation/home_screen/widgets/quick_filter/quick_filter_widget.dart';
import 'package:storage/main.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({
    super.key,
    required this.markerImageUtils,
    required this.userPreferences,
  });

  final MarkerUtils markerImageUtils;
  final UserPreferences userPreferences;

  @override
  State<StatefulWidget> createState() => DashboardWidgetState();
}

class DashboardWidgetState extends State<DashboardWidget> {
  CenterChangeNotifier centerChangeNotifier = CenterChangeNotifier();
  final GlobalKey<MapWidgetState> _mapKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _dashboardWidget();
  }

  Widget _dashboardWidget() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: <Widget>[
            MapWidget(
              key: _mapKey,
              centerChangeNotifier: centerChangeNotifier,
              markerImageUtils: widget.markerImageUtils,
              userPreferences: widget.userPreferences,
            ),
            Positioned(
              top: 100,
              right: 20,
              child: Column(
                children: <Widget>[
                  CurrentLocationWidget(
                    onPressed: () {
                      centerChangeNotifier.centerMe();
                    },
                  ),
                  MapFilterWidget(),
                ],
              ),
            ),
            QuickFilterWidget(),
          ],
        );
      },
    );
  }
}
