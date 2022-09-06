import 'package:bloc/bloc.dart';
import 'package:button_future/core/failures/auth_failures.dart';
import 'package:button_future/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignupformEvent, SignupformState> {
  final AuthRepository authRepository;

  SignUpFormBloc({required this.authRepository})
      : super(SignupformState(
            isSubmitting: false,
            showValidationMessages: false,
            authFailureOrSuccessOption: none())) {
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.registerWithEmailAndPassword(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.signInWithEmailAndPassword(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });
  }
}
