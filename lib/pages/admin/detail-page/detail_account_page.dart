import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/layout/navbar_admin.dart';

class DetailAccount extends StatefulWidget {
  const DetailAccount({required this.name, required this.phone, required this.type, Key? key}) : super(key: key);

  final String name;
  final String phone;
  final String type;

  @override
  State<DetailAccount> createState() => _DetailAccountState();
}

class _DetailAccountState extends State<DetailAccount> {
  late String _selectedType;
  late final TextEditingController _name = TextEditingController();
  late final TextEditingController _phone = TextEditingController();

  @override
  void initState() {
    _selectedType = widget.type;
    _name.text = widget.name;
    _phone.text = widget.phone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        child: Stack(
          children: [
            Image.asset('assets/images/bg-detail.png'),
            Container(
              margin: const EdgeInsets.only(top: 55),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const AdminNavBar(index: 4)));
                      });
                    },
                    child: Container(
                      width: 52,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(13)),
                          border: Border.all(width: 1, color: const Color(0xFFD2D2D2))
                      ),
                      child: Center(
                        child: Image.asset('assets/images/exit.png', width: 19, height: 19),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 87),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    height: 467,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9, right: 11, top: 37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 6),
                            child: const Text(
                              'Account Detail',
                              style: TextStyle(
                                  fontFamily: Fonts.mainFamily,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          const SizedBox(height: 26),
                          SizedBox(
                            height: 54,
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xFFE7E7E7),
                                  ),
                                ),
                              ),
                              controller: _name,
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 54,
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xFFE7E7E7),
                                  ),
                                ),
                              ),
                              controller: _phone,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: const <Widget>[
                                Text(
                                  'Account',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8D8989)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Type',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff8D8989)),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Radio(
                                        value: "B",
                                        groupValue: _selectedType,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedType = value!;
                                          });
                                        }),
                                    const Expanded(
                                        child: Text(
                                          'Buyer',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'DM Sans',
                                              fontSize: 18,
                                              color: Color(0xff8D8989)),
                                        ))
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio(
                                        value: "S",
                                        groupValue: _selectedType,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedType = value!;
                                          });
                                        }),
                                    const Text(
                                      'Merchant',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DM Sans',
                                          fontSize: 18,
                                          color: Color(0xff8D8989)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 9, right: 7),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 43,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF3E8E8),
                                      borderRadius: BorderRadius.circular(6.59649)),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        'Remove Account',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'DM Sans',
                                            fontSize: 16,
                                            color: Color(0xFFAC2C2C)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  padding: EdgeInsets.zero,
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff5258D4),
                                      borderRadius: BorderRadius.circular(6.59649)),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        'Update Account',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DM Sans',
                                            fontSize: 16,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
