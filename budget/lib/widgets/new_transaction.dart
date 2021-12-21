import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function getInputTx;

  NewTransaction(this.getInputTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final ammountController = TextEditingController();

  void submitData() {
    String titleText = titleController.text;
    double amountValue = double.parse(ammountController.text);

    if (titleText.isEmpty || amountValue <= 0) {
      return;
    }

    widget.getInputTx(
      titleText,
      amountValue,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: ammountController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (_) => submitData(),
          ),
          TextButton(
            onPressed: submitData,
            child: Text("Add Field"),
          ),
        ],
      ),
    );
  }
}
