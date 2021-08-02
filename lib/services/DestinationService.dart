import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mantap/Models/Destination.dart';


class DestinationService{
  CollectionReference destinationRef = FirebaseFirestore.instance.collection('destination');

  Future<List<DestinationModel>> fetchDestinations()async{

    try{
      QuerySnapshot result = await destinationRef.get();


      List<DestinationModel> destinations = result.docs.map((e){return DestinationModel.fromJson(e.id, e.data() as Map<String,dynamic>);}).toList();
    return destinations;
    }
    catch(e){
      throw e;
    }
  }
}