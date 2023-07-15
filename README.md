[![Python application test with Github Actions](https://github.com/hoangsc/UdacityDevOps/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/hoangsc/UdacityDevOps/actions/workflows/pythonapp.yml)
# Overview

In this project, we are going with:
1. Create a GitHub repository and clone it to Azure Cloud Shell with SSH Key
2. Coding, config Python virtual environment, script, test file local
3. Deploy code to Azure Webapp
4. Build CI/CD pipeline in Azure DevOps

## Project Plan
<TODO: Project Plan

* [A link to a Trello board for the project](https://trello.com/invite/b/3ILyADWF/ATTIfcab70aa9141abf83916589454df9eb5F9C3F116/trello-agile-sprint-hoangcv1)
* A link to a spreadsheet that includes the original and final project plan>
* Please check the project-management-template_HoangCV1.xlsx file attached

## Instructions
Main flow in this project
![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/54f70119-08ad-45bc-991a-cd5a7018093d)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

**1. Create a GitHub repository and clone it to Azure Cloud Shell with SSH Key**
   1.1. Openthe  cloud shell and runthe  command: 'ssh-keygen -t rsa'
   ![01_generate_ssh_key](https://github.com/hoangsc/UdacityDevOps/assets/72764803/0e891b91-eba1-40bc-8fc5-f49cb79be8bf)
   1.2. Get generated SSH key: 'cat /home/odl_user/.ssh/id_rsa.pub'
   1.3. Add SSH key to Github
      ![02_add_ssh_key](https://github.com/hoangsc/UdacityDevOps/assets/72764803/b2f45459-e135-4fea-9732-fa939d7fc6ef)
   1.4. Clone GitHub project: git clone <linkofYourRepository>
      ![03_clone_repo](https://github.com/hoangsc/UdacityDevOps/assets/72764803/858f5d7c-ba17-4a23-b12e-ff329b8bf3c5)
**2. Coding, config Python virtual environment, script, test file to run in Github Action**
   2.1. Create Project Scaffolding:
   - Makefile
   - requirement.txt
   - Create Python Virtual Environment with 2 commands below:
        'python3 -m venv ~/.myrepo'
        'source ~/.myrepo/bin/activate'
      ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/e54dc834-86eb-43e9-b97c-b42a206bde02)
   
   2.2. Local test, run: 'make all', refer tothe  result below:
     ![04_make_all_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/ae226f06-d872-4f13-9b1a-cf5b86334486)

   2.3. Enable GitHub action and replace YML code 
   ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/90d11888-93bc-4945-aa70-70f73096800d)

   2.4. Making Predictions
   2.4.1. You have to open a separate tab or terminal window and call: ./make_prediction.sh 
   ![06_make_prediction_command_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/4c236842-7ea2-4814-b6d9-435469d3a46e)

   2.5. Open logfile in https://<app-name>.scm.azurewebsites.net/api/logs/docker or stream them: 'az webapp log tail'
   ![07_get_lock_scm](https://github.com/hoangsc/UdacityDevOps/assets/72764803/0af83c11-9125-4b5c-b454-853b92dc3edd)
   ![08_az_webapp_log_tail](https://github.com/hoangsc/UdacityDevOps/assets/72764803/3808c59b-8898-4822-b646-f9446d246bd5)
   2.6. Load test an application using Locust
   ![09_locust_report](https://github.com/hoangsc/UdacityDevOps/assets/72764803/bbc7b8fc-225d-4c50-bf13-4a42c1f5d315)
**3. Deploy code to Azure Webapp**
   3.1. Test your local before deploying: 'make all'
        ![05_make_all_result_updated_flask_starter_code](https://github.com/hoangsc/UdacityDevOps/assets/72764803/94ed7a36-f85c-46ea-a88d-82fc9f9b81f8)
   3.2. Run commands.sh to create and deploy code to Azure webapp: 
   ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/2fc4280c-05e1-4be9-a6ab-62b8ba20a96d)

   3.3. Test deployed app, update your webapp url in make_predict_azure_app.sh and run
   ![06_make_prediction_azure_command_result](https://github.com/hoangsc/UdacityDevOps/assets/72764803/9b27707c-88fc-426d-a6b7-fdde5adec3ce)

**4. Build CI/CD pipeline in Azure DevOps**
   4.1. Setup CI in GitHub with Azure Action
   4.1.1. Create new Workflow
   4.1.2. Replace YML file
   4.1.3. When code change, GitHub Action will be trigged
![05_make_all_result_updated_flask_starter_code](https://github.com/hoangsc/UdacityDevOps/assets/72764803/94ed7a36-f85c-46ea-a88d-82fc9f9b81f8)
   4.2 Create a public Azure DevOps project at: https://dev.azure.com
   ![image](https://github.com/hoangsc/UdacityDevOps/assets/72764803/05f78718-f0c4-4f1c-9b9b-c3eda78334d4)

   4.3. Create new Service connection:
   ![11_create_service_connection](https://github.com/hoangsc/UdacityDevOps/assets/72764803/88fea157-c02c-4821-8dca-e4f02ea1d757)
   4.4. Create new Agent Pool
   ![14_create_agent_pool](https://github.com/hoangsc/UdacityDevOps/assets/72764803/a0e156f4-beb3-46cc-8fd6-2540edcac623)
   4.5. Create an Agent (VM)
   ![15_create_and_connect_to_vm](https://github.com/hoangsc/UdacityDevOps/assets/72764803/9cd0a231-5017-433d-8bea-bd4f8dcc203d)
   4.6. Config VM to Azure Agent pool
   ![16_config_vm_to_agent_pool](https://github.com/hoangsc/UdacityDevOps/assets/72764803/a5389a1e-a4db-4ac5-bd9d-5fc4c18a056d)
   4.6. Create new Azure pipeline: 
   ![12_create_pipeline](https://github.com/hoangsc/UdacityDevOps/assets/72764803/199f884f-58bc-46a1-abcb-cdbe67521096)
   4.7. Select exsiting YML file.
   ![13_select_existing_YAML_file](https://github.com/hoangsc/UdacityDevOps/assets/72764803/97e94114-9497-43ae-b313-4a03736d5993)
   4.8. Running Azure App Service from Azure Pipelines automatic deployment
   ![18_job_run_success](https://github.com/hoangsc/UdacityDevOps/assets/72764803/d530b3c1-5f41-494a-8073-5e21b569caf8)

   ![19_job_run_success_and_deployed](https://github.com/hoangsc/UdacityDevOps/assets/72764803/987fba84-6fe1-427b-84d9-16e63cd695e9)


## Enhancements

- Need to create an alert in future
- Create features, and need PR to merge code into master branch 
## Demo 
https://youtu.be/PDmxqNlPGIw)https://youtu.be/PDmxqNlPGIw


