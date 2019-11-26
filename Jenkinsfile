pipeline {
	environment {
    registry = "amarreddy94/test"
    registryCredential = 'Docker'
    dockerImage = ''
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
			stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }


				}
		}
