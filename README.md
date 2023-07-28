# CDK TF Learnings

A place to play around with [terraform CDK](https://developer.hashicorp.com/terraform/cdktf).

Start off by running through [this tutorial](https://developer.hashicorp.com/terraform/tutorials/cdktf/cdktf-install?variants=cdk-language%3Apython) to get up and running with python. Initially aim to:

* Create a docker image that can be used to execute against my code
* A make file to run the build, either with docker directly or with docker-compose

## Dev container

Have built a basic [dev container](./Dockerfile) including:
* Terraform CLI
* Terraform CDK
* Python 3.10 (courtesy of Ubuntu 22.04)
* pip3

Build it with:
```
docker build . -t cdktf-cli
```

Run with :
```
docker run -it -v $(pwd)/src:/src cdktf-cli
```