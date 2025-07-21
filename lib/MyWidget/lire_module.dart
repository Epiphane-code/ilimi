import 'package:flutter/material.dart';
import 'class.dart';
import 'dataList.dart';

class LireModule extends StatefulWidget {
  final int idModuleC;

  // Constructeur avec paramètres requis
  const LireModule({super.key, required this.idModuleC});
  @override
  State<LireModule> createState() => _LireModuleState();
}

class _LireModuleState extends State<LireModule> {
  late MesModules module;
  @override
  void initState() {
    super.initState();
    module = mesModules.firstWhere(
      (module) => module.id_module == widget.idModuleC,
    );
  }

  // The variable name isn't a lowerCamelCase identifier
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MesCouleurs.bleuPrincipale,
        title: Text(module.nom_module, style: TextStyle(fontSize: 13)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                margin: EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset(
                  'assets/images/${module.image_module}',
                  //height: 300,
                ),
              ),
              Text("Salut"),
            ],
          ),
        ),
      ),
    );
  }
}
