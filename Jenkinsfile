pipeline {
    agent any
   parameters {
        string(name: 'REGION', defaultValue: 'eu-central-1', description: 'Select the region')
    }
    environment {
        AWS_DEFAULT_REGION = ${params.PERSON} // Set your desired AWS region
        AWS_CONFIGURE = credentials('AWS-credentials')
    }

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', changelog: false, poll: false, url: 'https://github.com/srinivasarao-ceq/Jenkins_terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                 sh 'terraform plan -var-file="dev/terraform.tfvars"'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve -var-file="dev/terraform.tfvars"'
            }
        }
	   		
    }
}
