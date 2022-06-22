```sh
$ export USE_BAZEL_VERSION=5.2.0
$ bazelisk build :my_pen        # succeeds
$ bazelisk build :my_other_pen  # fails
$ export USE_BAZEL_VERSION=last_green  # as of 2022-06-22
$ bazelisk build :my_pen        # fails
$ bazelisk build :my_other_pen  # fails
```

