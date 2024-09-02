import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../../constant/api_url.dart';
import '../../model/food_model.dart';

class FoodApiControllerHttp with ChangeNotifier {
  Future<List<Food>> getData() async {
    try {
      final response = await http.get(Uri.parse(ApiPaths.getProducts.fullPath));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<Food> foods = data.map((json) => Food.fromJson(json)).toList();

        return foods;
      } else {
        throw Exception('Failed to load food');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Food>> getFood(int id) async {
    try {
      final response =
          await http.get(Uri.parse('${ApiPaths.getFoods.fullPath}/$id'));

      if (response.statusCode == 200) {
        log(response.body);
        final List<dynamic> chatRoomJson = json.decode(response.body);
        final product =
            chatRoomJson.map((json) => Food.fromJson(json)).toList();
        return product;
      } else {
        throw Exception('Failed to load food By Id');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> postFood(
    String title,
    double price,
    double rate,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(ApiPaths.getFoods.fullPath),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": 0,
          "image": 'assets/images/Ellipse 20 (1).png',
          "title": title,
          "price": price,
          "rate": rate,
        }),
      );
      if (response.statusCode == 201) {
        log('Upload Response: ${response.body}');
      } else {
        throw Exception('Failed to post food');
      }
    } catch (e) {
      log('Error: $e');
    }
  }

  Future<void> putFood(Food food, int id) async {
    try {
      final response =
          await http.put(Uri.parse('${ApiPaths.getFoods.fullPath}/$int'));
      if (response.statusCode == 201) {
        log('put from id(${food.id}) done');
      } else {
        throw Exception('Failed to put id(${food.id})');
      }
    } catch (e) {
      log('Error: $e');
    }
  }

  Future<void> deleteFood(int id) async {
    try {
      final response =
          await http.delete(Uri.parse('${ApiPaths.getFoods.fullPath}/$id'));
      if (response.statusCode == 201) {
        log('Delet from id($id) done');
      } else {
        throw Exception('Failed to Delete id($id)');
      }
    } catch (e) {
      log('Error: $e');
    }
  }
}
