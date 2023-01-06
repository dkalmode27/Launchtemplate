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
        
        stage("Terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        
        stage("Terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        
        stage("Terraform apply") {
            steps {
                input 'Create test infrastructure ?'
                milestone(1)
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
