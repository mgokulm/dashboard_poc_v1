pipeline {
      agent {dockerfile true}
    stages {
        stage('Prepare') {
            steps {
                echo 'gkl in stage - Prepare'
                sh 'pipenv install'
            }
        }
    }
}
