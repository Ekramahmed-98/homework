
import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework/model/food_model.dart';
import 'package:sqflite/sqflite.dart'as sql;
import '../controller/Database/database.dart';





class AddDataDatabase extends StatefulWidget {
  const AddDataDatabase({super.key});

  @override
  State<AddDataDatabase> createState() =>
      _AddDataDatabaseState();
}

class _AddDataDatabaseState extends State<AddDataDatabase> {
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Insert dataBase'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 25),
            TextFormField(
              controller: titleController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Title';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your price';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async {
                final food = Food(
                  id: 0,
                  name: titleController.text,
                  image: 'assets/images/Ellipse 20 (5).png',
                  price: double.parse(priceController.text),
                  rate: double.parse(rateController.text)
                );
                await Database.insertFood(food);
                dev.log('save on database');
                setState(() {});
              },
              child: const Text('Save'),
            ),
            FutureBuilder<List<Map<String, dynamic>>>(
              future: Database.getFood(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (!snapshot.hasData || snapshot.hasError) {
                  return const Center(
                    child: Text('لا توجد بيانات'),
                  );
                } else {
                  return Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final data = snapshot.data![index];
                        return ListTile(
                          title: Text(data['title']),
                          trailing: CircleAvatar(
                            backgroundImage: AssetImage(data['image']),
                          ),
                          subtitle: Row(
                            children: [
                              Text('price: ${data['price']}'),
                              const SizedBox(width: 15),
                              Text('id: ${data['id']}'),
                            ],
                          ),
                          onTap: () async {
                            await Database.deleteFoodById(data['id']);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('تم الحذف بنجاح')));
                            setState(() {});
                          },
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


