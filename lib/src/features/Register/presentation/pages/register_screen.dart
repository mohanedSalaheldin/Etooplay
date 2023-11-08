import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:etooplay/generated/l10n.dart';
import 'package:etooplay/src/config/routes/routes.dart';
import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:etooplay/src/core/utils/app_widgets.dart';
import 'package:etooplay/src/features/Register/presentation/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var emailController = TextEditingController();
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final List<String> items = [
            S.of(context).male,
            S.of(context).female,
          ];
          var cubit = RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
                // titleSpacing: 0.0,
                ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSizedBox(),
                  verticalSizedBox(),
                  Text(
                    S.of(context).create_afree_account,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSizedBox(),
                  defaultButton(
                    onpressed: () {
                      print(cubit.isClient);

                      if (!cubit.isClient) {
                        cubit.toggleBetweenClientAndsPorvidor();
                      }
                    },
                    color: cubit.isClient
                        ? null
                        : const Color.fromARGB(255, 229, 233, 229),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).client,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: cubit.isClient
                                        ? Colors.white
                                        : AppColors.primary,
                                  ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.business_center_outlined,
                          color:
                              cubit.isClient ? Colors.white : AppColors.primary,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                  verticalSizedBox(),
                  defaultButton(
                    onpressed: () {
                      print(cubit.isClient);
                      if (cubit.isClient) {
                        cubit.toggleBetweenClientAndsPorvidor();
                      }
                    },
                    color: !cubit.isClient
                        ? null
                        : const Color.fromARGB(255, 229, 233, 229),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).service_providor,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: !cubit.isClient
                                        ? Colors.white
                                        : AppColors.primary,
                                  ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.person_2_outlined,
                          color: !cubit.isClient
                              ? Colors.white
                              : AppColors.primary,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                  verticalSizedBox(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).first_name,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          S.of(context).last_name,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: defaultTextFormField(
                          controller: firstNameController,
                          hint: null,
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: null,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: defaultTextFormField(
                          controller: lastNameController,
                          hint: null,
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: null,
                        ),
                      ),
                    ],
                  ),
                  verticalSizedBox(),
                  DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 20,
                        vertical: 25,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      // Add more decoration..
                    ),
                    hint: Text(
                      S.of(context).gender,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      return null;
                    },
                    onChanged: (value) {
                      // tagController.text = value!;

                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      // selectedValue = value.toString();
                    },
                    buttonStyleData: const ButtonStyleData(

                        // padding: EdgeInsets.only(right: 8),

                        ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 0,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.register2Route);
                        },
                        child: Row(
                          children: [
                            Text(
                              S.of(context).next,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 24,
                                  ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 25.0,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
