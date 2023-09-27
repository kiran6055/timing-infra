pipeline {
    agent any

    environment {
        REGISTRY = "${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/pixalive"
        AWS_ACCOUNT_ID = "573314280082"
        REGION = "ap-south-1"
    }

    stages {
        stage('gitpull') {
            steps {
                script {
                    cleanWs() // Corrected step name
                    git branch: 'main', url: "https://github.com/kiran6055/catalogue-cicd"
                }
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    sh """
                    docker build -t pixalive:v1 .
                    """
                }
            }
        }

        stage('Image Push to ECR') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS-AUTH']]) {
                    script {
                        sh """
                        aws ecr get-login-password --region ${REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com
                        docker tag pixalive:v1 ${REGISTRY}:latest
                        docker push ${REGISTRY}:latest
                        """
                    }
                }
            }
        }
    }
}
