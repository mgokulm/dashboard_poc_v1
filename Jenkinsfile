pipeline {
      agent {dockerfile true}
    stages {
        stage('Clone repository') {
            steps {
                echo 'gkl in stage - Clone repo'
                checkout scm
            }
        }
        stage('Run') {
            steps {
                echo 'gkl in stage - Run'
                sh 'ENTRYPOINT streamlit run dashboard.py --server.port=8501'
            }
        }
    }
}