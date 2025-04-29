pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/SaiRamya15/gradle-githubactions.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo "Building the project with Gradle"
                bat './gradlew clean build'  // Use 'sh' instead of 'bat' on Linux agents
            }
        }

      stage('output') {
    steps {
        bat 'java -jar gradle-githubactions-demo.jar'
    }
  
      }
}
}



        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: '**/build/libs/*.jar', fingerprint: true
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

