# Increments a counter before returning it as the response body.
#
action(name: "counter", public: true) {
  core.set(name: "bucket") {
    core.echo("examples")
  } >> core.set(name: "key") {
    core.echo("counter")
  } >> core.fork {
    keyv.transform(bucket: :bucket, key: :key, set: 0) {
      math.add(value: 1)
    }
  } >> keyv.get(bucket: :bucket, key: :key)
}
