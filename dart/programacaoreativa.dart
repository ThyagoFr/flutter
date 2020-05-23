import "dart:html";
import "dart:async";

void main() {
  final ButtonElement button = querySelector("button");
  final InputElement input = querySelector("input");
  final DivElement div = querySelector("div");
  final validator = StreamTransformer.fromHandlers(
    handleData : (inputValue, sink) {
      if (inputValue.contains("@")) {
        sink.add(inputValue);
      } else {
        sink.addError("Enter a valida email");
      }
    }
  );
  
  input.onInput
    .map( (dynamic event) => event.target.value)
    .transform(validator)
    .listen( (value)  {
                        div.innerHtml = "Email correto";
                        div.style.color = "green";
                       },
              onError : (error) {
                div.innerHtml = error;
                div.style.color = "red";
              }
           );
    
}
