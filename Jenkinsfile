pipeline {
    agent {
        node {
            label 'workstation'
        }
    }
    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t docker.io/krn010/catalogue .'
            }

        }

        stage('Docker Push') {
            steps {
                sh 'docker push docker.io/krn010/catalogue'
            }

        }

        }
    }
