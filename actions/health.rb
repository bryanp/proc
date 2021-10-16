# Simply returns `ok`. Used as a smoke test to check the health of the proc platform.
#
action(name: "health", public: true) {
  core.echo("ok")
}
