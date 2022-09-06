import 'package:bloc/bloc.dart';
import 'package:button_future/domain/repository/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<SignOutPressEvent>((event, emit) async {
      await authRepository.signOut();
      emit(AuthStateUnauthenticated());
    });

    on<AuthCheckRequestedEvent>((event, emit) async {
      final userOption = authRepository.getSignedInUser();
      userOption.fold(() => emit(AuthStateUnauthenticated()),
          (a) => emit(AuthStateAuthenticated()));
    });
  }
}
