import 'package:flutter/cupertino.dart';

class TextFormFieldProvider extends ChangeNotifier{
  final TextEditingController _searchController = TextEditingController();

  TextEditingController get searchController => _searchController;
}