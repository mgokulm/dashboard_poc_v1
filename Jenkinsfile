pipeline {
      agent {dockerfile true}
    stages {
        stage('Clone repository') {
            steps {
                echo 'gkl in stage - Clone repo'
                checkout scm
            }
        }
    }
}