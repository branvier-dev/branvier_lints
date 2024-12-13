// ignore_for_file: implementation_imports, invalid_use_of_internal_member //

/// Branvier Lints is a set of custom lints for Dart and Flutter projects.
/// -
///
/// Included lint libraries:
/// - Dart Sdk Lints: https://dart.dev/tools/linter-rules/all
/// - Solid Lints: https://pub.dev/packages/solid_lints
library;

import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:pyramid_lint/pyramid_lint.dart' as pyramid;
import 'package:solid_lints/solid_lints.dart' as solid;

import 'src/wrap_with_async_builder.dart';

/// Creates a plugin for our custom linter
PluginBase createPlugin() => _BranvierLints();

/// Initialize custom solid lints
class _BranvierLints extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        ...pyramid.createPlugin().getLintRules(configs.withWarning()),
        ...solid.createPlugin().getLintRules(configs),
      ];

  @override
  List<Assist> getAssists() => [
        ...pyramid.createPlugin().getAssists().withoutListenableWraps(),
        ...solid.createPlugin().getAssists(),

        // * Branvier Assists
        WrapWithAsyncBuilder(),
      ];
}

extension on CustomLintConfigs {
  /// Converts all lint rules to warnings
  CustomLintConfigs withWarning() {
    return CustomLintConfigs(
      verbose: false,
      debug: false,
      enableAllLintRules: enableAllLintRules,
      rules: rules.map((name, options) {
        final newOptions = LintOptions.fromYaml(
          {...options.json, 'severity': 'warning'},
          enabled: options.enabled,
        );

        return MapEntry(name, newOptions);
      }),
    );
  }
}

extension on List<Assist> {
  /// Removes ListenableBuilder and ValueListenableBuilder wraps from assist.
  List<Assist> withoutListenableWraps() {
    removeWhere((e) => '${e.runtimeType}'.contains('Listenable'));

    return this;
  }
}
