pipeline {
	environment {
		registry = "wearebrews/portfolio
		credentidal = "dockerhub"
	}
	agent any
	stages {
		stage('Build image') {
			app = docker.build registry + ":$BUILD_NUMBER"
		}
	}
}
