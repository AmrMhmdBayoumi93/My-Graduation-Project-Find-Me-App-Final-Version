Navigator.push(context, MaterialPageRoute(builder:
                  (context) =>  ReportMissedPersonP2(),));
         
             
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              textStyle: const TextStyle(fontSize: 16.0),
            ),
            child: const Text('بحث عن مفقود'),
          ),
        ],
      ),
    ),
  ),
);