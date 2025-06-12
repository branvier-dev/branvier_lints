// ignore_for_file: invalid_use_of_internal_member //

/// Branvier Lints is a set of custom lints for Dart and Flutter projects.
/// -
///
/// Included lint libraries:
/// - Dart Sdk Lints: https://dart.dev/tools/linter-rules/all
library;

import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:pyramid_lint/pyramid_lint.dart' as pyramid;

/// Creates a plugin for our custom linter
PluginBase createPlugin() => _BranvierLints();

/// Initialize custom solid lints
class _BranvierLints extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) =>
      rules ??= pyramid.createPlugin().getLintRules(configs.withWarning());

  static List<LintRule>? rules;
}

extension on CustomLintConfigs {
  /// Converts all lint rules to warnings
  CustomLintConfigs withWarning() {
    return CustomLintConfigs(
      debug: debug,
      verbose: verbose,
      enableAllLintRules: enableAllLintRules,
      rules: rules.map((name, options) {
        final newOptions = LintOptions.fromYaml({
          ...options.json,
          'severity': 'warning',
        }, enabled: options.enabled);

        return MapEntry(name, newOptions);
      }),
    );
  }
}
