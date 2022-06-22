to_gray = transition(
  implementation = lambda s,a: {"@quux//:color":"@quux//:gray"},
  inputs = [],
  outputs = ["@quux//:color"],
)

pen = rule(
  implementation = lambda ctx: print(ctx.attr._color.label),
  attrs = {
    "_color": attr.label(default="@quux//:color"),
    "_allowlist_function_transition": attr.label(
      default = "@bazel_tools//tools/allowlists/function_transition_allowlist"
    ),
  },
  cfg = to_gray,
)

