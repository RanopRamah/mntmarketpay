import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';

Widget ListTransactionAdmin(){
  return   ListView(
    padding: EdgeInsets.zero,
      children: [ Container(
    height: 174,
    width: double.infinity,
    decoration: BoxDecoration(
        color: const Color(0xfff3f3f3),
        borderRadius: BorderRadius.circular(18)),
    margin: const EdgeInsets.only(bottom: 15),
    padding: const EdgeInsets.only(
        top: 25, bottom: 10, left: 30, right: 20),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text(
              'Buyer',
              style: AdminPage.transactionBuySell),
            Text(
              'Merchant',
                    style: AdminPage.transactionBuySell),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120,
              child: Text(
               'Raffi Nauval',
                overflow: TextOverflow.ellipsis,
                style: AdminPage.transactionName
              ),
            ),
            Image.asset(
              'assets/images/trade.png',
              width: 26,
              height: 26,
            ),
            SizedBox(
                width: 100,
                child: Text(
                 'Janji Jiwa IOH',
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                    style: AdminPage.transactionName
                ))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Amount',
              style: AdminPage.transactionAmountUQ
            ),
            Text(
              'Rp252,000',
              style:AdminPage.transactionNumAmountUQ
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Unique Code',
                style: AdminPage.transactionAmountUQ
            ),
            Text(
              '0000000123456',
                style: AdminPage.transactionNumAmountUQ
            )
          ],
        )
      ],
    ),
    ),
        Container(
          height: 174,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(18)),
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.only(
              top: 25, bottom: 10, left: 30, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                      'Buyer',
                      style: AdminPage.transactionBuySell),
                  Text(
                      'Merchant',
                      style: AdminPage.transactionBuySell),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                        'Raffi Nauval',
                        overflow: TextOverflow.ellipsis,
                        style: AdminPage.transactionName
                    ),
                  ),
                  Image.asset(
                    'assets/images/trade.png',
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(
                      width: 100,
                      child: Text(
                          'Janji Jiwa IOH',
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: AdminPage.transactionName
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Amount',
                      style: AdminPage.transactionAmountUQ
                  ),
                  Text(
                      'Rp252,000',
                      style:AdminPage.transactionNumAmountUQ
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Unique Code',
                      style: AdminPage.transactionAmountUQ
                  ),
                  Text(
                      '0000000123456',
                      style: AdminPage.transactionNumAmountUQ
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 174,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(18)),
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.only(
              top: 25, bottom: 10, left: 30, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                      'Buyer',
                      style: AdminPage.transactionBuySell),
                  Text(
                      'Merchant',
                      style: AdminPage.transactionBuySell),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                        'Raffi Nauval',
                        overflow: TextOverflow.ellipsis,
                        style: AdminPage.transactionName
                    ),
                  ),
                  Image.asset(
                    'assets/images/trade.png',
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(
                      width: 100,
                      child: Text(
                          'Janji Jiwa IOH',
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: AdminPage.transactionName
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Amount',
                      style: AdminPage.transactionAmountUQ
                  ),
                  Text(
                      'Rp252,000',
                      style:AdminPage.transactionNumAmountUQ
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Unique Code',
                      style: AdminPage.transactionAmountUQ
                  ),
                  Text(
                      '0000000123456',
                      style: AdminPage.transactionNumAmountUQ
                  )
                ],
              )
            ],
          ),
        )
      ]
  );
}