//pipeline{
//    agent any
//    stages{
//        stage("one"){
//            steps{
//                echo "this is first pipeline"
//            }
//        }
//    }
//}

pipeline{
    agent none
    stages{
        stage("master node"){
            agent{
                label 'master'
            }
            steps{
                echo "hello world"
            }

        }
        stage("worstation node"){
            agent{label 'workstation'}
            steps{
                echo "i am from workstation"
            }
        }
    }
}