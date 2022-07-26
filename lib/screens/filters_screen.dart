import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilter;

  FiltersScreen(@required this.currentFilter, @required this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _jain = false;
  bool _spicy = false;
  bool _medium = false;
  bool _sweet = false;

  @override
  initState() {
    _jain = widget.currentFilter['jain'];
    _spicy = widget.currentFilter['spicy'];
    _medium = widget.currentFilter['medium'];
    _sweet = widget.currentFilter['sweet'];
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'jain': _jain,
                'spicy': _spicy,
                'medium': _medium,
                'sweet': _sweet,
              };
              widget.saveFilters(selectedFilters);
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile('Jain', 'Only included jain meals.', _jain,
                    (newValue) {
                  setState(() {
                    _jain = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'Spicy', 'Only included spicy meals.', _spicy, (newValue) {
                  setState(() {
                    _spicy = newValue;
                  });
                }),
                _buildSwitchListTile('Medium Spicy',
                    'Only included Medium Spicy meals.', _medium, (newValue) {
                  setState(() {
                    _medium = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'Sweet', 'Only included Sweet meals.', _sweet, (newValue) {
                  setState(() {
                    _sweet = newValue;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
