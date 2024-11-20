import 'package:flowery_e_commerce/core/networking/error/error_model.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';


abstract class OccasionsState {}

class OccasionsInitialState extends OccasionsState {}

class GetOccasionsLoadingState extends OccasionsState {}

class GetOccasionsSuccessState extends OccasionsState {
  final List<Occasions> occasions;

  GetOccasionsSuccessState(this.occasions);
}

class GetOccasionsErrorState extends OccasionsState {
  final ErrorModel errorModel;

  GetOccasionsErrorState(this.errorModel);
}
