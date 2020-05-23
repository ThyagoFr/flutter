import "dart:async";

void main() {
  final controller = StreamController();
  Order order = Order("chocolate");
  final baker = new StreamTransformer.fromHandlers(
    handleData : (cakeType, sink) {
      if (cakeType == "chocolate") {
        sink.add(new Cake());
      } else {
        sink.addError("I cant bake that type!!!");
      }
    }
  );
  
  controller.sink.add(order);
  controller.stream
            .map( (order) =>  order.type )
            .transform(baker)
            .listen(
                    (cake) => print("Here your cake $cake"),
    onError : (err) => print(err)
  );

}

class Cake {}

class Order {
  String type;
  Order(this.type);
}
