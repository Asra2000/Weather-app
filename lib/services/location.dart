import 'package:geolocator/geolocator.dart';
class Location{
 double latitude;
 double longitude;
 Location(){
   latitude =0.0;
   longitude = 0.0;
 }
 Future<void> getCurrentLocation() async{
   try {
     Position position = await Geolocator().getCurrentPosition(
         desiredAccuracy: LocationAccuracy.low);
     latitude = position.latitude;
     longitude = position.longitude;
   }catch(e){
     print(e);
   }
 }
}