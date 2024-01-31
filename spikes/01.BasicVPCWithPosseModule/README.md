# Spike 01 - Try out Basic VPC with CloudPosse module

The examples provided show ease of use, however I would have expected a flow log or a linter hint that I need to add one.
The result is a simple VPC with IGW, but without a flow log.

CloudPosse's module abstracted away an important aspect, didn't execute on it and didn't warn me in the IDE about it.
In fact, there is no mention in the variables.tf of the module and I can see the skip comment in the main.tf:

```sh
#bridgecrew:skip=BC_AWS_LOGGING_9:VPC Flow Logs are meant to be enabled by terraform-aws-vpc-flow-logs-s3-bucket and/or terraform-aws-cloudwatch-flow-logs
```

My conclusion is that these modules may be used for productivity, but the user still needs to have proper awareness of what is happening, inspect the result and run some linters or inspection tools to find these aspects. The user also may want to inspect the module's code for these disabled linter checks and decide what to do about them.
