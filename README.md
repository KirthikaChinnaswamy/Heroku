# Heroku API Automation

Heroku API is automated using Karate Framework. Karate is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. The BDD syntax popularised by Cucumber is language-neutral, and easy for even non-programmers. Assertions and HTML reports are built-in, and you can run tests in parallel for speed.

**Building and Running**

To setup API, follow the steps here -> https://restful-booker.herokuapp.com/apidoc/index.html

To setup the Automation framework, install below items -
 - Eclipse
- Testng & Maven plugin in Eclipse
- Create tests in feature files with tags declared
- Set the feature file name and the tag to execute in TestRunner.java and run it as TestNG Test

****

**Framework Structure**

 src/test/java/TestRunner - 
 Execution starts from Test Runner file where the user need to specify the feature file and the tags to be executed. 
 
 com.heroku.featues
 This folder contains the feature files for all modules.
 
 src/test/resources/TestData
 This folder contains the test data in json format

****
 
**Video Recording**

Available in the following path -> https://github.com/KirthikaChinnaswamy/Heroku/blob/main/VideoRecording_APIAutomation.mov.zip

****

**Scenarios Automated**

Automated Services API from Best Buy covering below scenarios - 
- Hit url and verify response
- Pass ID and verify name in response and vice versa
- Verified Get, Put, Patch, Post and Delete api's
