pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    def image = docker.image('jin2chen/php:7.4-fpm-alpine')

                    image.pull()
                    image.inside {
                        sh './devops/install.sh'
                    }
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    def image = docker.image('jin2chen/php:7.4-fpm-alpine')

                    image.pull()
                    image.inside {
                        sh './vendor/bin/phpunit --colors=never'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}