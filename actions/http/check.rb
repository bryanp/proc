# Performs a request to the host defined by the `host` query parameter, returning the status name of the response. The
# scheme can be passed through the `scheme` query parameter, defaulting to `https`.
#
action(name: "http.status", public: true) {
  core.set(name: "scheme") {
    http.params
    .| type.hash.value(key: "scheme")
  } >> core.set(name: "host") {
    http.params
    .| type.hash.value(key: "host")
  } >> core.set(name: "uri") {
    type.string
    .| type.string.append(value: arg(:scheme, default: "https"))
    .| type.string.append(value: "://")
    .| type.string.append(value: arg(:host))
  } >> http.fetch(method: "get", uri: arg(:uri)) >> http.status.name
}
