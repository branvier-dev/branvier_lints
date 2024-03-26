# Changelog

## 0.3.0 - Mar 26, 2024

- Bump `custom_lint_builder` to `^0.6.4`.
- Updated `analysis_options.yaml` docs.
- Changed `cyclomatic_complexity` and `function_lines_of_code` to their default values.
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
