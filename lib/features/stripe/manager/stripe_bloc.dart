//stripe bloc

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'stripe_event.dart';
part 'stripe_state.dart';

class StripeBloc extends Bloc<StripeEvent, StripeState> {
  StripeBloc() : super(StripeInitialState());
}
