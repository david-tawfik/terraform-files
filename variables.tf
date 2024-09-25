variable "number_of_containers" {
	description = "takes the number of containers as number"
	type = number
	default = 2
}


variable "image_name" {
        description = "takes the number of image as string"
        type = string
        default = "nginx"
}

variable "image_version" {
        description = "takes the version of image as string"
        type = string
        default = "latest"
}
