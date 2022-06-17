// import 'dart:async';
//
//
// import 'package:flutter/material.dart';
//
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:get/get_utils/src/extensions/internacionalization.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class MapScreen extends StatefulWidget {
//
//
//
//   MapScreen({Key? key}) : super(key: key);
//
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   TextEditingController searchController = new TextEditingController();
//   TextEditingController controller = TextEditingController();
//   TextEditingController locationController = TextEditingController();
//
//
//
//
//   LatLng latlong = null;
//   late CameraPosition _cameraPosition;
//   late GoogleMapController _googleMapController;
//
//   Map Set_markers = {};
//
//   @override
//   void initState() {
//     _getCurrentLocation();
//     _cameraPosition = CameraPosition(target: LatLng(0, 0), zoom: 10.0);
//     super.initState();
//   }
//
//   List results = [];
//
//   Set<Marker> markers = {};
//
//   late double latitude,longitude;
//
//
//   late Position _currentPosition;
//
//   String _currentAddress = '', lat = '', lng = '', city = '',state='',postal_code='';
//
//   // Widget _searchLocation() {
//   //   return GooglePlaceAutoCompleteTextField(
//   //       textEditingController: searchController,
//   //       googleAPIKey: "AIzaSyAbgWTyuXJbZtehcat3VvAsHE3FyapBVDs",
//   //       inputDecoration: InputDecoration(
//   //         border: InputBorder.none,
//   //         hintText: StringConstants.SEARCH.tr,
//   //         hintStyle: TextStyle(
//   //           color: ColorConstants.colorNewLightGray,
//   //           fontSize: 14,
//   //           fontFamily: "Inter",
//   //           fontWeight: FontWeight.w400,
//   //         ),
//   //       ),
//   //       textStyle: TextStyle(
//   //         color: ColorConstants.bookysTextMain,
//   //         fontSize: 14,
//   //         fontFamily: "Inter",
//   //         fontWeight: FontWeight.w400,
//   //       ),
//   //       debounceTime: 800,
//   //       // default 600 ms,
//   //       countries: ["in", "fr"],
//   //       isLatLngRequired: true,
//   //       getPlaceDetailWithLatLng: (Prediction prediction) {
//   //         print("placeDetails" + prediction.lng.toString());
//   //         lat = prediction.lat;
//   //         lng = prediction.lat;
//   //
//   //
//   //         _googleMapController.animateCamera(
//   //           CameraUpdate.newCameraPosition(
//   //             CameraPosition(
//   //               target: LatLng(double.parse(prediction.lat), double.parse(prediction.lng)),
//   //               zoom: 18.0,
//   //             ),
//   //           ),
//   //         );
//   //
//   //       },
//   //       itmClick: (Prediction prediction) async {
//   //
//   //         searchController.text = prediction.description;
//   //         searchController.selection = TextSelection.fromPosition(
//   //             TextPosition(offset: prediction.description.length));
//   //       });
//   // }
//
//   _getCurrentLocation() async {
//     await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
//         .then((Position position) async {
//       setState(() {
//         _currentPosition = position;
//         print('CURRENT POS: $_currentPosition');
//         _googleMapController.animateCamera(
//           CameraUpdate.newCameraPosition(
//             CameraPosition(
//               target: LatLng(position.latitude, position.longitude),
//               zoom: 18.0,
//             ),
//           ),
//         );
//       });
//       await _getAddress();
//     }).catchError((e) {
//       print(e);
//     });
//   }
//
//   _getAddress() async {
//     try {
//       List<Placemark> p = await placemarkFromCoordinates(
//           _currentPosition.latitude, _currentPosition.longitude);
//
//       Placemark place = p[0];
//
//       setState(() {
//         _currentAddress =
//         "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";
//
//         city = place.locality;
//
//         lat = _currentPosition.latitude.toString();
//         lng = _currentPosition.longitude.toString();
//
//         postal_code = place.postalCode;
//         state = place.street;
//
//         searchController.text = _currentAddress;
//
//         print("------------>" + _currentAddress);
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             MapPicker(
//               mapPickerController: mapPickerController,
//               iconWidget: Image.asset(
//                 'assets/images/ic_green_marker.png',
//                 height: 35,
//                 width: 35,
//               ),
//               child: GoogleMap(
//                 markers: Set<Marker>.from(markers),
//                 mapType: MapType.normal,
//                 myLocationEnabled: true,
//                 myLocationButtonEnabled: false,
//                 initialCameraPosition: _kGooglePlex,
//                 zoomControlsEnabled: false,
//                 onMapCreated: (GoogleMapController controller) {
//                   _controller.complete(controller);
//                   _googleMapController = controller;
//                 },
//                 onCameraMoveStarted: () {
//                   // notify map is moving
//                   mapPickerController.mapMoving();
//                 },
//                 onCameraMove: (cameraPosition) {
//                   this._cameraPosition = cameraPosition;
//                 },
//                 onCameraIdle: () async {
//                   // notify map stopped moving
//                   mapPickerController.mapFinishedMoving();
//                   List<Placemark> p = await placemarkFromCoordinates(
//                       _cameraPosition.target.latitude,
//                       _cameraPosition.target.longitude);
//
//                   Placemark place = p[0];
//
//                   setState(() {
//                     _currentAddress =
//                     "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";
//                     searchController.text = _currentAddress;
//
//                     city = place.locality;
//                     state = place.street;
//
//                     lat = _cameraPosition.target.latitude.toString();
//                     lng = _cameraPosition.target.longitude.toString();
//
//                     print("------------>" + _currentAddress);
//                     print("------------>" + place.locality);
//                     print("------------>lo" + place.subLocality);
//                   });
//                 },
//               ),
//             ),
//             Column(
//               children: [
//                 Container(
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: 0.06.sw,
//                         right: 0.06.sw,
//                         top: 0.03.sw,
//                         bottom: 0.03.sw),
//                     child: Row(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                               padding: EdgeInsets.all(0.03.sw),
//                               height: 0.10.sw,
//                               width: 0.10.sw,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Colors.white,
//                                   boxShadow: [
//                                     new BoxShadow(
//                                       color: Colors.grey.withOpacity(.20),
//                                       blurRadius: 10.0,
//                                     ),
//                                   ]),
//                               child: MyImageAssets(
//                                   ImageConstants.icBack, 0.1.sw, 0.1.sh)),
//                         ),
//                         Expanded(child: Container()),
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: double.infinity,
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   decoration: BoxDecoration(
//                       color: ColorConstants.white,
//                       borderRadius: BorderRadius.circular(5),
//                       boxShadow: [
//                         new BoxShadow(
//                           color: Colors.grey.withOpacity(.20),
//                           blurRadius: 10.0,
//                         ),
//                       ]),
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(20),
//                         child: Text(
//                           'Please choose the location of where the staff member should work.',
//                           style: TextStyle(
//                               color: Color(0xff858585),
//                               fontSize: 11,
//                               fontWeight: FontWeight.normal,
//                               fontFamily: "Inter"),
//                         ),
//                       ),
//                       Container(
//                         height: 55,
//                         padding: EdgeInsets.symmetric(horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: ColorConstants.white,
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                                 color: ColorConstants.bookysMain, width: 1)),
//                         child: Row(
//                           children: [
//                             Expanded(child: _searchLocation()),
//                             SizedBox(
//                               width: 15,
//                             ),
//                             Icon(
//                               Icons.search,
//                               color: ColorConstants.bookysMain,
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Positioned.fill(
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: InkWell(
//                           onTap: () {
//                             _getCurrentLocation();
//                           },
//                           child: Container(
//                             margin: EdgeInsets.all(20),
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                                 color: ColorConstants.white,
//                                 borderRadius: BorderRadius.circular(12),
//                                 boxShadow: [
//                                   new BoxShadow(
//                                     color: Colors.grey.withOpacity(.20),
//                                     blurRadius: 10.0,
//                                   ),
//                                 ]),
//                             child: Icon(
//                               Icons.my_location,
//                               color: ColorConstants.bookysMain,
//                               size: 25,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.symmetric(horizontal: 20),
//                         child: InkWell(
//                           child: MyRoundButton(
//                               'Set',
//                               double.infinity,
//                               0.070.sh,
//                               0.02.sw,
//                               0.02.sw,
//                               0.0,
//                               18.sp,
//                               ColorConstants.bookysMain,
//                               ColorConstants.colorWhite,
//                               ColorConstants.bookysMain,
//                               ColorConstants.bookysMain,
//                               FontWeight.w600,
//                               false),
//                           onTap: () {
//
//
//                             print("-------------------->$state");
//
//                             if (widget.isFrom != null) {
//                               addEmployeController.last_use_address.value =
//                                   _currentAddress;
//                               addEmployeController.last_use_lat.value = lat;
//                               addEmployeController.last_use_lng.value = lng;
//                               addEmployeController.last_city.value = city;
//
//                               print(
//                                   '------->${addEmployeController.last_use_address.value}');
//
//                               switch (widget.isFrom) {
//                                 case 'home_address':
//                                   addEmployeController.home_address_location.value =
//                                       _currentAddress;
//                                   addEmployeController.home_address_lat.value = lat;
//                                   addEmployeController.home_address_lng.value = lng;
//                                   break;
//                                 case 'home_address_addition':
//                                   addEmployeController
//                                       .home_address_addition_location
//                                       .value = _currentAddress;
//                                   addEmployeController
//                                       .home_address_addition_lat.value = lat;
//                                   addEmployeController
//                                       .home_address_addition_lng.value = lng;
//
//                                   print(
//                                       "--------------->${addEmployeController.home_address_addition_location.value}");
//                                   break;
//                                 case 'company_address':
//                                   addEmployeController.company_address_location
//                                       .value = _currentAddress;
//                                   addEmployeController.company_address_lat.value =
//                                       lat;
//                                   addEmployeController.company_address_lng.value =
//                                       lng;
//                                   break;
//                                 case 'company_address_addition':
//                                   addEmployeController
//                                       .company_address_addition_location
//                                       .value = _currentAddress;
//                                   addEmployeController
//                                       .company_address_addition_lat.value = lat;
//                                   addEmployeController
//                                       .company_address_addition_lng.value = lng;
//                                   break;
//                                 case 'event':
//                                   eventController.location.value = _currentAddress;
//                                   eventController.latitude.value = lat;
//                                   eventController.longitude.value = lng;
//                                   eventController.state.value = state;
//                                   eventController.city.value = city;
//                                   eventController.postal_code.value = postal_code;
//                                   break;
//                                 case 'event_staff':
//                                   eventController.locationStaff.value = _currentAddress;
//                                   eventController.latitudeStaff.value = lat;
//                                   eventController.longitudeStaff.value = lng;
//                                   eventController.stateStaff.value = state;
//                                   eventController.cityStaff.value = city;
//                                   eventController.postal_codeStaff.value = postal_code;
//                                   break;
//                               }
//                             } else {
//                               mapController.lat.value = lat;
//                               mapController.lng.value = lng;
//                               mapController.location.value = _currentAddress;
//                               mapController.last_use_address.value =
//                                   _currentAddress;
//                               mapController.last_use_lat.value = lat;
//                               mapController.last_use_lng.value = lng;
//                               mapController.last_city.value = city;
//                             }
//
//                             Get.back();
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: 25,
//                       )
//                     ],
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
