# Authelia CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/authelia"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Authelia server with CI/CD on Elestio

<img src="authelia.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can can open Authelia UI here:

    URL: https://[CI_CD_DOMAIN]
    login: root
    password: [ADMIN_PASSWORD]

# Adding new address

To add a new address, go to the Tools tab, and choose VS Code

Then go the the configuration.yml in config folder.
after line 52, type your domain and your policy.

In the burger icon on the top-left, click on it, then Terminal > New Terminal and type:

    docker-compose down;
    docker-compose up -d;
