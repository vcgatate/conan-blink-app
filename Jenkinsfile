def artifactory_name = "artifactory_local"
def artifactory_repo = "conan-local"
String docker_image = "conanio/gcc6-armv7hf"

node {
    docker.image(docker_image).inside('-v /tmp/:/tmp/ -v /home/danimtb/:/home/conan/danimtb/ --net=host') {
        def server = Artifactory.server artifactory_name
        def client = Artifactory.newConanClient()
        def serverName = client.remote.add server: server, repo: artifactory_repo

        stage("Get project") {
              checkout scm
        }

        stage("Get dependencies and create app") {
            client.run(command: "remote remove conan-center" )
            String strCommand = "create . danimtb/stable -pr /home/conan/.conan/profiles/default"
            client.run(command: strCommand)
        }

        stage("Upload packages") {
            String command = "upload blinkapp* --all -r ${serverName} --confirm"
            def b = client.run(command: command)
            b.env.collect()
            server.publishBuildInfo b
        }
    }
}
