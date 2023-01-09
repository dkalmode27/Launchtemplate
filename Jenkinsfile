def AGENT_LABEL_MASTER = "Master-node"
def AGENT_LABEL_SLAVE = "Worker-node"

pipeline {
    
    agent {
      label "${AGENT_LABEL_MASTER}"
    }
    
    stages {
        
        stage("Checkout source code from Github") {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dkalmode27/Launchtemplate.git'
            }
        }
        
        stage("Initialize terraform") {
            steps {
                sh 'terraform init'
            }
        }
        
        stage("Validate conf. files") {
            steps {
                sh 'terraform validate'
            }
        }
        
        stage("Apply terraform conf. changes") {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
