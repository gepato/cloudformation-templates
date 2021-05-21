set -e


for dir in */; do
  echo $dir
  infra-buddy  validate-template --service-template-directory $dir
  aws cloudformation validate-template --template-body file://$dir/cloudformation.template
done
