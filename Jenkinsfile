////pipeline{
////    agent any
////    stages{
////        stage("one"){
////            steps{
////                echo "this is first pipeline"
////            }
////        }
////    }
////}
//
//pipeline{
//    agent any
//    stages{
//        stage('workstation'){
//            steps{
//                echo "hi i am from workstaion"
//            }
//        }
//        stage('new'){
//            steps{
//                echo "hi"
//            }
//        }
//    }
//}



pipeline{
    agent any
    stages{
        stage('one'){
            steps{
                sh '''cd 06-roboshop-components
                      terraform init
                      terraform apply -auto-approve'''
            }
        }
    }
}



















