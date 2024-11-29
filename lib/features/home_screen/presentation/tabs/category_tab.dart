import 'package:flowery_e_commerce/core/utils/widgets/base/base_view.dart';
import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/categories/presentation/categories/viewModel/categories_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/generic/presentation/screens/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesTab extends StatelessWidget {
   CategoriesTab({super.key});
  CategoriesViewModelCubit categoriesViewModelCubit = getIt.get<CategoriesViewModelCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => categoriesViewModelCubit,
      child: BaseView(child: CategoriesView()),
    );
  }
}
