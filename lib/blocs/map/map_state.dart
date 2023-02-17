part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isMapInitialized;
  final bool isFollowingUser;
  final bool showMyRoute;

  final Map<String, Polyline> polylines;
  final Map<String, Marker> markers;

  const MapState(
      {this.isMapInitialized = false,
      this.isFollowingUser = true,
      this.showMyRoute = true,
      Map<String, Marker>? markers,
      Map<String, Polyline>? polylines})
      : polylines = polylines ?? const {},
        markers = markers ?? const {};

  MapState copyWith(
          {bool? isMapInitialized,
          bool? isFollowingUser,
          bool? showMyRoute,
          Map<String, Polyline>? polylines,
          Map<String, Marker>? markers}) =>
      MapState(
          showMyRoute: showMyRoute ?? this.showMyRoute,
          isMapInitialized: isMapInitialized ?? this.isMapInitialized,
          isFollowingUser: isFollowingUser ?? this.isFollowingUser,
          polylines: polylines ?? this.polylines,
          markers: markers ?? this.markers);

  @override
  List<Object> get props =>
      [isMapInitialized, isFollowingUser, polylines, showMyRoute, markers];
}
