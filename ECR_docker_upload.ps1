# REQUIRES AWS CLI. Login before running the script

# Logging in docker through aws

aws ecr get-login-password --region {REGION} | docker login --username AWS --password-stdin {ECR_URI}
docker tag {docker-image-name} {ECR_URI}
docker push {ECR_URI}