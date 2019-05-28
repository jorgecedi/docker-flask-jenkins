pipeline{
    agent{
        docker{
            image 'python:3.7.2'
        }
    }
    stages{
        stage('build') {
            steps {
                shell 'pip install -r requirements.txt'
            }
        }
        stage('test'){
            steps {
                shell 'python test.py'
            }
            post {
                always {
                    junit 'test-reports/*.xml'
                }
            }
        }
    }
}
