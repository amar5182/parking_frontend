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
           stage('Deploy') {
				steps {
					sh"cp -r $WORKSPACE/build /var/workspace"
					sh"curl -u admin:admin http://3.0.175.22:8888/manager/reload?path=/build"
							}
					}
				}
		}
