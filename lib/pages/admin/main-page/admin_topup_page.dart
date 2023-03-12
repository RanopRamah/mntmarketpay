import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/admin/widget/transaction-widget/searchtransaction.dart';
import 'package:searchfield/searchfield.dart';

class AdminTopupPage extends StatefulWidget {
  const AdminTopupPage({super.key,});

  @override
  State<AdminTopupPage> createState() => _AdminTopupPageState();
}

class _AdminTopupPageState extends State<AdminTopupPage> {
  final searchController = TextEditingController();
  final _topupcontrol = TextEditingController();
  bool isSuccessful = false;
  bool isSubmit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
          child: Stack(
            children: [
              Image.asset('assets/images/back_home.png'),
              Container(
                margin: const EdgeInsets.only(top: 77, left: 23, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    const Text(AdminPageStrings.title, style: AdminPage.topUpTitle),
                    const SizedBox(height: 26),
                    Container(
                      width: double.infinity,
                      height: 485,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(117, 117, 117, 0.1),
                              blurRadius: 6.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 322,
                            height: 62,
                            margin: const EdgeInsets.only(top: 26.88),
                            child: SearchField<dynamic>(
                              searchInputDecoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                                ),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                                ),
                                hintText: 'Search User',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBDBDBD),
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                prefixIcon: Container(
                                  padding: const EdgeInsets.all(0.01),
                                  margin: const EdgeInsets.only(bottom: 15.0),
                                  child: Image.asset('assets/images/search-all.png'),
                                ),
                              ),
                              suggestions: [],
                              // suggestions: user
                              //     .map(
                              //       (e) => SearchFieldListItem(
                              //     e.nama,
                              //     item: e,
                              //     // Use child to show Custom Widgets in the suggestions
                              //     // defaults to Text widget
                              //     child: Padding(
                              //       padding: const EdgeInsets.only(
                              //           top: 10, bottom: 10, left: 20),
                              //       child: Row(
                              //         crossAxisAlignment:
                              //         CrossAxisAlignment.center,
                              //         children: [
                              //           Column(
                              //               mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //               crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //               children: <Widget>[
                              //                 Text(
                              //                   e.nama,
                              //                   style: const TextStyle(
                              //                       fontWeight: FontWeight.w600,
                              //                       color: Color(0xff222222),
                              //                       fontSize: 20,
                              //                       fontFamily:
                              //                       'Euclid Circular B'),
                              //                 ),
                              //                 Text(
                              //                   e.no_hp,
                              //                   style: const TextStyle(
                              //                       fontWeight: FontWeight.w400,
                              //                       color: Color(0xffbebebe),
                              //                       fontSize: 15,
                              //                       fontFamily:
                              //                       'Euclid Circular B'),
                              //                 ),
                              //               ])
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // )
                              //     .toList(),
                              suggestionState: Suggestion.hidden,
                              controller: searchController,
                              inputType: TextInputType.text,
                              itemHeight: 80,
                              validator: (v) {
                                // if (v!.isEmpty || !containsUser(v)) {
                                //   return 'Please enter valid name';
                                // } else {
                                //   return null;
                                // }
                              },
                              onSuggestionTap: (SearchFieldListItem v) {
                                setState(() {
                                  // _selectedUsers = v.item!;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: 325,
                            height: 81.51,
                            margin: const EdgeInsets.only(top: 24),
                            padding: const EdgeInsets.only(top: 18.58, left: 15.2),
                            decoration: const BoxDecoration(
                                color: Color(0xFF7C81DF),
                                borderRadius:
                                BorderRadius.all(Radius.circular(18.6053))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  /*_selectedUsers.nama ??*/ 'Edi Santoso',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 17.7193,
                                    fontFamily: 'Euclid Circular B',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 3.82),
                                Text(
                                  'User ID: ' /*${_selectedUsers.no_hp ?? '-'}*/,
                                  style: TextStyle(
                                    color: Color(0xFFC5C7F1),
                                    fontSize: 13.0526,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 312,
                            height: 67.51,
                            margin: const EdgeInsets.only(top: 38.61),
                            child: TextField(
                              controller: _topupcontrol,
                              style: const TextStyle(
                                  fontSize: 23, color: Colors.black),
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.912281,
                                    color: Color(0xFFC8BDBD),
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6.38596)),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.912281,
                                    color: Color(0xFFC8BDBD),
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6.38596)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.912281,
                                    color: Color(0xFFC8BDBD),
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6.38596)),
                                ),
                                labelText: 'Nominal Top Up',
                                hintText: 'Rp0',
                                hintStyle: TextStyle(
                                  color: Color(0xFFCAC5C5),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 21.8947,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF8D8989),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 17,
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            width: 310,
                            height: 60,
                            margin: const EdgeInsets.only(top: 48),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  // createTopup();
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFF5258D4)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.59649))),
                                ),
                              ),
                              child: const Text(
                                'Top-Up',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 19.7895,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: isSuccessful,
                            child: Image.asset(
                              'assets/image/success-topup.png',
                              width: 153,
                              height: 60,
                            ),
                          ),
                          Visibility(
                            visible: isSubmit,
                            child: Visibility(
                              visible: !isSuccessful,
                              child: Image.asset(
                                'assets/image/failed-topup.png',
                                width: 153,
                                height: 60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                              blurRadius: 6.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Transaction History', style: AdminPage.titleTransaction,),
                          const SizedBox(height: 5),
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Color(0xfff1f1f1)),
                                  ),
                              hintText: 'Search Transaction',
                              hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffbdbdbd)),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 450,
                            child: SearchTransactionAdmin(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
