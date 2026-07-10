pipeline {
    agent any

    triggers {
        // This tells Jenkins to listen for GitHub webhook triggers
        githubPush()
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Jenkins automatically pulls the code that triggered the webhook
                checkout scm
            }
        }
        stage('Test App') {
            steps {
                // Run Maven unit tests (if you have pom.xml)
                sh 'mvn clean test'
            }
        }
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
    }
}
