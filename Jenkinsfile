pipeline {
    agent any

    environment {
        AWS_ACCOUNT_ID = credentials('aws-account-id')
        REGION = "ap-south-1"
    }

    stages {
        stage('Git Pull') {
            steps {
                script {
                    // Clean workspace and clone the repository
                    cleanWs()
                    git credentialsId: 'kiranterraform', branch: 'main', url: "https://github.com/kiran6055/timing-infra.git"
                    sh 'env'
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                     withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credentials']]) {

                        sh """
                            terraform init -reconfigure
                        """
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                     withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credentials']]) {

                        sh """
                            terraform plan
                        """
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    input {
                        message "Should we continue?"
                        ok "Yes, we should."
                    }
                     withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credentials']]) {
                       sh """
                            terraform apply -auto-approve
                        """
                    }
                }
            }
        }
    }
}
   

       
    
