import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/single_child_widget.dart';

import '../dependency_injection/injections.dart';
import '../features/stripe/manager/stripe_bloc.dart';

List<SingleChildWidget> get blocProviders => [
      BlocProvider(
        lazy: false,
        create: (context) => getIt<StripeBloc>(),
      ),
    ];
