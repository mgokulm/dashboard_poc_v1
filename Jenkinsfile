pipeline {
      agent {dockerfile true}
    stages {
        stage('Clone repository') {
            steps {
                echo 'gkl in stage - Clone repo'
                checkout scm
            }
        stage('Prepare') {
            steps {
                echo 'gkl in stage - Prepare'
                sh 'pipenv install'
            }
        }
        stage('Run image') {
            steps {
                echo 'gkl in stage - Run image'
                sh 'docker run -p 8501:8501 streamlit'
            }
        }
    }
}
