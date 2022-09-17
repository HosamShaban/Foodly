import 'dart:async';
import 'dart:collection';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:foodly/view/home/home_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController>  _controller = Completer();
  var markers = HashSet<Marker>();
  final List<LatLng> _latlng = [
    const LatLng(31.522682, 34.445498) , const LatLng(31.5185987,34.442649) , const LatLng(31.5185987,34.442649),
  ];


  final CustomInfoWindowController _customInfoWindowController =
    CustomInfoWindowController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData(){
    for(int i = 0; i<_latlng.length; i++){
      if(i%2 == 0) {
        markers.add(
            Marker(markerId: MarkerId(i.toString()),
                icon: BitmapDescriptor.defaultMarker,
                position: _latlng[i],
                onTap: () {
                  _customInfoWindowController.addInfoWindow!(
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://lh5.googleusercontent.com/p/AF1QipMjSMwslUDqfgPs32YM6wGBpnWrROtwBiv3rabk=w426-h240-k-no'),
                                  fit: BoxFit.fitWidth,
                                  filterQuality: FilterQuality.high,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      'مطعم ايطالينو',
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      softWrap: false,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                      '3 mi'
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  'بيتزا - وجبات سريعة - شاورما', maxLines: 2,)


                            ),
                          ],
                        ),

                      ),
                      _latlng[i],
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView(),));
                }
            )
        );
      }else{

        markers.add(
            Marker(markerId: MarkerId(i.toString()),
                icon: BitmapDescriptor.defaultMarker,
                position: _latlng[i],
                onTap: () {
                  _customInfoWindowController.addInfoWindow!(
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://lh5.googleusercontent.com/p/AF1QipPMXL71OF4I0q6hc1GpJ0PuwWp-_EpxbwkMcL6U=w328-h130-p-k-no'),
                                  fit: BoxFit.fitWidth,
                                  filterQuality: FilterQuality.high,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      'مطعم فهد',
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      softWrap: false,
                                    ),
                                  ),
                                   Spacer(),
                                  Text(
                                      '5 mi'
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  '  وجبات سريعة - شاورما', maxLines: 2,)
                            ),
                          ],
                        ),
                      ),
                      _latlng[i]
                  );
                }
            )
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            initialCameraPosition:
              const CameraPosition(target: LatLng(31.522682, 34.445498) , zoom: 14),
            onMapCreated: (GoogleMapController controller) {
              _customInfoWindowController.googleMapController = controller;

              _controller.complete(controller);
            },
            markers: markers,
            onTap: (position){
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position){
              _customInfoWindowController.onCameraMove!();
            },
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 300,
            offset: 35,
          )
        ],

      ),
    );
  }

}