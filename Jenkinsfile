@Library('jenkins-helpers') _

def label = jenkinsHelpersUtil.uniquePodLabel()
podTemplate(
    label: label,
    annotations: [
        podAnnotation(key: "jenkins/build-url", value: env.BUILD_URL ?: ""),
        podAnnotation(key: "jenkins/github-pr-url", value: env.CHANGE_URL ?: ""),
    ],
    containers: [
        containerTemplate(
            name: 'protobuf',
            image: 'uber/prototool:1.4.0',
            resourceLimitCpu: '200m',
            resourceLimitMemory: '500Mi',
            envVars: [],
            ttyEnabled: true,
            command: '/bin/cat -'
        )
    ],
    envVars: [],
    volumes: []
) {
    properties([buildDiscarder(logRotator(daysToKeepStr: '30', numToKeepStr: '20'))])
    node(label) {
        container('jnlp') {
            stage('Checkout') {
                checkout(scm)
            }
        }
        container('protobuf') {
            timeout(time: 5, unit: 'MINUTES') {
                stage('Validate .proto files') {
                    sh('prototool compile')
                    sh('prototool lint')
                }
            }
        }
    }
}
