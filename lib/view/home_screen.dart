import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/card_controller.dart';
import '../model/medicine_model.dart';
import '../style/const.dart';
import 'cart_screen.dart';
import 'package:badges/badges.dart' as badges;
import 'medicine_details.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Medicine',
          style: kTextStyle,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(() => GestureDetector(
              onTap: () => Get.to(CartScreen()),
              child: badges.Badge(
                badgeContent: Text(controller.totalItems.toString()),
                badgeColor: kBadgeColor,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              ),
            )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: medicineList.length,
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5),
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Get.to(MedicineDetails(medicine: medicineList[index]));
                    },
                    child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(0, 3)
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            Image.asset(medicineList[index].image.toString(),height: 120,),
                            const SizedBox(height: 5,),
                            Text(medicineList[index].name.toString()),
                            const SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  Text('৳${medicineList[index].regularPrice ?? ' '}',style: const TextStyle(decoration: TextDecoration.lineThrough),),
                                  Text('৳ ${medicineList[index].salePrice ?? ' '}'),
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                })
          ],
        ),
      ),
    );
  }
}