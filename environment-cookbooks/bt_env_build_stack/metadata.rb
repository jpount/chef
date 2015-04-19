name             "bt_env_build_stack"
description      "Environment level cookbook for launching the whole build stack"
version          "0.1.0"

depends "bt_go", ">= 0.1.0"
depends "bt_chef_dk", ">= 0.1.0"
depends "bt_ruby", ">= 0.1.0"

recipe "bt_env_build_stack:::default", "Installs and configures Gitlab, a Go server and agent on the same node"

