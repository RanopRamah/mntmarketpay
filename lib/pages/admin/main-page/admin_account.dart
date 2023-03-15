import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/usecases/admin/add_account.dart';
import 'package:mntmarketpay/domain/usecases/admin/user-list.dart';
import 'package:mntmarketpay/pages/admin/widget/account-widget/searchaccount.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminAccountPage extends StatefulWidget {
  const AdminAccountPage(this.bearer, {super.key}): super();

  final String bearer;

  @override
  State<AdminAccountPage> createState() => _AdminAccountPageState();

}

class _AdminAccountPageState extends State<AdminAccountPage> {
  String _selectedType = 'B';
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _noHp = TextEditingController();
  final TextEditingController _pin = TextEditingController();

  late Future<List<Users>> _users;
  final user = AdminUserListImpl();
  final add = AddAccountImpl();

  @override
  void initState() {
    _users = user.fetchUsers(widget.bearer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: form()),
              const SizedBox(height: 30),
              searchAccount(_users),
            ],
          ),
        ),
      )
    );
  }
  Container form() {
    return Container(
      width: 345,
      height: 587,
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 3,
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 1),
            blurStyle: BlurStyle.normal,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'New Account',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontFamily: 'DM Sans',
                color: Color(0xff222222)),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: _nama,
            style: const TextStyle(fontFamily: 'DM Sans'),
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: const TextStyle(fontFamily: 'DM Sans',fontWeight: FontWeight.w700,fontSize: 14),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                      width: 0.91,
                      color: Color(
                        0xffC8BDBD,
                      ))),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: _noHp,
            style: const TextStyle(fontFamily: 'DM Sans'),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Nomor Akun',
              labelStyle: const TextStyle(fontFamily: 'DM Sans',fontWeight: FontWeight.w700,fontSize: 14),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                      width: 0.91,
                      color: Color(
                        0xffC8BDBD,
                      ))),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(4),
            ],
            controller: _pin,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontFamily: 'DM Sans'),
            decoration: InputDecoration(
              labelText: 'PIN Akun',
              labelStyle: const TextStyle(fontFamily: 'DM Sans',fontWeight: FontWeight.w700,fontSize: 14),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                      width: 0.91,
                      color: Color(
                        0xffC8BDBD,
                      ))),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
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
          const SizedBox(
            height: 10,
          ),
          Row(children: [
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
              flex: 1,
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
          ]),
          TextButton(
              onPressed: () {
                setState(() {
                  add.addAccount(context, widget.bearer, _noHp.text, _nama.text, _pin.text, _selectedType);
                });
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xff5258D4),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      'Make Account',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'DM Sans',
                          fontSize: 19,
                          color: Colors.white),
                    ),
                  )))
        ],
      ),
    );
  }
}

