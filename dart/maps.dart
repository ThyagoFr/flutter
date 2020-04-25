main() {
  Map <String,dynamic> maps = {
    "nome" : "Thyago Freitas",
    "idade" : 27,
    "cidade" : "Pindoretama",
    "estado" : "CE",
  };
  print(maps);
  
  // Iterando

  // FOR - IN
  for (String key in maps.keys) {
    print("Key : $key, Value : ${maps[key]} ");
  }

  // FOR EACH

  maps.forEach( (k,v) => print(k.toString() + " " + v.toString()));
}