# Authelia CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/authelia"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Authelia server with CI/CD on Elestio

<img src="authelia.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open Authelia UI here:

    URL: https://[CI_CD_DOMAIN]
    login: root
    password: [ADMIN_PASSWORD]

# Configuration

Authelia does not have a WEB UI to change the configuration, to do that you will need to edit the configuration file located in:
    
    ./config/configuration.yml
   
You can edit this file over SSH or VS Code (Elestio dashboard > Tools tab > VS Code)

After editing your configuration file, you must restart the stack, you can do that from Elestio dashboard or directly in the terminal with those commands:

    docker-compose down;
    docker-compose up -d;
