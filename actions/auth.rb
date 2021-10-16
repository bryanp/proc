# Protects the endpoint with http basic auth.
#
action(name: "auth", public: true) {
  core.fork {
    http.headers
     .| type.hash.value(key: "authorization")
     .| type.string.split(separator: " ")
     .| type.array.value(index: 1)
     .| base.decode(base: "64")
     .| core.equal(value: "testing:123") >> core.unless {
          http.response(status: 401, headers: {"www-authenticate" => "basic realm='proc example'"})
           .| http.dispatch
        }
  } >> http.response(body: "you made it!")
}
