pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir '.'
            args '-v /tmp:/tmp -v /localview:/localview'
        }
    }
    stages {
        stage("Dummy") {
            steps{
            script {
                // wrap([$class: 'BuildUser']) {
                //     user_id = "${BUILD_USER_ID}"
                // }
                // sh 'mkdir davinder'
                sh """
                ls -lrt
                git version
                pwd
                echo ${user_id}
                """
                // dir('davinder') {
                //     git(url: "https://github.com/jfrogdev/project-examples.git",
                //         branch: 'master',
                //         changelog: false,
                //         poll: false)
                // }
                sh '''
                ls -lrt
                pwd
                '''
            }}
        }
    }
}