1. This repo has master and Develop branch; has different files for two types of deployment.
2. If you want to deploy with docker only then the #websitepipelinedocker.txt will carry deployments first from develop branch, if it is a success then will execute deployments from master branch.
3. So, if you want to deploy in docker only, then branches have their own Dockerfile, index.html and an image directory with a groovy script named #websitepipelinedocker.txt .
4. If you want to deploy in docker and orchrestrate in K8S, then the #websitePipelineK8S.txt will carry deployments first from develop branch, if it is a success then will execute deployments from master branch.
5. So, all required yaml files for namespace, deployment and service are there in both the branches.
6. For K8S Pipeline -- I created two AWS EC2 instances. One I made the K8S MASTER NODE(CONTROL PLANE)/JENKINS SLAVE and other as K8S WORKER NODE/JENKINS MASTER, INSTANCE TYPE--t2.medium or more as you wish, AMI--ubuntu(>20.04LTS).
7. For K8S Pipeline -- In K8S MASTER NODE(CONTROL PLANE)/JENKINS SLAVE install - jdk and k8s. In K8S WORKER NODE/JENKINS MASTER install - k8s,jdk,jenkins.
8. For Docker Pipeline -- I created two AWS EC2 instances. One I made the DOCKER/JENKINS SLAVE and other as JENKINS MASTER, INSTANCE TYPE--t2.micro or more as you wish, AMI--ubuntu(>20.04LTS).
9. For Docker Pipeline -- In JENKINS SLAVE install - jdk and Docker. In JENKINS MASTER install -jdk,jenkins.
10. Disclaimer-- I keep modifying or experimenting but the pipeline and all code files are ok to execute. As nothing is 100% right, I have deployed these many times with/without pipeline, sometimes the image is not rendered or the nodeport number if you check in browser (for k8s) will show no page, but the codes always run success and give required result as expected.
11. The proof as screenshots are present in .gitignore for both docker and k8s pipelines with all other files.
12. Understand the pipeline and don't forget to generate login credentials for dockerhub and jenkins slave VM.
