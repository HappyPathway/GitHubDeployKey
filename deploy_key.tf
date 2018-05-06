# Add a deploy key
resource "github_repository_deploy_key" "deploy_key" {
    title = "${var.key_title}"
    repository = "${var.repository}"
    key = "${file("${var.keyfile}")}"
    read_only = "${var.read_only}"
}