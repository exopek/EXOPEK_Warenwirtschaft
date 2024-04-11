import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/inventoryProvider.dart';
import '../../domain/models/Inventory.dart';
import '../pdfPage/PdfPage.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();

  void dialog(Inventory inventory) => showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            child: Container(
          height: 300,
          width: 400,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: _textEditingController3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Anzahl für ${inventory.name}',
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Abbrechen")),
                  TextButton(
                      onPressed: () {
                        if (_textEditingController2.text != "") {
                          ref.read(inventoryRepositoryProvider).createInventory(
                              inventory.copyWith(
                                  quantity: _textEditingController3.text != ''
                                      ? int.parse(_textEditingController3.text)
                                      : inventory.quantity,
                                  createdAt:
                                      ref.read(datePickerStateProvider)));
                        }
                      },
                      child: Text("Speichern")),
                ],
              )
            ],
          ),
        ));
      });

  @override
  Widget build(BuildContext context) {
    /* final inventoryListControllerValue =
        ref.watch(inventoryListControllerProvider); */
    final inventoryList = ref.watch(inventoryListProvider);
    return Scaffold(
        body: SingleChildScrollView(
            child: inventoryList.when(
      data: (inventoryList) {
        return Stack(
          children: [
            Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      children: [
                        /* SizedBox(
                          height: 50,
                        ), */
                        TextField(
                          controller: _textEditingController,
                          onChanged: (value) {
                            //Validat Format: 2022-01-01T00:00:00
                            /* final dateRegExp =
                                new RegExp(r"^\d{4}-\d{2}-\d{2}$");
                            bool isValid = dateRegExp.hasMatch(value);
                            if (isValid) {
                              ref.read(datePickerStateProvider.notifier).state =
                                  DateTime.parse(value);
                            } */
                          },
                          onSubmitted: (value) {
                            final dateRegExp =
                                new RegExp(r"^\d{4}-\d{2}-\d{2}$");
                            bool isValid = dateRegExp.hasMatch(value);
                            if (isValid) {
                              ref
                                  .read(lastDateInventoryStateProvider.notifier)
                                  .state = DateTime.parse(value);
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Start',
                            hintText: 'yyyy-mm-dd'
                          ),
                        ),
                        TextField(
                          controller: _textEditingController2,
                          onChanged: (value) {},
                          onSubmitted: (value) {
                            final dateRegExp =
                                new RegExp(r"^\d{4}-\d{2}-\d{2}$");
                            bool isValid = dateRegExp.hasMatch(value);
                            if (isValid) {
                              ref.read(datePickerStateProvider.notifier).state =
                                  DateTime.parse(value);
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ende',
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () async {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return PdfPage(
                                  ref.watch(datePickerStateProvider).toString(),
                                  inventoryList);
                            }));
                          },
                          child: const Icon(Icons.picture_as_pdf_sharp),
                        ),
                      ],
                    ) /* Text(
                      "2022-01-01 ${ref.watch(datePickerStateProvider.notifier).state.day.toString() + "." + ref.watch(datePickerStateProvider.notifier).state.month.toString() + "." + ref.watch(datePickerStateProvider.notifier).state.year.toString()}"), */
                    ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: inventoryList.length,
                    itemBuilder: (context, index) {
                      print(inventoryList.length);
                      return TextButton(
                        onPressed: () {
                          dialog(inventoryList[index]);
                        },
                        child: Container(
                          decoration:
                              BoxDecoration(color: Colors.blueGrey[400]),
                          child: ListTile(
                            title: Text("${inventoryList[index].name}"),
                            subtitle: Text("${inventoryList[index].quantity}"),
                            trailing: Text("${inventoryList[index].price}€"),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
    )));
  }

  @override
  // TODO: implement restorationId
  String? get restorationId => 'inventory_page';
}
