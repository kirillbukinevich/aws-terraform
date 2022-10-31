provider "aws" {
    profile = "default"
    region = "us-west-1"     
}

resource "aws_instance" "app_server" {
    ami = "ami-09208e69ff3feb1db"
    instance_type = "t2.micro"
    tags = {
        Name = "my_app_server"
    }
} 

resource "aws_s3_bucket" "my_bucket" {

}
