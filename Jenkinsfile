
@Library('jenkins-helpers') _

def label = jenkinsHelpersUtil.uniquePodLabel()

void pod(body) {
    podTemplate(
        label: label,
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
        volumes: []
    ) {
        node(label) {
            body()
        }
    }
}


pod() {
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
