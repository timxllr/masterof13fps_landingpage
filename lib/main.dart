import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:clipboard_manager/clipboard_manager.dart';

void main() {
  runApp(MyApp());
}

String ip = "mc.masterof13fps.com:25565";
String anticheats = "Intave, AAC, NCP, Spartan\n"
    "ThotPatrol, Matrix, Horizon, Negativity";

String appDlAndroid = "https://anonfiles.com/z855JdZ2o2/MasterOf13FPS_apk";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.black),
        accentColor: Colors.blueAccent,
        canvasColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    AlertDialog contactMemecock = AlertDialog(
      title: Text("Kontaktaufnahme mit CrazyMemeCoke"),
      content: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              FlatButton(
                child: Text("Discord-Server"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://discord.com/invite/fqqbbyh");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("Twitter"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://twitter.com/CrazyBackupCoke");
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog spenden = AlertDialog(
      title: Text("MasterOf13FPS durch eine Spende unterstützen"),
      content: Column(
        children: [
          Text(
              "Wenn du MasterOf13FPS finanziell unterstützen und zudem noch weitere Vorteile erhalten möchtest,\n"
              "wie bspw. den Premium-Rang, dann melde dich bitte bei CrazyMemeCoke.\n\n"
              "Eine automatisierte Zahlungsabwicklung ist derzeit noch\n"
              "nicht verfügbar, wird aber sobald wie möglich folgen.\n\n"
              "Offizielle Zahlungswege:",
              textAlign: TextAlign.center),
          SizedBox(height: 5),
          Image.network("https://i.imgur.com/LqKIqhB.png",
              width: 300, height: 100),
          Image.network("https://i.imgur.com/vWxGHBv.png",
              width: 300, height: 100),
        ],
      ),
      actions: [
        FlatButton(
          child: Text("Jetzt spenden / Kontakt aufnehmen"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return contactMemecock;
                });
          },
        ),
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog socialMedia = AlertDialog(
      title: Text("Social Media"),
      content: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              FlatButton(
                child: Text("Discord-Server"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://discord.com/invite/bTw2b4q");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("Twitter"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://twitter.com/MasterOf13FPSDE");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("Telegram"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://t.me/masterof13fpsde");
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog whatIsMasterOf13FPS = AlertDialog(
      title: Text("Erklärung - Was ist MasterOf13FPS?"),
      content: Text(
          "MasterOf13FPS ist ein seit Jahren sehr bekanntes Forum für Anwendungsentwicklung, Cheating und sonstige Skripte.\n\n"
          "Ursprünglicher Projektstart: 2016, von Artur (ehem. Inhaber) und FantaCoke (CrazyMemeCoke)\n"
          "Neustart des Projektes: Jul. 2020, durch CrazyMemeCoke, Konflikte mit altem Hoster\n\n\n"
          "- Was ist MasterOf13FPS genau? -\n\n"
          "MasterOf13FPS ist ein Community-geführtes Forum für:\n"
          "● Anwendungsentwicklung (Java, C#, Dart, Rust, etc. pp.)\n"
          "● Game Cheats (Minecraft, Counter Strike, Grand Theft Auto, etc. pp.\n"
          "● Tech-Talk's über AI, RayTracing, etc. pp.'\n"
          "... und vielem mehr!\n\n"
          "Worauf wartest du noch? Melde dich gleich an und entdecke die\n"
          "riesige Vielfalt von MasterOf13FPS und die wunderbare Community!",
          textAlign: TextAlign.center),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog downloadsMCP = AlertDialog(
      title: Text("Downloads: Mod Coder Pack (MCP) (1.0 - 1.12)"),
      content: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              FlatButton(
                child: Text("AnonFiles"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://anonfiles.com/x4l08eF2o9/MCP_zip");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("MEGA.NZ"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch(
                      "https://mega.nz/file/KmQFVYQC#qBSBmW8IxkQRgkKywX9P3Z_U3Ntp1Mw9huTXXmv2HYM");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("DogeCloud"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://send.dogecloud.org/f.php?h=1zFf75PTrmxi");
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog downloadsMCPMAPPINGS = AlertDialog(
      title: Text("Downloads: MCP Mappings (1.7.10 - 1.14.4)"),
      content: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              FlatButton(
                child: Text("MCPBot"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("http://export.mcpbot.bspk.rs/");
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog downloadsOPTIFINESOURCE = AlertDialog(
      title: Text("Downloads: OptiFine Sources (1.7 - 1.12)"),
      content: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              FlatButton(
                child: Text("AnonFiles"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://anonfiles.com/3d478cFcoe/OF_SRC_zip");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("MEGA.NZ"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch(
                      "https://mega.nz/file/L2ZhQQxS#3_HwC_eCuCr4OxnJ9CCBoyISdw9OoziBdTAJQMZi368");
                },
              ),
              SizedBox(width: 5),
              FlatButton(
                child: Text("DogeCloud"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                color: Color.fromARGB(255, 0, 135, 220),
                onPressed: () {
                  launch("https://send.dogecloud.org/f.php?h=3pg2_obhg4Qx");
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog downloadsDECOMPILERnTOOLS = AlertDialog(
      title: Text("Downloads: Decompiler & Tools"),
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  "Die Sortierung nach Funktionalität kann sich durch Updates ändern,\n"
                  "MasterOf13FPS übernimmt keine Haftung für inkorrekte Zuordnungen!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 5),
              Text("Gut",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("threadtear\n"
                        "(Deobfuscation Tool)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch("https://github.com/GraxCode/threadtear/releases");
                    },
                  ),
                  SizedBox(width: 5),
                  FlatButton(
                    child: Text("BytecodeViewer\n"
                        "(Decompiler & ByteCode Editor)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch(
                          "https://github.com/Konloch/bytecode-viewer/releases");
                    },
                  ),
                  SizedBox(width: 5),
                  FlatButton(
                    child: Text("Cafebabe\n"
                        "(Decompiler & ByteCode Editor)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch("https://github.com/GraxCode/Cafebabe/releases");
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    child: Text("dnSpy\n"
                        "(.NET Debugger & Assembly Tool)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch("https://github.com/0xd4d/dnSpy/releases");
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Mittelmäßig",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("JByteMod\n"
                        "(Decompiler & Analysis Tool)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch(
                          "https://github.com/GraxCode/JByteMod-Beta/releases");
                    },
                  ),
                  SizedBox(width: 5),
                  FlatButton(
                    child: Text("ByteEdit\n"
                        "(Decompiler & ByteCode Editor)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch(
                          "https://github.com/SuspiciousActivity/Random-Java-Stuff/blob/master/ByteEdit.jar");
                    },
                  ),
                  SizedBox(width: 5),
                  FlatButton(
                    child: Text("Luyten\n"
                        "(Java Decompiler)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch("https://github.com/deathmarine/Luyten/releases");
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Schlecht",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("JD-GUI\n"
                        "(Java Decompiler)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      launch(
                          "https://github.com/java-decompiler/jd-gui/releases");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog downloads = AlertDialog(
      title: Text("Downloads - exklusiv für MasterOf13FPS"),
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("D",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("Decompiler & Tools"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return downloadsDECOMPILERnTOOLS;
                          });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("M",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("Mod Coder Pack (MCP)"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return downloadsMCP;
                          });
                    },
                  ),
                  SizedBox(width: 5),
                  FlatButton(
                    child: Text("MCP Mappings"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return downloadsMCPMAPPINGS;
                          });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("O",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  FlatButton(
                    child: Text("OptiFine Sources"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    color: Color.fromARGB(255, 0, 135, 220),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return downloadsOPTIFINESOURCE;
                          });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog testServer = AlertDialog(
      title: Text("TestServer"),
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  "Wir stellen euch ab sofort einen offiziellen TestServer bereit!",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center),
              SizedBox(height: 15),
              Text("IP:",
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center),
              Text(ip,
                  style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
              SizedBox(height: 10),
              Text("AntiCheats:",
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center),
              Text(anticheats,
                  style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("IP kopieren"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Clipboard.setData(
                new ClipboardData(text: "mc.masterof13fps.com:25565"));
          },
        ),
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    AlertDialog app = AlertDialog(
      title: Text("App"),
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  "Wir haben eine exklusive App entwickelt - für eine bessere Benutzererfahrung!",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center),
              SizedBox(height: 15),
              Text("App-Informationen:",
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center),
              Text(
                  "Entwickler: CrazyMemeCoke\n"
                  "Version: 1.0 (vom 27. September 2020)",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center),
              SizedBox(height: 10),
              Text("Unterstützte Plattformen:",
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center),
              Text(
                  "- Android (ab Version 5.0 und höher)\n"
                  "- (Soon) iOS (ab Version 11 und höher)\n"
                  "- (Soon) Windows (ab Vista und höher)",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center),
              SizedBox(height: 10),
              Text("Exklusive Features:",
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center),
              Text(
                  "- schnelleres Laden der Seiten durch starke Optimierungen\n"
                  "- ausfallsichere Bereiche mit lokalen Sicherungskopien\n"
                  "- erweiterter Support aufgrund Verwendung offizieller Zugriffmöglichkeit\n"
                  "- keine Content-blockierenden Addons vorhanden",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      actions: [
        FlatButton(
          child: Text("Download für Android"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            launch(appDlAndroid);
          },
        ),
        FlatButton(
          child: Text("Ok"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color.fromARGB(255, 0, 135, 220),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    Widget newsFeed() {
      return ListView(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("22. November 2020 - Landing-Page Update",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5),
                      Text(
                          "- Anzeigefehler auf mobilen Endgeräten behoben\n"
                          "- Breite des Newsfeeds angepasst\n"
                          "- Einträge zur Navigationsleiste hinzugefügt: TestServer & App\n"
                          "- automatische Höhenanpassung des Contents hinzugefügt\n"
                          "- Neusortierung und (teilweise) Neuverfassung des Newsfeeds\n"
                          "- Vereinheitlichung des Newsfeeds durch Platzhalter",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("07. November 2020 - Landing-Page Update",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5),
                      Text(
                          "- Es wurden kleinere, nicht weiter relevante, Bugs gefixed",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("07. November 2020 - TestServer Update",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5),
                      Text(
                          "- Alle AntiCheats wurden auf die neuste, verfügbare Version aktualisiert\n"
                              "- Togglechat hinzugefügt zum clientseitigen deaktivieren des Chats (/togglechat)\n"
                              "- Befehlsfilter eingebaut um AC-Devs von Lizensierungsmöglichkeiten abzuhalten",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("04. August 2020 - Release des MC-TestServers",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Wir haben nun einen exklusiv für MasterOf13FPS Mitglieder gehaltenen TestServer!\n"
                                "Nähere Infos findest Du oben in der Navigationsleiste unter 'TestServer' :)",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("27. September 2020 - Unsere offizielle App",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5),
                      Text(
                          "Wir haben nun eine offizielle App für mobile Endgeräte!\n"
                          "Nähere Informationen gibt es oben in der Navigationsleiste unter 'App' :)",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/icon.png", height: 200),
                      SizedBox(height: 5),
                      Text("MasterOf13FPS - dein Forum des Vertrauens!",
                          style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text("Krypton is stupid.",
              style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
        ],
      );
    }

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text("Forum"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                launch("https://masterof13fps.com/forum");
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("TestServer"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return testServer;
                                    });
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("App"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return app;
                                    });
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("Spenden"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return spenden;
                                    });
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("Social Media"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return socialMedia;
                                    });
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("Was ist MasterOf13FPS?"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return whatIsMasterOf13FPS;
                                    });
                              },
                            ),
                            SizedBox(width: 5),
                            FlatButton(
                              child: Text("Downloads"),
                              minWidth: 100,
                              height: 46,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color.fromARGB(255, 0, 135, 220),
                              onPressed: () {
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return downloads;
                                    });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  child: Image.asset("assets/images/logo.png",
                      width: 380, height: 140, fit: BoxFit.fitWidth),
                  padding: EdgeInsets.only(left: 10),
                ),
                Expanded(
                  child: newsFeed(),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
