pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-credentials') // Asegúrate de configurar esto en Jenkins
        IMAGE_TAG = "jos3zy/test-tecnico:tagname" // Cambia 'tagname' según sea necesario
    }

    stages {
        stage('Checkout') {
            steps {
                // Obtiene el código desde tu repositorio
                checkout scm
            }
        }

        stage('Unit Tests') {
            steps {
                // Ejecuta pruebas unitarias
                sh 'echo "Ejecutando pruebas unitarias..."'
                // Aquí incluirías comandos para ejecutar tus pruebas
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Construye la imagen Docker
                    sh "docker build -t ${IMAGE_TAG} ."
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    // Inicia sesión en Docker Hub
                    sh "echo ${DOCKERHUB_CREDENTIALS_PSW} | docker login -u ${DOCKERHUB_CREDENTIALS_USR} --password-stdin"
                    // Sube la imagen al Docker Hub
                    sh "docker push ${IMAGE_TAG}"
                }
            }
        }

        stage('Cleanup') {
            steps {
                // Limpieza post-ejecución
                sh 'echo "Limpieza post-ejecución"'
                sh 'docker rmi ${IMAGE_TAG}'
            }
        }
    }

    post {
        always {
            // Acciones a realizar después de completar el pipeline
            echo 'El job ha finalizado'
        }
    }
}
