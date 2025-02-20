variable "user-info" {
  type = map(string)
  default = {
      name = "Voeffray"
      surname = "Lucielle"
    }
}

variable "tags" {
  type = map(string)
  default = {
    Owner = "Lucielle Voeffray"
    Classe = "300722"
    Cours = "210"
  }
}

variable "classe" {
  type = string
  default = "300722"
}

variable "RG" {
  type        = string
  description = "RG-CHY-300722-210-LucielleVoeffray"
  default = "RG-CHY-300722-210-LucielleVoeffray"
}

variable "webapp_size" {
  type = map(string)
  default = {
    tier = "Basic"
    size = "B1"
  }
}

variable "image" {
  type = map(string)
  default = {
    "mail" = "quentin.badoud@edufr.ch"
    "secret" = "C4cG4FfJBBpe4cWHSZ5HjgXWFR4wa7wU"
    "URLprefix" = "https://"
    "url" = "exo.container-registry.com"
    "tag" = "latest"
    "name" = "c213-emf/todo-app-voel:latest"
  }
}

variable "DB" {
  type = map(string)
  default = {
    DB_HOST = "container-chy-300277-210-mysql-luciellevoeffray-1.mysql.database.azure.com"
    DB_USER = "localadminq"
    DB_PASS = "Emf12345"
    DB_PORT = "3306"
    DB_NAME = "todo_app"
  }
}

variable "ressource-suffix" {
  type = string
  description = "suffix of ressource name"
  default = "-300722-210-voeffray-lucielle"
}

variable "location" {
  type = string
  default = "northeurope"
}