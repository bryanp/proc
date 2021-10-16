# Says hello to the name provided in the `name` query parameter.
#
action(name: "hello", public: true) {
  core.set(name: "name") {
    http.params
    .| type.hash.value(key: "name")
  }
  .| type.string.build("hello ")
  .| type.string.append(value: arg(:name, default: "???"))
}
