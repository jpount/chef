name 'go_agent'
description 'Role for a go agent instance'
run_list(
  'recipe[bt_go::agent]', 'recipe[bt_go::agent_linux_chef]'
)
