pipeline {
    agent { label 'master' }
    environment {
        BRANCH_NAME="${env.BRANCH_NAME}"
    }

    stages {
        stage('BRANCH_NAME') {
            steps{
                sh 'echo BRANCH_NAME = ${BRANCH_NAME}'
            }
        }
        stage('build') {
            steps{
                 sh 'docker.build("arungupta/counter-${BRANCH_NAME}-img")'
                 //sh 'sudo docker build -t counter-${BRANCH_NAME}-img .'
                 //sh 'sudo docker run -d -p 80:80 --name counter-${BRANCH_NAME} counter-${BRANCH_NAME}-img'
            }
        }
    }

    options {
            timestamps()
    }
}
