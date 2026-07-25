import 'package:docdoc_app/config/di/di.dart';
import 'package:docdoc_app/config/routing/app_router.dart';
import 'package:docdoc_app/docdoc_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize HydratedBloc storage for state persistence
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationDocumentsDirectory()).path,
          ),
  );

  // Configure dependencies using GetIt and Injectable
  configureDependencies();

  runApp(DocdocApp(appRouter: AppRouter()));
}
