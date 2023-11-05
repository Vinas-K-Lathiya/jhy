import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Idstyle extends StatefulWidget {
  const Idstyle({super.key});

  @override
  State<Idstyle> createState() => _IdstyleState();
}

class _IdstyleState extends State<Idstyle> {
  String userName = 'Simple text to stylish looking text.';
  List selectedFonts = [
    'Great Vibes',
    'Pacifico',
    'Sacramento',
    'Dancing Script',
    'Amatic SC',
    'Architects Daughter',
    'Kaushan Script',
    'Parisienne',
    'Courgette',
    'Butterfly Kids',
    'Orbitron',
    'Satisfy',
    'Tangerine',
    'Allura',
    'Cedarville Cursive',
    'Pacifico',
    'Dancing Script',
    'Poppins',
    'Oswald',
    'Playball',
    'Overlock',
    'Courgette',
    'Meddon',
    'Almendra Display',
    'Gloria Hallelujah',
    'Rancho',
    'La Belle Aurore',
    'Yellowtail',
    'Ewert',
    'Lobster Two',
    'UnifrakturCook',
    'Gilda Display',
    'Parisienne',
    'Fondamento',
    'Goudy Bookletter 1911',
    'Felipa',
    'Eagle Lake',
    'Lancelot',
    'Herr Von Muellerhoff',
    'Mrs Saint Delafield',
    'Glass Antiqua',
    'Delius',
    'Galada',
    'Unna',
    'Rammetto One',
    'Griffy',
    'Finger Paint',
    'Bilbo',
    'Knewave',
    'Clicker Script',
    'Monsieur La Doulaise',
    'Unkempt',
    'Bungee Inline',
    'Hanalei',
    'Lora',
    'Neucha',
    'Patrick Hand',
    'Rock Salt',
    'Shadows Into Light',
    'Yesteryear',
    'Life Savers',
    'Homemade Apple',
    'Ruge Boogie',
    'Fascinate',
    'Rakkas',
    'Elsie Swash Caps',
    'Sancreek',
    'Over the Rainbow',
    'Cantata One',
    'Yellowtail',
    'Trocchi',
    'Special Elite',
    'Sniglet',
    'Oleo Script Swash Caps',
    'Kurale',
    'Charm',
    'Calligraffitti',
    'Spectral SC',
    'Aladin',
    'Nova Square',
    'Kalam',
    'Nosifer',
    'Wallpoet',
    'Jacques Francois Shadow',
    'Sofadi One',
    'Cedarville Cursive',
    'Fascinate Inline',
    'Euphoria Script',
    'Gilda Display',
    'Piedra',
    'Fruktur',
    'Uncial Antiqua',
    'Paprika',
    'Emilys Candy',
    'Caudex',
    'Faster One',
    'Tulpen One',
    'Risque',
    'Meie Script',
    'Miss Fajardose',
    'Sarina',
    'Ribeye Marrow',
    'Knewave',
    'Engagement',
    'Barriecito',
    'KoHo',
    'Italiana',
    'Zilla Slab Highlight',
    'Kreon',
    'Vidaloka',
    'Patrick Hand SC',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/BG.webp'))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    userName = value;
                    if (userName.isEmpty) {
                      setState(() {
                        userName = 'Simple text to stylish looking text.';
                      });
                    }
                  });
                },
                cursorColor: Color(0xffAA5BD1),
                style: TextStyle(
                  color: Color(0xffA49CC9),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: 'Simple text to stylish looking text.',
                    hintStyle: TextStyle(color: Color(0xffA49CC9)),
                    filled: true,
                    fillColor: Color(0xff3E3343),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xffAA5BD1), width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xffAA5BD1), width: 2))),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: selectedFonts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                          userName,
                          style: GoogleFonts.getFont(
                            selectedFonts[index],
                            wordSpacing: 5,
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Clipboard.setData(
                              ClipboardData(text: userName),
                            );
                          },
                          child: Icon(Icons.copy),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
