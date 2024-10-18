pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Check out the repository code
                git 'https://github.com/sunilkrishna49/Phase4-Project2-PetClinic.git'

                // Give execute permissions to the Maven wrapper script
                echo 'Giving execute permission to mvnw'
                sh 'chmod +x mvnw'

                // Run the Maven Compile to build the project
                echo 'Building the project with Maven Compile'
                sh './mvnw clean install' // Use 'sh' for Linux
            }
        }
        stage('Test') {
            steps {
                // Run Maven Tests
                echo 'Testing the project with Maven Test'
                sh './mvnw test' // Use 'sh' for Linux
            }
        }
        stage('Package') {
            steps {
                // Run Maven Package to create the jar file
                echo 'Packaging the Project with Maven Package'
                sh './mvnw package' // Use 'sh' for Linux
            }
        }
        stage('Containerize') {
            steps {
                // Docker build command to create a Docker image
                echo 'Containerizing the App with Docker'
                sh 'docker build -t pet-clinic:1.0.0 .' // Use 'sh' for Linux and add '.' to specify Docker context
            }
        }
        stage('Deploy') {
            steps {
                // Docker run command to deploy the container
                echo 'Deploying the App with Docker'
                sh 'docker run -d -p 4040:4040 pet-clinic:1.0.0' // Use 'sh' for Linux
            }
        }
    }
    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
