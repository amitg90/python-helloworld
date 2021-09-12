node {
    def commit_id
    stage('Prep'){
        checkout scm
        sh "git rev-parse --short HEAD > .git/commit-id"
        commit_id = readFile('.git/commit-id').trim()
        sh """echo ${commit_id}"""
    }
    stage('docker build/push'){
        docker.withRegistry('https://hub.docker.com/amitg90/python-helloworld,
        ''){
             def app = docker.build("python-helloworld:python-helloworld-${commit_id}", '.').push()
        }
    }
//     stage('aws ecs'){
//         sh 'chmod +x ./awsfile.sh'
//         sh """echo ${commit_id}"""
//         sh "./awsfile.sh ${commit_id}"
//     }
}

// pipeline {
//     agent {
//         docker { image 'node:14-alpine' }
//     }
//     stages {
//         stage('Test') {
//             steps {
//                 sh 'node --version'
//             }
//         }
//     }
// }
