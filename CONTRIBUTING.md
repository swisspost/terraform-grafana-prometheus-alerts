# How to contribute to this Module

This module is maintained by some engineers at Swiss Post who use this module internally and wanted to share it so that others can use it too. 
Contributions of all sorts are welcome. If feasable open an issue for your contribution before writing code and ensure it has a label of `question`, `bug` or `feature` using the respective issue template where applicable.

More contributing guidelines might be introduced when necessary. 

## Unit testing a Terraform Module

We at Swiss Post belief that Infrastructure should be tested similarly to how software is tested. In the [test folder](./test) you will find a number of testing files, including a [main_test.go](./test/main_test.go). We are using the testing framework of [Golang](https://go.dev) in combination with a library called [Terratest](https://terratest.gruntwork.io) to do automated testing for this Terraform module. 

These tests are executed using CI for every pull request.

### Running tests locally

In case you want to run unit tests locally, ensure that you have:

- a working installation of go 
- docker and docker-compose installed 

Then to execute tests you can run:

```console
cd test && go test -v -timeout 20m ./...
```

This command will:
- change to the [test](./test) directory
- run `go test` with a timeout, finding all go test files in the folder and executing them with verbose output
- create an ephemeral Grafana instance using docker and docker-compose in the first test
- apply some Terraform sample configurations to this Grafana instance
- cleanup in the end

### Writing tests

All contributions are welcome, even those without tests ☺️. 

Nonetheless we encourage contributors to try and see if new features can be covered by extending existing test cases or by writing new tests.
