<html>
  <head>
    <body>
      <h1>Deploying the Python project on aws Ec2</h1>
      <h3>Instance configuration</h3>
      <h4>* launch an instance</h4>
      <h4>* instance Name keep it as ur wish</h4>
      <h4>* image will be ubuntu 20.04</h4>
      <h4>* instance type:t2 medium</h4>
      <h4>* keypair: without keypair</h4>
      <h4>* Network settings ports has to be open: http,https,ssh,custom tcp:8000</h4>
      <hr>
      <h1>Packages has to be installed to deploy this project in local terminal</h1>
      <h4>* apt update -y (update the terminal)</h4>
      <h4>* apt install python3-pip (it will install both python and pip at a time)</h4>
      <h4>* pip install django (it will install the django)</h4>
      <h4>* apt install docker.io</h4>
      <h4>* systemctl start docker</h4>
      <hr>
      <h1>deploying the project</h1>
      <h4>* git clone (repository url)</h4>
      <h4>* cd hrms_marolix (it will go inside the directory)</h4>
      <h4>* after that write dockerfile</h4>
      <h4>* docker build -t hrms . (it will create a image)</h4>
      <h4>* pip install --upgrade pip(it will upgrade the pip package)</h4>
      <h4>* docker run -itd --name python -p 8000:8000 imagename (it will create a container and also assign a port)</h4>
      <h4>* final step is take the public ip and deploy it on chrome with the port 8000</h4>
    </body>
  </head>
</html>
