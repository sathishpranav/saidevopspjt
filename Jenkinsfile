pipeline {
    agent any
    
    triggers {
        // This tells Jenkins to listen for the GitHub Webhook trigger
        githubPush()
    }

    stages {
        stage('Checkpipeline {
    agent any

    triggers {
        // This tells Jenkins to listen for the GitHub Webhook trigger
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
                // This tells Maven to compile and execute our unit test
                sh 'mvn clean test'
            }
        }
		stage('Build') {
            steps {
                sh 'javac HelloWorld.java'
            }
        }
        stage('Run') {
            steps {
                sh 'java HelloWorld'
            }
        }
    }
}


