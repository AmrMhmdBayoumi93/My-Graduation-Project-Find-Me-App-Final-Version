import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'مروة كامل',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                  label: Text('الكل'),
                  selected: true,
                  onSelected: (selected) {},
                ),
                ChoiceChip(
                  label: Text('مفقود'),
                  selected: false,
                  onSelected: (selected) {},
                ),
                ChoiceChip(
                  label: Text('معثور عليه'),
                  selected: false,
                  onSelected: (selected) {},
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  hint: Text('المحافظة'),
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                DropdownButton<String>(
                  hint: Text('تاريخ الغيب'),
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                DropdownButton<String>(
                  hint: Text('السن'),
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'ابحث بالاسم',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      // leading: CircleAvatar(
                      //   backgroundImage: AssetImage('assets/avatar.png'),
                      // ),
                      title: Text('اسم المفقود'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('التفاصيل: التفاصيل هنا'),
                          Text('تاريخ التغيب: 16/3/2022'),
                        ],
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {
                          // Handle more button action
                        },
                        child: Text('المزيد'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'إبلاغ',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.map),
          //   label: 'الخريطة',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'الإشعارات',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation bar tap
        },
      ),
    );
  }
}