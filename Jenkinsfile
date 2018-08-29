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
                    sh 'echo limor'
                    sh "docker stop counter-${BRANCH_NAME}"
                    sh "docker rm counter-${BRANCH_NAME}"
                    sh "docker build -t counter-${BRANCH_NAME}-img ."
                    sh "docker run -d -p 80:80 --name counter-${BRANCH_NAME} counter-${BRANCH_NAME}-img"
                   
            }
        }
    }

    options {
            timestamps()
    }
}
