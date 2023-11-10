import 'package:etooplay/generated/l10n.dart';
import 'package:etooplay/src/config/routes/routes.dart';
import 'package:etooplay/src/core/utils/app_assets.dart';
import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:etooplay/src/core/utils/app_widgets.dart';
import 'package:etooplay/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:etooplay/src/features/login/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (BuildContext context, LoginState state) {
          var cubit = LoginCubit.get(context);
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
                      verticalSizedBox(),
                      verticalSizedBox(),
                      defaultTextFormField(
                        controller: emailController,
                        hint: S.of(context).email,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                      ),
                      verticalSizedBox(),
                      defaultTextFormField(
                        controller: passwordController,
                        suffixIcon: cubit.isPasswordShown
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        suffixIconOnpressed: () {
                          cubit.changePasworsVisibility();
                        },
                        ispassword: !cubit.isPasswordShown,
                        hint: S.of(context).password,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.lock_open,
                      ),
                      verticalSizedBox(),
                      verticalSizedBox(),
                      defaultButton(
                        onpressed: () {},
                        content: Text(
                          S.of(context).login,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      verticalSizedBox(),
                      Center(
                        child: Text(
                          S.of(context).or,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.grey[600],
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
                            horizentalSizedBox(),
                            Text(
                              S.of(context).or_login_with_google,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.grey[600],
                                    fontSize: 20.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      verticalSizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).dont_have_an_account,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.grey[600],
                                      fontSize: 20.0,
                                    ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.registerRoute);
                            },
                            child: Text(
                              S.of(context).register,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: AppColors.primary,
                                    fontSize: 20.0,
                                  ),
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
        },
      ),
    );
  }
}
