import 'package:etooplay/generated/l10n.dart';
import 'package:etooplay/src/core/utils/app_assets.dart';
import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:etooplay/src/core/utils/app_widgets.dart';
import 'package:etooplay/src/features/login/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginScreenAppBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  S.of(context).login_title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                VerticalSizedBox(),
                VerticalSizedBox(),
                defaultTextFormField(
                  hint: S.of(context).email,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icons.email_outlined,
                ),
                VerticalSizedBox(),
                defaultTextFormField(
                  hint: S.of(context).password,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icons.lock_open,
                ),
                VerticalSizedBox(),
                VerticalSizedBox(),
                Container(
                  height: 70.0,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    color: AppColors.primary,
                    child: Text(
                      S.of(context).login,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                VerticalSizedBox(),
                Center(
                  child: Text(
                    S.of(context).or,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                          // fontSize: 24.0,
                          // fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          AssetsManager.google,
                        ),
                      ),
                      HorizentalSizedBox(),
                      Text(
                        S.of(context).or_login_with_google,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                              fontSize: 20.0,
                            ),
                      ),
                    ],
                  ),
                ),
                VerticalSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).dont_have_an_account,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                            fontSize: 20.0,
                          ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        S.of(context).login,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
