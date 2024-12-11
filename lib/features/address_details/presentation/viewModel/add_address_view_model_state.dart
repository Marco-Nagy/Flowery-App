part of 'add_address_view_model_cubit.dart';

@immutable
sealed class AddAddressViewModelState {}

final class AddAddressViewModelInitial extends AddAddressViewModelState {}

final class AddAddressViewModelLoading extends AddAddressViewModelState {}

final class AddAddressViewModelSuccess extends AddAddressViewModelState {
  final AddAddressResponseEntity response;

  AddAddressViewModelSuccess(this.response);
}

final class AddAddressViewModelError extends AddAddressViewModelState {
  final ErrorModel message;

  AddAddressViewModelError(this.message);
}
