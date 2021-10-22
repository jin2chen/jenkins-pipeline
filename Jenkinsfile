pipeline {
    agent {
        label 'linux'
    }

    stages {
        stage('Build') {
            steps {
                sh './devops/build.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}