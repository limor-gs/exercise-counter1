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
                    sh """CONTAINER_NAME=counter-${BRANCH_NAME}
                          IMAGE_NAME=counter-${BRANCH_NAME}-img
                          docker stop ${CONTAINER_NAME}
                          docker rm ${CONTAINER_NAME}
                          docker build -t ${IMAGE_NAME} .
                          docker run -d -p 80:80 --name ${CONTAINER_NAME} ${IMAGE_NAME}
                          CONTAINER_IP=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${CONTAINER_NAME})
                          echo CONTAINER_IP=${CONTAINER_IP}"""
                   
            }
        }
    }

    options {
            timestamps()
    }
}
