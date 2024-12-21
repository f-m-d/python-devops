# python-devops
From Zero to DevOpsHero Python

![DEVOPS](https://github.com/f-m-d/python-devops/assets/30870154/13d6a73e-c73f-4b71-afe1-3a3c084dc9db)



## Create a project scaffold
Explain each component of the project are
* Create development environment that is cloud-based:
  * Colab Notebooks
  * Github Codespaces
  * AWS CloudShell
  * AWS Cloud9 

### Colab Notebook
* This is an example of how to use colab [colab](https://github.com/f-m-d/python-devops/blob/main/getting_started_python.ipynb)

### Github Codespaces

Here the following Python Scaffold: 

|Scaffold|What is done to archieve it|
| ----------- | ----------- |
| Create a Jupiter Notebook | ```touch getting_started_python.ipynb```|
| Create a Library Folder | ```mkdir devopslib; touch __ init.py __ ```|
| Create Makefile | ```touch Makefile``` |
| Creare requirements file for Python | ``` touch requirements.txt``` |
| Create virtualenv for Python| ```virtualenv ~/.venv``` , then add in the .bashrc file the following line: ``` source ~/.venv/bin/activate```, verify with ```which python``` if is is the Python present in **.venv/bin** folder
| Create test library | touch test_hello.py|


* Path where CLI and Containerized tool reference the same code: python_library
* A Dockerfile
* Command-Line Tool
* Microservice



#### Getting started on Github Codespaces
Essentialy is a space where you can edit and manage your repo online, it's like a dev box online

Steps:
* Go to your repo, "Code" --> "Codespaces" --> "Create a codespace" 
* If asked, on bottom right, install Python add-ons (Python and Pylance)


### AWS CloudShell

### AWS Cloud9

## Command-lines tools



## Microservices


## Containerzed Continuos Delivery


# Colab Notebook 
https://colab.research.google.com/

This is the colab link: [colab file](https://github.com/f-m-d/python-devops/blob/main/getting_started_python.ipynb)
* Create a new notebook (you can save a Copy on Github)
* You can change runtime (CPU,TPU TensorFlow Processing Units, GPU etc.)
* Use the Colab Notebooks in order to update and show the steps to be done
