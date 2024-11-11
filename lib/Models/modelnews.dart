class newmodel{
  List<dynamic>articels;
  newmodel({required this.articels});

 factory newmodel.fromjson(Map<String,dynamic>data){
   return newmodel(articels: data['articles']);
 }
}