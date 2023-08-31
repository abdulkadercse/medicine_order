import 'package:get/get.dart';

class MedicineModel {
  int? id;
  String? name;
  String? companyName;
  String? regularPrice;
  String? salePrice;
  String ? image;

  MedicineModel({
    required this.id,
    required this.name,
    required this.companyName,
    required this.regularPrice,
    required this.salePrice,
    required this.image
  });

  final quantity = 0.obs;
  final isInCart = false.obs;
}

List<MedicineModel> medicineList = [
  MedicineModel(
    id: 1,
    name: 'E-Cap 400',
    companyName: 'Drug International Ltd.',
    regularPrice: '105.00',
    salePrice: '94.50',
    image: "images/ecap.png"
  ),
  MedicineModel(
    id: 2,
    name: 'Napa 500 mg',
    companyName: 'Beximco Pharmaceuticals Ltd.',
    regularPrice: '12.00',
    salePrice: '10.80',
    image: "images/napa.png"
  ),
  MedicineModel(
    id: 3,
    name: 'Napa EXTRA',
    companyName: 'Beximco Pharmaceuticals Ltd',
    regularPrice: '30.00',
    salePrice: '27.00',
    image: "images/napaextra.png"
  ),
  MedicineModel(
    id: 4,
    name: 'Seclo 20 mg',
    companyName: 'Square Pharmaceuticals Ltd',
    regularPrice: '60.00',
    salePrice: '54.00',
      image: "images/seclo.png"
  ),
  MedicineModel(
    id: 5,
    name: 'Calbo D 500 mg',
    companyName: 'Square Pharmaceuticals Ltd',
    regularPrice: '240.00',
    salePrice: '216.21',
      image: "images/calbo.png"
  ),
  MedicineModel(
    id: 6,
    name: 'Coralcal-D 500 mg',
    companyName: 'Radiant Pharmaceuticals Ltd',
    regularPrice: '240.00',
    salePrice: '200.00',
      image: "images/coralcal.png"
  ),
  MedicineModel(
    id: 7,
    name: 'Ceevit 250 mg',
    companyName: 'Square Pharmaceuticals Ltd',
    regularPrice: '19.00',
    salePrice: '17.10',
      image: "images/ceevit.png"
  ),
  MedicineModel(
    id: 8,
    name: 'Coralcal-DX 600 mg',
    companyName: 'Radiant Pharmaceuticals Ltd',
    regularPrice: '160.00',
    salePrice: '147.78',
    image: "images/coralcaldx.png"
  ),
  MedicineModel(
    id: 9,
    name: 'Napa 120 mg',
    companyName: 'Beximco Pharmaceuticals Ltd',
    regularPrice: '35.00',
    salePrice: '31.51',
      image: "images/napasyrup.png"
  ),
  MedicineModel(
    id: 10,
    name: 'Xinc B',
    companyName: 'Eskayef Pharmaceuticals Ltd',
    regularPrice: '105.00',
    salePrice: '95.38',
      image: "images/xincb.png"
  ),
];