pipeline {
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
           stage('docker_login') {
				steps {
					// This step should not normally be used in your script. Consult the inline help for details.
withDockerRegistry(credentialsId: 'Docker', url: 'https://hub.docker.com/repository/docker/') {
    // some block
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
