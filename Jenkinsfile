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
                sh 'streamlit run dashboard.py --server.port 8501 --server.address 0.0.0.0'
            }
        }
    }
}