[![Build Status](https://dev.azure.com/odluser238723/HoangCV1-DevOps/_apis/build/status%2Fhoangsc.UdacityDevOps?branchName=main)](https://dev.azure.com/odluser238723/HoangCV1-DevOps/_build/latest?definitionId=2&branchName=main)
# Overview

In this project, we are going with:
1. Create GitHub repository and clone it to Azure Cloud Shell with SSH Key
2. Coding, config Python virtual environment, script, test file to run in Github Action
3. Deploy code to Azure Webapp
4. Build CI/CD pipeline in Azure DevOps

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
* A link to a spreadsheet that includes the original and final project plan>

## Instructions
Main flow in this project
![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/54f70119-08ad-45bc-991a-cd5a7018093d)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

**1. Create GitHub repository and clone it to Azure Cloud Shell with SSH Key**
   1.1. Open cloud shell and run command: 'ssh-keygen -t rsa'
   ![01_generate_ssh_key](https://github.com/hoangsc/UdacityDevOps/assets/72764803/0e891b91-eba1-40bc-8fc5-f49cb79be8bf)
   1.2. Get generated SSH key: 'cat /home/odl_user/.ssh/id_rsa.pub'
   1.3. Add SSH key into Github
      ![02_add_ssh_key](https://github.com/hoangsc/UdacityDevOps/assets/72764803/b2f45459-e135-4fea-9732-fa939d7fc6ef)
   1.4. Clone GitHub project: git clone <linkofYourRepository>
      ![03_clone_repo](https://github.com/hoangsc/UdacityDevOps/assets/72764803/858f5d7c-ba17-4a23-b12e-ff329b8bf3c5)
**2. Coding, config Python virtual environment, script, test file to run in Github Action**
   2.1. Create Project Scaffolding:
   - Makefile
   - requirement.txt
   - Create Python Virtual Environment with 2 command below:
        'python3 -m venv ~/.myrepo'
        'source ~/.myrepo/bin/activate'
      ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/e54dc834-86eb-43e9-b97c-b42a206bde02)
   
   2.2. Local test, run: 'make all', refer to result below:
     ![04_make_all_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/ae226f06-d872-4f13-9b1a-cf5b86334486)

   2.3. Enable GitHub action and replace YML code 
   ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/90d11888-93bc-4945-aa70-70f73096800d)

   2.4. Making predictions
   2.4.1. You have to open a separate tab or terminal window and call: ./make_prediction.sh 
   ![06_make_prediction_command_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/4c236842-7ea2-4814-b6d9-435469d3a46e)

   2.5. Open logfile in https://<app-name>.scm.azurewebsites.net/api/logs/docker or stream them: 'az webapp log tail'
   ![07_get_lock_scm](https://github.com/hoangsc/UdacityDevOps/assets/72764803/0af83c11-9125-4b5c-b454-853b92dc3edd)
   ![08_az_webapp_log_tail](https://github.com/hoangsc/UdacityDevOps/assets/72764803/3808c59b-8898-4822-b646-f9446d246bd5)
   2.6. Load test an application using Locust
   ![09_locust_report](https://github.com/hoangsc/UdacityDevOps/assets/72764803/bbc7b8fc-225d-4c50-bf13-4a42c1f5d315)
**3. Deploy code to Azure Webapp**
   3.1. Test your local before deploy: 'make all'
        ![05_make_all_result_updated_flask_starter_code](https://github.com/hoangsc/UdacityDevOps/assets/72764803/94ed7a36-f85c-46ea-a88d-82fc9f9b81f8)
   3.1. Create and deploy code to Azure webapp: 'az webapp up -n <your-webapp> --resource-group <your-resource-group>--sku FREE'
   3.2. Test deployed app, update your webapp url in make_predict_azure_app.sh and run
   ![06_make_prediction_azure_command_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/9b27707c-88fc-426d-a6b7-fdde5adec3ce)

**4. Build CI/CD pipeline in Azure DevOps**
   4.1 Create public Azure DevOps project
   ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/05f78718-f0c4-4f1c-9b9b-c3eda78334d4)

   
   
     
   


* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


