import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});



  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(title: Text('add product'),),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Add new Product', style: TextStyle(fontSize: 20,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: ctrl.productNameCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text('Product Name'),
                      hintText: 'Enter Your product Name'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: ctrl.productDescriptionCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text('Product Description'),
                      hintText: 'Enter Your Product description'
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: ctrl.productImgCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text('Image Url'),
                      hintText: 'Enter Image Url'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: ctrl.productPriceCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text('Product Price'),
                      hintText: 'Enter Your product Price'
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Flexible(
                        child: DropdownBtn(
                      items: const ['Boots', 'Shoe', 'Beach Shoes', 'High heels'],
                      selectedItemText: ctrl.category,
                      onSelected: (selectedValue) {
                        ctrl.category = selectedValue ?? 'general';
                        ctrl.update();
                      },
                    )),
                    Flexible(
                        child: DropdownBtn(
                          items: ['Puma', 'Sketchers', 'Adidas', 'Clarks'],
                          selectedItemText: ctrl.brand,
                          onSelected: (selectedValue) {
                            ctrl.brand = selectedValue ?? 'un brand';
                            ctrl.update();
                          },
                        )),
                  ],
                ),
                Text('Offer product ?'),
                DropdownBtn(items: ['true', 'false'],
                  selectedItemText: ctrl.offer.toString(),
                  onSelected: (selectedValue) {
                    ctrl.offer = bool.tryParse(selectedValue ?? 'false') ?? false;
                    ctrl.update();
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      ctrl.addProduct();
                    }, child: Text('add product'))
              ],
            ),
          ),
        ),
      );
    });
  }
}
