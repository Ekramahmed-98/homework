import 'package:flutter/material.dart';
import 'package:homework/controller/Api/food_api_controller_http.dart';
import 'package:homework/model/food_model.dart';


class Dataapi extends StatefulWidget {
  const Dataapi({super.key});

  @override
  State<Dataapi> createState() => _DataapiState();
}

class _DataapiState extends State<Dataapi> {
  FoodApiControllerHttp foodApiControllerHttp = FoodApiControllerHttp();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController rateController =TextEditingController();

  FoodApiControllerHttp? _finalProjectHttp;
  bool checkPost = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('DataApi'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(Icons.notifications, size: 28),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: foodApiControllerHttp.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError || !snapshot.hasData) {
            return const Center(
              child: Text('لا توجد بيانات'),
            );
          } else {
            final datalist = snapshot.data!;
            return ListView.builder(
              itemCount: datalist.length,
              itemBuilder: (context, index) {
                final data = datalist[index];
                return InkWell(
                  onLongPress: () =>
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(seconds: 3),
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    setState(() => checkPost = true);
                                    await _finalProjectHttp!
                                        .deleteFood(data.id!);
                                    setState(() => checkPost = false);
                                  },
                                  icon: const Column(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        'Yes',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )),
                              Text(
                                'هل انت متاكد من حذف ${data.name}',
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ))),
                  onTap: () {
                    titleController.text = data.name!;

                    customShowDailog(
                      titleButton: 'Update data',
                      title: 'Update User',
                      onPressed: () {
                        Food foods = Food(
                            id: data.id!,
                            name: titleController.text,
                            price: double.parse(priceController.text),
                            rate: double.parse(rateController.text),
                            image: 'assets/images/sandwich.png'

                        );
                        foodApiControllerHttp!.putFood(foods , data.id!);
                        titleController.clear();
                        priceController.clear();
                        rateController.clear();
                        Navigator.pop(context);
                        setState(() {});
                      },
                    );
                  },
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(data.name.toString()),
                    subtitle: Row(
                      children: [
                        Text(data.price.toString()),
                        Text(data.rate.toString()),
                      ],
                    ),

                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          customShowDailog(
              title: 'add',
              titleButton: 'add user',
              onPressed: () async {
                if (titleController.text.isNotEmpty && priceController.text.isNotEmpty && rateController.text.isNotEmpty ) {
                  await foodApiControllerHttp!.postFood(
                      titleController.text, double.parse(priceController.text), double.parse(rateController.text));
                  titleController.clear();
                  priceController.clear();
                  rateController.clear();
                  Navigator.pop(context);
                  setState(() {});
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Center(child: Text('جميع الحققول مطلوبية'))));
                }
              });
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
    );
  }

  customShowDailog(
      {required String titleButton,
        required String title,
        required VoidCallback onPressed}) {
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            backgroundColor: Colors.white,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add User'),
              ],
            ),
            actions: [
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                  controller: titleController,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: 'title',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال البيانات';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'price',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال السعر';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 25,
              ),

              TextFormField(
                  controller: rateController,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'rate',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال البيانات';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 25,
              ),
              Center(
                  child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black12),
                      onPressed: onPressed,
                      child: Text(
                        titleButton,
                        style: const TextStyle(color: Colors.white),
                      ))),
              checkPost != false
                  ? const CircularProgressIndicator()
                  : Container(),
            ]
          ),
         );
      }
    }