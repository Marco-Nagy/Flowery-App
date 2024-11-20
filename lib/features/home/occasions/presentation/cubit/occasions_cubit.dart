import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/core/networking/error/error_handler.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/uses_cases/occasions_use_case.dart';
import 'package:flowery_e_commerce/features/home/occasions/presentation/cubit/occasions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OccasionsCubit extends Cubit<OccasionsState> {
  OccasionsCubit(this.occasionsUseCase) : super(OccasionsInitialState());
  final OccasionsUseCase occasionsUseCase;

  void getOccasions() async {
    emit(GetOccasionsLoadingState());
    var response = await occasionsUseCase();
    switch (response) {
      case Success<List<Occasions>>():
        print("====================${response.data.map(
              (e) => e.name,
        ).toList()}");
        emit(GetOccasionsSuccessState(response.data));
      case Fail():
        emit(GetOccasionsErrorState(ErrorHandler.handle(response.exception!)));
    }
  }
}
