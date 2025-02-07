import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/utils/widgets/spacing.dart';
import 'package:flowery_e_commerce/features/checkout/presentation/viewModel/checkout_base_action.dart';
import 'package:flowery_e_commerce/features/checkout/presentation/viewModel/checkout_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/checkout/presentation/widgets/payment_option.dart';
import 'package:flowery_e_commerce/features/checkout/presentation/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/localization/lang_keys.dart';
import 'package:flowery_e_commerce/core/utils/extension/media_query_values.dart';
class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {



  @override
  Widget build(BuildContext context) {
    CheckoutViewModelCubit viewModelCubit =
    context.read<CheckoutViewModelCubit>();
    return Column(
      children: [
        const Divider(height: 60,thickness: 24,color: MyColors.white60,),
         SectionTitle(title: context.translate(LangKeys.paymentMethod)),
        verticalSpacing(16),

        PaymentOption(
          title: context.translate(LangKeys.creditCard),
          selectedValue: 'credit',
          onSelected: (value) {
            viewModelCubit.doAction(SelectPaymentOptionAction(value) );
          },
        ),
        const SizedBox(height: 8),
        PaymentOption(
          title: context.translate(LangKeys.cashOnDelivery),
          selectedValue: 'cash',
          onSelected: (value) {
            viewModelCubit.doAction(SelectPaymentOptionAction(value) );
          },
        ),
      ],
    );
  }
}