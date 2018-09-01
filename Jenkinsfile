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
                    sh '''CONTAINER_NAME=counter-${BRANCH_NAME}
                          IMAGE_NAME=counter-${BRANCH_NAME}-img
                          if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ];then
                            docker stop ${CONTAINER_NAME}
                            docker rm ${CONTAINER_NAME}
                          fi
                          docker build -t ${IMAGE_NAME} .
                          CID=$(docker run -d -p 80:80 -v opt/app:/opt/app --restart unless-stopped --name=${CONTAINER_NAME} ${IMAGE_NAME})
                          echo CONTAINER_ID=${CID}
                          CIP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID})
                          echo CONTAINER_IP=${CIP}
                          echo Increase counter using: curl -X POST "http://${CIP}:80/"
                          echo Display counter using: curl http://${CIP}:80/'''
                   
            }
        }
    }

    options {
            timestamps()
    }
}
