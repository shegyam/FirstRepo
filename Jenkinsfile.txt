pipeline {
    agent any // This runs the pipeline on any available agent
    stages {
        stage('Check Terraform Version') {
            steps {
                sh 'terraform version' // Executes the command in the shell
            }
        }
    }
}
