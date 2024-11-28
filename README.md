# codebuild.yml deploy command
aws cloudformation deploy \
--stack-name codebuild-stack \
--template-file codebuild.yml \
--parameter-overrides file://parameters.json \
--capabilities CAPABILITY_NAMED_IAM \
--profile Administrator