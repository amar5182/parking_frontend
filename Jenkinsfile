pipeline {
	environment {
    registry = "amarreddy94/test"
    registryCredential = 'HAmar@1994'
  }
	agent any
		stages {
			/**Insurance-Frontend Pipeline Job Build and Test stages **/
			stage('SCM Checkout') {
				steps {
					git url: 'https://github.com/amar5182/parking_frontend.git'
						}
								}
			stage('Build') {
				steps {
					sh"npm install"
					sh"npm run build"
							}
					}
 				 stage('Building image') {
 					   steps{
  						    script {
  							      docker.build registry + ":$BUILD_NUMBER"
  									    }
   								 }
 							 }
			stage('Push Image') {
				steps {
					sh"docker build -t amarreddy94/amartomcat"
					sh"docker push amarreddy94/amartomcat "
							}
					}
				}
		}
