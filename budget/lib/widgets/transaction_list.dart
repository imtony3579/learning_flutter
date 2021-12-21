import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userList;

  TransactionList({required this.userList});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  '\$ ${(userList[index].amount).toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorLight,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Theme.of(context).primaryColorLight)),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      userList[index].title,
                      style:
                          Theme.of(context).textTheme.headline6,
                    ),
                    margin: EdgeInsets.only(left: 10, bottom: 5),
                  ),
                  Container(
                    child: Text(
                      DateFormat.yMMMd().format(userList[index].date),
                      style: TextStyle(color: Colors.grey),
                    ),
                    margin: EdgeInsets.only(left: 10),
                  )
                ],
              )
            ],
          ));
        },
        itemCount: userList.length,
      ),
    );
  }
}
