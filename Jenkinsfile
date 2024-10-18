pipeline{
    agent any
    
    stages{
        stage('Build'){
            steps{
                    //Check out the repository code
                    git 'https://github.com/sunilkrishna49/Phase4-Project2-PetClinic.git'

                    //Run the Maven Compile to build the project
                    echo 'Building the project with Maven Compile'
                    sh './mvnw compile' //Using Maven wrapper for portability
            }

        }
        stage('Test'){
            steps{
                //Run Maven Tests
                echo 'Testing the project with Maven Test'
                sh './mvnw test'
            }
        }
        stage('Package'){
            steps{
                //Run Maven Package to create the jar file
                echo 'Packaging the Project with Maven Package'
                sh './mvnw package'
            }
        }
        stage('Containerize'){
            steps{
                //Docker build command to create a Docker image
                echo 'Containerizing the App with Docker'
                sh 'docker build -t pet-clinic:1.0.0' //Build Docker image
            }

        }
        stage('Deploy'){
            steps{
                //Docker run command to deploy the container
                echo 'Deploying the App with Docker'
                sh 'docker run -d -p 4040:4040 pet-clinic:1.0.0' //Run the Docker Container in detached mode
            }
        }
    }
    post{
        always{
            //Clean up workspace
            cleanWs()
        }
    }
}