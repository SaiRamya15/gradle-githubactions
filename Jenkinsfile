pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                     git url: 'https://github.com/SaiRamya15/gradle-githubactions.git', branch: 'main'
    }
}

            }
        }

        stage('Build') {
            steps {
                echo "Building the project with Gradle"
                bat './gradlew clean build' // use 'gradle build' if not using wrapper
            }
        }

        stage('Test') {
            steps {
                echo "Running tests"
                bat './gradlew test'
            }

            post {
                always {
                    junit '**/build/test-results/test/*.xml'
                }
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: '**/build/libs/*.jar', fingerprint: true
            }
        }
    }

    post {
        success {
            echo "Build succeeded!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
