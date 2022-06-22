color = rule(implementation=lambda ctx: None)

to_gray = transition(
  implementation = lambda s,a: {"//:color":"//:gray"},
  inputs = [],
  outputs = ["//:color"],
)

pen = rule(
  implementation = lambda ctx: print(ctx.attr._color.label),
  attrs = {
    "_color": attr.label(default="//:color"),
    "_allowlist_function_transition": attr.label(
      default = "@bazel_tools//tools/allowlists/function_transition_allowlist"
    ),
  },
  cfg = to_gray,
)

