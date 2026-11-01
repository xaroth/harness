# shellcheck shell=bash
# The t3 npm package is a launcher; it unpacks the release under $T3CODE_HOME on first run.
# shellcheck disable=SC2016
check "node-pty prebuilt pty.node present" ux bash -c '
  v="$(node -p "require(\"/opt/npm-global/lib/node_modules/t3/package.json\").version")" &&
  test -f "$T3CODE_HOME/runtime/versions/$v/node_modules/node-pty/prebuilds/linux-x64/pty.node"'
