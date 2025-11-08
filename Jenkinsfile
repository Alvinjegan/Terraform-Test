pipeline{
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "Alvinjegan221/jenkins_demo"
    }

    stages{
        stage('repo_clone'){
            steps{
                git branch: 'main', url: 'https://github.com/Alvinjegan/Terraform-Test'
            }
        }
        stage('Build_docker_image'){
            steps{
                script{
                    sh "docker build -t $IMAGE_NAME:latest ."

                }
            }
        }
    }

}