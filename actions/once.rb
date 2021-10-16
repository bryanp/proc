# Returns a random string after destroying itself. Used to show a possible implementation of a single-use action.
#
action(name: "once", public: true) {
  action.delete(name: "once")
  .| rand.string
}
