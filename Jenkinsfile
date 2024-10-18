pipeline{
    agent any
    
    stages{
        stage('Build'){
            steps{
                // Check out the repository code
                git 'https://github.com/sunilkrishna49/Phase4-Project2-PetClinic.git'

                // Run the Maven Compile to build the project
                echo 'Building the project with Maven Compile'
                bat './mvn clean install' // Use 'bat' for Windows
            }
        }
        stage('Test'){
            steps{
                // Run Maven Tests
                echo 'Testing the project with Maven Test'
                bat './mvn test'
            }
        }
        stage('Package'){
            steps{
                // Run Maven Package to create the jar file
                echo 'Packaging the Project with Maven Package'
                bat './mvnw package'
            }
        }
        stage('Containerize'){
            steps{
                // Docker build command to create a Docker image
                echo 'Containerizing the App with Docker'
                bat 'docker build -t pet-clinic:1.0.0 .' // Use 'bat' for Windows and add '.' to specify Docker context
            }
        }
        stage('Deploy'){
            steps{
                // Docker run command to deploy the container
                echo 'Deploying the App with Docker'
                bat 'docker run -d -p 4040:4040 pet-clinic:1.0.0' // Use 'bat' for Windows
            }
        }
    }
    post{
        always{
            // Clean up workspace
            cleanWs()
        }
    }
}
