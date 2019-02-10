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
            container('docker') {
                sh "docker build -t ${registry}:${commit}" .
        }
        }
    }
}
