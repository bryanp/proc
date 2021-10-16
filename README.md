**Examples for [Proc](https://proc.dev), a low-code platform for easily building behavior and shipping it instantly.**

Each of the actions in this repo are accessible through `bryanp.bin.proc.run/{name}`.

Check the health of proc:

  * [bryanp.bin.proc.run/health](https://bryanp.bin.proc.run/health)

Say hello to someone by name:

  * [bryanp.bin.proc.run/hello?name=proc](https://bryanp.bin.proc.run/hello?name=proc)

Increment a counter, then return the current value:

  * [bryanp.bin.proc.run/counter](https://bryanp.bin.proc.run/counter)

Create a single-use action (probably not available!):

  * [bryanp.bin.proc.run/once](https://bryanp.bin.proc.run/once)

Check the health of a given host:

  * [bryanp.bin.proc.run/http/check?host=proc.dev](https://bryanp.bin.proc.run/http/check?host=proc.dev)

Create a basic auth endpoint:

  * [bryanp.bin.proc.run/auth](https://bryanp.bin.proc.run/auth)

## Deploying To Proc

Use the Proc CLI to deploy any of these examples:

```
proc deploy actions/hello.rb
```
