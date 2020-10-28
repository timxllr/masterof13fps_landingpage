import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

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

    Widget newsFeed() {
      return ListView(
        children: [
          SizedBox(height: 10),
          Text("NEWSFEED",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 10),
          Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("Hey Du! Wir haben jetzt eine offizielle App!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5),
                      Text(
                          "Die App befindet sich derzeit noch in der Beta, kleinere Fehler können auftreten!",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      Text(
                          "Solltest du Fehler finden, melde diese und sichere dir exklusive Vorteile :)",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center),
                      SizedBox(height: 50),
                      Text("Downloads:", style: TextStyle(fontSize: 22)),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton(
                            child: Text("Android (5.0+)",
                                textAlign: TextAlign.center),
                            onPressed: () {
                              launch("https://bit.ly/34ZHvTS");
                            },
                            color: Color.fromARGB(255, 0, 135, 220),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          FlatButton(
                            child: Text("iOS (10+)\n(Coming Soon)",
                                textAlign: TextAlign.center),
                            onPressed: () {},
                            color: Color.fromARGB(255, 0, 135, 220),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          FlatButton(
                            child: Text("Windows (XP+)\n(Coming Soon)",
                                textAlign: TextAlign.center),
                            onPressed: () {},
                            color: Color.fromARGB(255, 0, 135, 220),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          FlatButton(
                            child: Text("macOS (Sierra+)\n(Coming Soon)",
                                textAlign: TextAlign.center),
                            onPressed: () {},
                            color: Color.fromARGB(255, 0, 135, 220),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
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
                  width: MediaQuery.of(context).size.width / 2,
                  height: 125,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text("Unser Minecraft TestServer",
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("IP: mc.masterof13fps.com\nVersion 1.8 - 1.16.3",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center),
                          SizedBox(width: 60),
                          Text(
                              "AntiCheats: AAC, NCP, ThotPatrol,\nSpartan, Matrix, Horizon, Negativity, Tired",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center),
                        ],
                      ),
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
                  width: MediaQuery.of(context).size.width / 2,
                  height: 250,
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
            Row(
              children: [
                Container(
                  width: 400,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Text("Forum"),
                        minWidth: 395,
                        height: 46,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        color: Color.fromARGB(255, 0, 135, 220),
                        onPressed: () {
                          launch("https://masterof13fps.com/forum");
                        },
                      ),
                      SizedBox(height: 5),
                      FlatButton(
                        child: Text("Spenden"),
                        minWidth: 395,
                        height: 46,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
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
                      SizedBox(height: 5),
                      FlatButton(
                        child: Text("Social Media"),
                        minWidth: 395,
                        height: 46,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
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
                      SizedBox(height: 5),
                      FlatButton(
                        child: Text("Was ist MasterOf13FPS?"),
                        minWidth: 395,
                        height: 46,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
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
                      SizedBox(height: 5),
                      FlatButton(
                        child: Text("Downloads"),
                        minWidth: 395,
                        height: 46,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
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
                Expanded(
                    child: Stack(
                  children: [
                    newsFeed(),
                  ],
                )),
              ],
            ),
            Padding(
              child: Image.asset("assets/images/logo.png",
                  width: 380, height: 200, fit: BoxFit.fitWidth),
              padding: EdgeInsets.only(left: 10),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
