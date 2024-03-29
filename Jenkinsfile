pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('pull') {
            steps {
                git 'https://github.com/Thangarajindxx/helloworld-pom-war-file.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.15.146.50:8090/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
