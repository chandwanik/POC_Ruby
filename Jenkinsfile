pipeline {
  agent any
  stages {
    stage("build") {
          steps {
            echo 'building the application....'
            sh 'gem install bundler'
          }
       }
    stage("test") {
          steps {
            echo 'running tests.....'
            sh 'cucumber'
            
          }
       }
    stage("deploy") {
          steps {
            echo 'deploying the applications...'
          }
       }
                      
    }
}
          
          
