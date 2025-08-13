resource "aws_instance" "web" {
    ami = "ami-0a84ffe13366e143f"
    instance_type = "t3.medium"
    key_name = "akshatnv"

    user_data = file("./config.sh")

    root_block_device {
        volume_size = 50
    }

    tags = {
        Name = "Akshat-terra"
    }
}