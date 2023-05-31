#!/usr/bin/env groovy



node {

    // properties([
    //     parameters ([
    //         string(name: 'VAR1', defaultvalue: 'VAR1')
    //     ])
    // ])

    

    stage('build') {
        echo 'hello'
        sh 'ls -l'
        sh 'pwd'
    }
    stage('test') {
        echo 'hello'
        retry(3) {
            sleep 3
            sh 'sldfkjsdlkfj'

        }
        
    }
    stage('deploy') {
        echo 'hello'
    }
    stage('print all') {
        println("valor do this:")
        println(this)
        println("valor do env:")
        println(env)
        println("valor das env vars:")
        sh 'env'
        println("valor de params:")
        println(params)

    }
}





