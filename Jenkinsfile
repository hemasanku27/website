pipeline {

 agent {label 'test'}
 
  stages {
    stage('Pull Source') {
      steps {
        git branch: "master", url: "https://github.com/hemasanku27/website.git"
      }
     }
     stage('Docker Image Build') {     
        steps {
              sh 'sudo docker build -t demo-image:${BUILD_NUMBER} . '
               }
             }
        stage('Creating Docker Container') {
           steps {
                 def docrm = 'docker container -aq'
                 sh "docker container rm -f ${docrm}"
                 sh "docker container run -it -d -p 83:80 --name mytestsrv1 demo-image:${BUILD_NUMBER}"
             }  
          }
    }
}
