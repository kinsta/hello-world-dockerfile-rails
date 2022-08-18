# Kinsta - Hello World - Dockerfile - Rails
An example of deploying a Ruby on Rails application using a Dockerfile on Kinsta App Hosting services.

> Kinsta’s Application Hosting is a service to run your web apps and any databases side by side in a hassle-free environment, tailored for developer needs and ease of use. App 
Hosting is currently in an invite-only beta phase, sign up for a test account at [kinsta.com/application-hosting](https://kinsta.com/application-hosting/).

## Deployment Lifecycle
When first creating the app Kinsta will create a process from the `ENTRYPOINT` instruction. 
```
ENTRYPOINT ["entrypoint.sh"]
```

Note that if you change this command in the repository the process will **not** be changed by default so you will need to edit it in MyKinsta, in the processes section for your 
application.

