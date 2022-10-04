import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> countryList = <String>['One', 'Two', 'Three', 'Four'];

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  // final _countryList = ['bangladesh', 'srilanka', 'india'];
  // String? selectedCountry = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forhad Weather'),
        centerTitle: true,
        actions: const [
          Image(
            image: AssetImage("images/forhad.png"),
            alignment: Alignment.center,
            fit: BoxFit.contain,
          ),
        ],
        shadowColor: Colors.indigo,
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: [
          Container(
            // alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/weather.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 48.0,
            width: 800.0,
            color: Colors.white,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(100.0),
            child: TextFormField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(
                label: Text('Country Name',
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                hintText: "Enter Country Name",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                fillColor: Colors.blueGrey,
                filled: true,
              ),
              autocorrect: true,
            ),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 40.0,
            width: 120.0,
            margin: const EdgeInsets.only(top: 150.0, left: 350.0),
            child: DropdownButton(
                value: "BD",
                icon: const Icon(Icons.pin_drop, color: Colors.cyan),
                style: const TextStyle(color: Colors.deepOrange),
                alignment: Alignment.center,
                items: const [
                  DropdownMenuItem(value: "BD", child: Text('BD')),
                  DropdownMenuItem(value: "India", child: Text('India')),
                  DropdownMenuItem(
                    value: "Afghanistan",
                    child: Text('Afghanistan'),
                  ),
                ],
                onChanged: (String? value) {}),
          ),
        ],
      ),
    );
  }
}