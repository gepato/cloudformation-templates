set -e
export REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1
for dir in */; do
  echo $dir
  infra-buddy  validate-template --service-template-directory $dir
#  aws cloudformation validate-template --template-body file://$dir/cloudformation.template > out
  cfn-lint  $dir/cloudformation.template
done
