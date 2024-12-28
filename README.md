# python-devops
From Zero to DevOpsHero Python

Youtube video link: https://www.youtube.com/watch?v=kwZNpieUreA

![DEVOPS](https://github.com/f-m-d/python-devops/assets/30870154/13d6a73e-c73f-4b71-afe1-3a3c084dc9db)



## Create a project scaffold
Explain each component of the project are
* Create development environment that is cloud-based:
  * Colab Notebooks
  * Github Codespaces and Python Scaffold
  * AWS CloudShell
  * AWS Cloud9 

### Colab Notebook 
https://colab.research.google.com/

This is the colab link: [colab file](https://github.com/f-m-d/python-devops/blob/main/getting_started_python.ipynb)
* Create a new notebook (you can save a Copy on Github)
* You can change runtime (CPU,TPU TensorFlow Processing Units, GPU etc.)
* Use the Colab Notebooks in order to update and show the steps to be done

### Github Codespaces and Python

#### Getting started on Github Codespaces
Essentialy is a space where you can edit and manage your repo online, it's like a dev box online

Steps:
* Go to your repo, **"Code" --> "Codespaces" --> "Create a codespace"**
* If asked, on bottom right, install Python add-ons (Python and Pylance)

#### Python Scaffold

|Scaffold|What is done to archieve it|
| ----------- | ----------- |
| **Create a Jupiter Notebook** | ```touch getting_started_python.ipynb```|
| **Create a Library Folder** | ```mkdir devopslib; touch __ init.py __ ```|
| **Create Makefile** | ```touch Makefile``` |
| **Creare requirements file for Python** | ``` touch requirements.txt``` |
| **Create virtualenv for Python** | ```virtualenv ~/.venv``` , then add in the .bashrc file the following line: ``` source ~/.venv/bin/activate```, verify with ```which python``` if is is the Python present in **.venv/bin** folder. You can always deactivate the virtual environment with ```deactivate``` command.
| **Create test library** | ```touch test_hello.py``` |


* Path where CLI and Containerized tool reference the same code: python_library
* A Dockerfile
* Command-Line Tool
* Microservice






### AWS CloudShell
* We can start with login in AWS Management Console
https://console.aws.amazon.com/

* Click on **"Sign in using root user email"** and sign in.

* Click on **"CloudShell"** service and create one
(It should be free to use at this time)

* Clone this repo: ```git clone https://github.com/f-m-d/python-devops.git```

* With ```"ipython"``` command, a Python shell can be used but the problem is: in other enviroments (Github Codespaces etc.) we don't know what kind of Python packages are installed in the environment.
To check which packages are installed, launch ```pip freeze | less```

* To avoid to obtain this "inherited" pacakges and to avoid packages conflict, we can create in the codespace/shell/ide cloud a virtual enviroment: ```python3 -m venv ~/.venv```, edit the .bashrc file and add ```source ~/.venv/bin/activate```

* We can specify in the *requirements.txt* file the packages we need:
  * pylint, to lint Python code
  * pytest, to test Python code
  * black, to format Python code

* To install the required files, a ***Makefile*** is compiled accordingly.
NB: remember to use tabs for space!
Example Makefile can be found at this repo:
https://github.com/noahgift/pytest-tips-tricks

* Once the Makefile is compiled ("install:" part), go into working directory where Makefile is and run: ```make install```

### AWS Cloud9
Go back to AWS home and click on **"AWS Cloud9"**: it is a development environment.
  * (Spoiler: it seems that AWS Cloud9 is deprecated for new users since 25th June 2024!)

The steps done are:
  * SSH git clone: ```git@github.com:f-m-d/python-devops.git```

  If it prompts an error about: *"Permission denied (public key). fatal: Could not read from remote repository."* A new key has to be generated on the developer enviroment and put the public key in Github repository.
  * ```ssh-keygen -t rsa``` will tell where the public key (usually named "id_rsa.pub")
  * Go to Github Account, click on your profile icon and go to: ***Settings -> SSH and GPG Keys -> New SSH Key (here add a Title name and the Key value in the "Key" box)*** 
  * Try again  with SSH git clone: ```git@github.com:f-m-d/python-devops.git```



## Github Actions
Github allow to start operations with common Github operations as commit, push etc.
Those action are called *"Actions"*: those are commonly used to build, test or deploy.

Go to your Github repo -> "Actions":
here suggested workflows appear.

Click on **"Skip this and set up a workflow yourself"**.
This will prompt to create a file inside the repository at: *.github/workflows/main.yml*


### LINT (pylit)
At the actual state, it will fail (lint tasks in Makefile are not implemented for now)

If you go on the **Workflow execution -> click on the 3 dots on top right -> "Create status badge"** , it will give you a link where it shows people how the status of the CI-CD it is (put it in the README.md, under the title commonly)

Example:

[![Test Multiple Python Versions](https://github.com/f-m-d/python-devops/actions/workflows/main.yml/badge.svg)](https://github.com/f-m-d/python-devops/actions/workflows/main.yml)

It is better to add some library to test: we create **devopslib/randomfruit.py** with a function to choose random fruit

Then we import that function in **hello.py** and print it.
(We can run the hello.py file with: ```python hello.py```)

Add a "lint" process in the Makefile (look the example in the "example_makefile" folder)

Then, test with ```"make lint"```.

Add the "devopslib" folder to the linting command (it will test it too)


### TEST (pytest)

Now we add the "test:" in the Makefile
The problem is: we need to add a "coverage library" (for the --cov option) for devopslib folder.

To do that, add "pytest-cov" to the requirements and run ```make install```

Now, we rename the test file to "test_devopslib.py" and here we will use the asserts to test the functions.

NWe can add the "test:" part in the Makefile.
Example: ```python -m pytest -vvv --cov=devopslib test_*.py```

### blacl

Now add the "format:" in Makefile (for using black)
## Command-lines tools



## Microservices


## Containerized Continuos Delivery
