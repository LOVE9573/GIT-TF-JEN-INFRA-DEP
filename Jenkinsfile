 agent any environment {  
 TF_VAR_AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')  
 TF_VAR_AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')  
 TF_VAR_REGION = 'us-east-1' // Change to your desired region }  

 stages {  
 stage('Checkout Code') {  
 steps {  
 // Checkout the code from the repository git 'https://github.com/your-repo/terraform-infrastructure.git'  
 }  
 }  

 stage('Terraform Init') {  
 steps {  
 // Initialize Terraform sh 'terraform init'  
 }  
 }  

 stage('Terraform Plan') {  
 steps {  
 // Plan the Terraform deployment sh 'terraform plan -out=tfplan'  
 }  
 }  

 stage('Terraform Apply') {  
 steps {  
 // Apply the planned changes sh 'terraform apply -auto-approve tfplan'  
 }  
 }  

 stage('Terraform Validate') {  
 steps {  
 // Validate Terraform configuration sh 'terraform validate'  
 }  
 }  

 stage('Cleanup') {  
 steps {  
 // Optionally, you may want to remove the plan file sh 'rm -f tfplan'  
 }  
 }  
 }  

 post {  
 always {  
 // Archive Terraform state file and logs if needed archiveArtifacts artifacts: 'terraform.tfstate', fingerprint: true archiveArtifacts artifacts: '*.log', fingerprint: true }  
 success {  
 echo 'Infrastructure deployment completed successfully!'  
 }  
 failure {  
 echo 'Infrastructure deployment failed!'  
 }  
 }  
}