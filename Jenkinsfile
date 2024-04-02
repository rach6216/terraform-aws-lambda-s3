pipeline {

    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Init') {
          steps {
            dir('terraform'){
              sh '''
                terraform init
              '''
            }
          }
        }

        stage('Plan') {
          steps {
            dir('terraform'){
              echo 'Terraform Plan in progress'
              sh '''
                terraform plan
              '''
            }
          }
        }

      stage('Apply and deploy') {
        steps {
          dir('terraform'){
            echo 'Terraform Plan in progress'
            sh '''
              terraform apply -auto-approve
            '''
          }
        }
      }
    }

}