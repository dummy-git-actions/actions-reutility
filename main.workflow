workflow "Ejemplo" {
  resolves = ["mi-git-action"]
}

action "mi-git-action" {
  uses = ".github/workflows/reutilizar.yml@main"
  secrets = ["NPM_TOKEN", "GIT_TOKEN"]
  env = {
    MY_ENV_VAR = "valor-de-mi-variable-de-entorno"
    NPM_TOKEN = "${{ secrets.NPM_TOKEN }}"
    GIT_TOKEN = "${{ secrets.GIT_TOKEN}}"
  }
}