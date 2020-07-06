main(List<String> args) {
  // 列表List
  var names = ["ad","wqe","we","we","we","we","we"];
  names.add("asda");
  names.remove("ad");
  names.removeAt(0);
  // 集合set 去重
  var movies = {"1","2","3"};
  // 去重
  names = Set<String>.from(names).toList();
  print(names);
  // 映射map 对应的是iOS中的dictionary
  var info = {
    "name" : "why",
    "key" : "value"
  };
}