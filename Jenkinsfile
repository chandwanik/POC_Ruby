pipeline {
  agent any
  stages {
    stage("build") {
          steps {
            echo 'building the application....'
            bat 'cucumber'
          }
       }
    stage("test") {
          steps {
            echo 'running tests.....'
            
          }
       }
    stage("deploy") {
          steps {
            echo 'deploying the applications...'
          }
       }
                      
    }
}
          
          
