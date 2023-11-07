import 'package:etooplay/generated/l10n.dart';
import 'package:etooplay/src/core/utils/app_widgets.dart';
import 'package:etooplay/src/features/login/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginScreenAppBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            S.of(context).login,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          defaultTextFormField(
            hint: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
            suffixIcon: Icons.email_outlined,
          ),
        ],
      ),
    );
  }
}
