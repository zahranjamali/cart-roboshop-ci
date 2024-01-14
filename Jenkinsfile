#!/usr/bin/env groovy

@Library('jenkins-shared-lib-rev')_

pipeline {
    stages {
        stage('docker Build') {
            steps {
                buildImage 'zahranjamali/roboshop:cart-1.0.0'
            }
        }
        stage('docker login and push') {
            steps {
                dockerLogin()
                dockerPush 'zahranjamali/roboshop:cart-1.0.0'
            }
        }
    }
}