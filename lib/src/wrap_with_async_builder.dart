import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Right above "wrap in builder"
const wrapPriority = 29;

class WrapWithAsyncBuilder extends DartAssist {
  WrapWithAsyncBuilder();

  static Uri get uri => Uri.parse('package:flutter_async/flutter_async.dart');

  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    dynamic target,
  ) {
    context.registry.addInstanceCreationExpression((node) {
      try {
        // ignore: avoid_dynamic_calls //
        final canTarget = target.intersects(node.constructorName.sourceRange);
        if (!(canTarget as bool)) return;
      } catch (_) {}

      final createdType = node.constructorName.type.type;
      if (createdType == null) return;

      final element = createdType.element;
      if (element == null) return;

      final changeBuilder = reporter.createChangeBuilder(
        message: 'Wrap with AsyncBuilder',
        priority: wrapPriority,
      );

      changeBuilder.addDartFileEdit((builder) {
        builder.importLibrary(uri);
        builder.addSimpleInsertion(
          node.offset,
          'AsyncBuilder(builder: (context, data) { return ',
        );
        builder.addSimpleInsertion(node.end, '; },)');
      });
    });
  }
}
