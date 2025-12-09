# Changelog

## 0.8.2

- Allow `**/*.g.dart` as packages like `macro_kit` need it.

## 0.8.1

- Removed `use_function_type_syntax_for_parameters`

## 0.8.0

- Bump `custom_lint_builder` to `0.8.1`.
- Bump `pyramid_lint` to `2.4.0`.

## 0.7.1

- Removed `specify_nonobvious_property_types`.
- Removed `switch_on_type`.
- Removed `flutter_style_todos`.

## 0.7.0

- Removed `unsafe_variance`.
- Bump `pyramid_lint` to `2.3.0`.
- Bump `custom_lint_builder` to `0.8.0`.
- Update `all_lint_rules` to SDK 3.9.2: Added `switch_on_type` & `unnecessary_unawaited`.

## 0.6.0

- Improved performance.
- Bump `pyramid_lint` to `^2.1.0`.
- Update `all_lint_rules` to SDK 3.8.0.

## 0.5.0

- Remove `solid_lints` dependency.
- Remome all assists/wrappers.
- Bump `pyramid_lint` to `^2.0.3`.
- Bump `custom_lint_builder` to `^0.7.5`.
- Update `all_lint_rules` to SDK 3.7.1.

## 0.4.1

- Disable `prefer_border_radius_all` (pyramid).
- Disable `prefer_border_from_border_side` (pyramid).
- Disable `document_ignores`.
- Disable `one_member_abstracts`.

## 0.4.0

- Bump sdk to 3.6.0.
- Bump solid_lints to 0.2.2.
- Bump custom_lint_builder to 0.6.10.
- Added `avoid_futureor_void`.
- Added `document_ignores`.
- Added `invalid_runtime_check_with_js_interop_types`.
- Added `missing_code_block_language_in_doc_comment`.
- Added `omit_obvious_local_variable_types`.
- Added `specify_nonobvious_local_variable_types`.
- Added `unintended_html_in_doc_comment`.
- Added `unnecessary_library_name`.
- Added `use_truncating_division`.
- Removed `unsafe_html`.
- Disabled `unreachable_from_main`.
- Disabled `specify_nonobvious_local_variable_types`.

## 0.3.8 - Sep 6, 2024

- Ignored `parameter_assignments`
- Bump custom_lint_builder to 0.6.5
- Bump pyramid_lint to 2.0.1

## 0.3.7 - Aug 6, 2024

- Disabled `avoid_mutable_global_variables`.
- Disabled `avoid_global_state`.
- Disabled `avoid_late_keyword`.
- Disabled `boolean_prefixes`.
- Enable `type_annotate_public_apis` only on packages.

## 0.3.6 - Jul 30, 2024

- Disabled `avoid_non_null_assertion`.

## 0.3.5 - May 11, 2024

- Disabled `inference_failure_on_function_invocation`.

## 0.3.4 - April 16, 2024

- Disabled `prefer_async_await`.

## 0.3.3 - April 14, 2024

- Updated `member_ordering`:
  - Added `fields`.
  - Disabled `field_fields`, `private_fields` and `methods`.
- Added `AnimationController`, `StreamSubscription` and `Timer` to `ignored_types` of `avoid_late_keyword` lint.

## 0.3.2 - April 1, 2024

- Bump `solid_lints` to `^0.1.5`.

## 0.3.0 - Mar 26, 2024

- Bump `custom_lint_builder` to `^0.6.4`.
- Updated `analysis_options.yaml` docs.
- Changed `cyclomatic_complexity` and `function_lines_of_code` to their recommended values.
- Disabled:
  - max_lines_for_file
  - max_lines_for_function (only Pyramid)
  - max_switch_cases
  - prefer_const_constructor_declarations
  - number_of_parameters

## 0.2.5 - Mar 12, 2024

We decided to remove some dependencies to make the package lighter and faster.

- Bump pyramid_lint to 2.0.0.
- All custom lints are warnings now.
- Removed nilts dependency.
- Removed leancode_lint dependency.
- Removed ListenableBuilder and ValueListenableBuilder from assists.
- Removed duplicated lints. (Solid vs Pyramid).

## 0.2.0 - Mar 12, 2024

- Disabled max_lines_for_function and function_lines_of_code rules as cyclomatic_complexity is enough to check the complexity of a function and those conflicts with build method of flutter widgets.

## 0.1.0 - Mar 1, 2024

- Initial pre-release.
