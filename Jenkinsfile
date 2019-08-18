node {
    
    def registry = 'registry.hub.docker.com/chiphwang/udacitycapstone'
    def registryCredential = 'dockerhub'
	
	stage('Git') {
		git 'https://github.com/chiphwang/udacity_capstone'
	}
	
	
   stage('Lint Check') {
		steps {
			sh 'tidy -q -e *.html'
		}
	}


	stage('Building image') {
        docker.withRegistry( 'https://' + registry, registryCredential ) {
		    def buildName = registry + ":$BUILD_NUMBER"
			newApp = docker.build buildName
			newApp.push()
        }
	}
	stage('Registering image') {
        docker.withRegistry( 'https://' + registry, registryCredential ) {
    		newApp.push 'latest2'
        }
	}
    stage('Removing Local image') {
        sh "docker rmi $registry:$BUILD_NUMBER"

    }
    
    stage('update Kuberntes Image') {
        sh "kubectl set image deployment/udacitycapstone udacity=chiphwang/udacitycapstone:$BUILD_NUMBER"
   }

}
