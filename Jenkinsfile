pipeline {
    agent any

    environment {
        AWS_ACCOUNT_ID = credentials('aws-account-id')
        REGION = "ap-south-1"
    }


    parameters {

      choice(name: 'ACTION', choices: ['apply' , 'destroy'], description: 'Action')
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
                    
                    
                     withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credentials']]) {
                       sh """
                            terraform ${ACTION} -auto-approve
                        """
                    }
                }
            }
        }
    }
}
   

       
    
