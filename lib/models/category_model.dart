class CategoryModel {
  String id;
  String name;
  String imageName;

  CategoryModel({
    required this.id,
    required this.name,
    required this.imageName,
  });
  static List<CategoryModel> categories =[
    CategoryModel(id: 'category1' , name: 'Plumbing', imageName: 'assets/images/category1.png'),
    CategoryModel(id: 'category2' , name: 'Renovation', imageName: 'assets/images/category2.png'),
    CategoryModel(id: 'category3' , name: 'Painting', imageName: 'assets/images/category3.png'),
    CategoryModel(id: 'category4' , name: 'Roofing', imageName: 'assets/images/category4.png'),
    CategoryModel(id: 'category5' , name: 'Electrical', imageName: 'assets/images/category5.png'),
    CategoryModel(id: 'category6' , name: 'Carpentry', imageName: 'assets/images/category6.png'),


  ];
}
