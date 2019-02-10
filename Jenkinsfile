def label = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label, containers: [
    containerTemplate(name: 'docker', image: 'docker', command: 'cat', ttyEnabled: true)
],
volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
]) {

    node(label) {
        def repo = checkout scm
        def commit = repo.GIT_COMMIT
        def branch = repo.GIT_BRANCH
        def registry = "wearebrews/portfolio"
        def credentidal = "dockerhub"

	stage('Build image') {
	    when {
	        allOf {
			not {
			    branch 'master'
			};
			not {
			    branch 'develop'
			}
		}
	    }
	    container('docker') {
	    	sh "docker build -t ${registry}:${commit} ."
	    }
	}

        stage('Build image') {
	    when {
	        anyOf { 
		    branch 'master';
		    branch 'develop'
		}
		
	    }
            container('docker') {
                withCredentials([[$class: 'UsernamePasswordMultiBinding',
                credentialsId: 'dockerhub',
                usernameVariable: 'DOCKER_HUB_USER',
                passwordVariable: 'DOCKER_HUB_PASSWORD']]) {
                    sh """
                    docker login -u ${DOCKER_HUB_USER} -p ${DOCKER_HUB_PASSWORD}
                    docker build -t ${registry}:${commit} .
                    docker push ${registry}:${commit}
                    """
                }
            }
        }
    }
}
