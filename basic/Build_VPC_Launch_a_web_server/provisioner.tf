provision "remote-exec"{
  inline =[
  "yum install -y httpd mysql php",
  "wget https://aws-tc-largeobjects.s3.amazonaws.com/AWS-TC-AcademyACF/acf-lab3-vpc/lab-app.zip",
  "unzip lab-app.zip -d /var/www/html"
  ]
}