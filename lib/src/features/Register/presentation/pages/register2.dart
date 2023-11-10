import 'package:etooplay/generated/l10n.dart';
import 'package:etooplay/src/config/routes/routes.dart';
import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:etooplay/src/core/utils/app_widgets.dart';
import 'package:etooplay/src/features/Register/presentation/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register2Screen extends StatelessWidget {
  const Register2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var passwordAgainController = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
                // titleSpacing: 0.0,
                ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSizedBox(),
                      verticalSizedBox(),
                      Text(
                        S.of(context).Continue_create_your_account,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
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
                        ispassword: !cubit.isPasswordShown,
                        hint: S.of(context).password,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.lock_open,
                      ),
                      verticalSizedBox(),
                      defaultTextFormField(
                        controller: passwordAgainController,
                        ispassword: !cubit.isPasswordShown,
                        hint: S.of(context).confirm_password,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.lock_open,
                      ),
                      verticalSizedBox(),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: AppColors.primary,

                            // fillColor: MaterialStatePropertyAll(AppColors.primary),
                            value: !cubit.isPasswordShown,
                            onChanged: (bool? value) {
                              cubit.changePasworsVisibility();
                            },
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            S.of(context).show_password,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.primary,
                                      fontSize: 20.0,
                                    ),
                          ),
                        ],
                      ),
                      verticalSizedBox(),
                      verticalSizedBox(),
                      defaultButton(
                        onpressed: () {},
                        content: Text(
                          S.of(context).register,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      verticalSizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).you_have_an_account,
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
                              Navigator.pushNamed(context, Routes.loginRoute);
                            },
                            child: Text(
                              S.of(context).login,
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
