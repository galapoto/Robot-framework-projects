<<<<<<< HEAD
# Robot-framework-projects

## Project Screenshot

![Test Results Screenshot](path/to/your/screenshot.png)
=======
# Form Validation Project

This Robot Framework project automates the validation of web form inputs using SeleniumLibrary. It tests common front-end validations such as required fields, invalid data formats, and successful form submission.

## ✅ Test Site Used

**URL**: [https://practice.expandtesting.com/form-validation](https://practice.expandtesting.com/form-validation)

## 📂 Folder Structure

form-validation-project/
├── resources/
│ └── expanded/
│ ├── keywords.robot
│ └── variables.robot
├── tests/
│ └── test_expanded_validation.robot
├── output.xml
├── report.html
├── log.html
└── README.md


## 🧪 Test Suite: `test_expanded_validation.robot`

This suite includes 3 test cases:

1. **Submit Empty Form Should Trigger Validation**  
   Asserts that submitting an empty form triggers validation messages.

2. **Submit Form With Invalid Contact Number Should Fail**  
   Asserts that entering an invalid phone number shows appropriate errors.

3. **Submit Form With Valid Data Should Succeed**  
   Fills out all required fields correctly and asserts successful submission.

## 🔧 Dependencies

Make sure you have these installed inside your virtual environment:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary

You must also have ChromeDriver installed and available in your PATH.

🚀 Run the Tests

robot tests/test_expanded_validation.robot

📸 Screenshot on Failure (Optional)
You can enable screenshot capture by adding this to the test suite:

Suite Teardown    Run Keyword If Test Failed    Capture Page Screenshot

📌 Author
Created by Vitus Idi as part of a QA Automation Portfolio.
>>>>>>> 97a0b04 (Add form validation project with expanded validation tests)
