pipeline{
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "alvinjegan221/jenkins_demo"
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
        stage('Login to dockerhub') {
            steps {
                script {
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                 }
            }
        }

        stage('Push image to dockerhub') {
            steps {
                script {
                    sh 'docker push $IMAGE_NAME:latest'
                }
            }
        }
    }

}