import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardExample extends StatefulWidget {
  @override
  _CreditCardExampleState createState() => _CreditCardExampleState();
}

class _CreditCardExampleState extends State<CreditCardExample> {
  String cardNumber = '123456789012', expiryDate = '01/26', cardHolderName = 'Rahul Bera', cvvCode = '099';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: Text('Credit Card UI')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (brand) {},
            ),
            CreditCardForm(
              onCreditCardModelChange: (creditCardModel) {
                setState(() {
                  cardNumber = creditCardModel.cardNumber;
                  expiryDate = creditCardModel.expiryDate;
                  cardHolderName = creditCardModel.cardHolderName;
                  cvvCode = creditCardModel.cvvCode;
                  isCvvFocused = creditCardModel.isCvvFocused;
                });
              }, cardNumber: ' 123456789012   ', expiryDate: '01/26', cardHolderName: 'Rahul Bera', cvvCode: '099', formKey: GlobalKey<FormState>(),
            )
          ],
        ),
      ),
    );
  }
}
