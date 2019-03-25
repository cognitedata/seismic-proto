def label = "seismic-proto-${UUID.randomUUID().toString().substring(0, 5)}"

podTemplate(
    label: label,
    containers: [
        containerTemplate(
            name: 'protobuf',
            image: 'uber/prototool:latest',
            resourceLimitCpu: '200m',
            resourceLimitMemory: '500Mi',
            envVars: [],
            ttyEnabled: true,
            command: '/bin/cat -'
        ),
        containerTemplate(
            name: 'docker',
            image: 'docker:18.03.0-ce',
            command: '/bin/cat -',
            resourceRequestCpu: '200m',
            resourceLimitCpu: '2000m',
            resourceLimitMemory: '300Mi',
            ttyEnabled: true
        )
    ],
    nodeSelector: 'cloud.google.com/gke-local-ssd=true',
    volumes: [
        secretVolume(secretName: 'jenkins-docker-builder', mountPath: '/jenkins-docker-builder'),
        hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')
    ]
)
{
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
                }
            }
        }
    }
}
