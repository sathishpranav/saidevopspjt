
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Compile your Java file
                sh 'javac HelloWorld.java'
            }
        }

        stage('Run') {
            steps {
                // Execute the compiled program
                sh 'java HelloWorld'
            }
        }

        stage('Docker Package') {
            steps {
                // Build the Docker image using the Dockerfile in your repo
                sh 'docker build -t helloworld-app:latest .'
            }
        }

        stage('SonarQube Analysis') {
            environment {
                scannerHome = tool 'SonarQubeScanner'   // Jenkins tool name
            }
            steps {
                withSonarQubeEnv('MySonarQubeServer') { // Jenkins SonarQube server config name
                    sh "${scannerHome}/bin/sonar-scanner \
                        -Dsonar.projectKey=helloworld-app \
                        -Dsonar.sources=. \
                        -Dsonar.java.binaries=. \
                        -Dsonar.host.url=http://localhost:9000 \
                        -Dsonar.login=squ_b442879708de3b13108e324b43c6c1df173909bb
                }
            }
        }

        stage('Quality Gate') {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    }
}

