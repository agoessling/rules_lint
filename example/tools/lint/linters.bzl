"Define linter aspects"

load("@aspect_rules_lint//lint:clang_tidy.bzl", "lint_clang_tidy_aspect")

clang_tidy = lint_clang_tidy_aspect(
    binary = "@@//tools/lint:clang_tidy",
    configs = [
        "@@//:.clang-tidy",
    ],
    lint_target_headers = True,
    angle_includes_are_system = False,
    verbose = False,
)
