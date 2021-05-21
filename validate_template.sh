set -e


for dir in */; do
  echo $dir
  infra-buddy  validate-template --service-template-directory $dir
done
