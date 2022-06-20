# Carsome-Test
Test Automation Script for Carsome Home Interview Test

# Installations and Configurations For RobotFramework (MacOS)

1. Install latest Google Chrome browser for MacOS [here](https://www.google.com/chrome/)
2. Install Homebrew:
   ```bash
    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```
   or update Homebrew if you already have it installed:
   ```bash
    $ brew update
   ```
3. Install Python 3:
   ```bash
   $ brew install python3
   ```
4. Update `~/.bash_profile`. Add the following line to the bottom of the file and save it:
   ```bash
   export PATH="/usr/local/opt/python/libexec/bin:$PATH"
   ```
   Then:
   ```bash
   $ source ~/.bash_profile
   ```
   Then check if the default is Python 3 (*Should return Python 3.x.x*):
   ```bash
   $ python --version
   ```
5. Clone the `Carsome-Test` repo into your local directory
6. After cloning the repo, navigate to cloned directory and do these steps:
   - Install chromedriver:
     ```bash
     $ brew tap homebrew/cask
     $ brew install chromedriver
     $ brew tap homebrew/core
     ```
     Ensure that the machine's Google Chrome browser is at the same version as the chromedriver. To check the chromedriver's version:
     ```bash
     $ chromedriver --version
     ```
   - Install virtualenv:
     ```bash
     $ sudo pip install virtualenv
     ```
   - Create a virtual environment named `venv`:
     ```bash
     $ virtualenv venv -p python
     ```
   - Then, activate it. Note that in order to activate the virtual environment, user have to be inside the directory where the `venv` folder is located 
     (run `$ deactivate` anytime and anywhere to exit the virtual environment):
     ```bash
     $ source venv/bin/activate
     ```
   - Once activated, notice the `(venv)` before the machine's user name in Terminal. Then install the following:
     - Robot Framework
       ```bash
       $ pip install -U robotframework
       ```
     - Selenium Library
       ```bash
       $ pip install robotframework-seleniumlibrary
       ```
# Execute the test automation script
1. The execution will be done via Terminal
2. Ensure that the virtual environment is activated (as step 6 above)
3. Navigate into the local `Carsome-Test` repo directory
4. Run the test:
   ```bash
   $ robot TC1001_Search_Perodua.robot
   ```
5. To view the HTML test report:
   ```bash
   $ open log.html
   or
   $ open report.html
   ```
