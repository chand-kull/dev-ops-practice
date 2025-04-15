pipeline { 
    agent any  
     
    tools{ 
        jdk 'jdk17' 
        maven 'maven3' 
    } 
     
     stages{ 
         
        stage("Git Checkout"){ 
            steps{ 
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Aj7Ay/amazon-eks-jenkins-terraform-aj7.git']])
            } 
        } 
         
        stage("maven compile"){ 
            steps{

                sh "mvn clean compile" 
            } 
        } 
         
     } 
} 