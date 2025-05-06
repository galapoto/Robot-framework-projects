# 🧪 Robot Framework E-commerce UI Test Automation

This project is a complete **end-to-end UI test automation suite** for the [OpenCart Demo Store](https://demo.opencart.com), built with **Robot Framework** and **SeleniumLibrary**.

It is designed to showcase real-world skills in browser automation, page interaction, and test organization — ideal for demonstrating automation skills to employers.

---

## 📌 Project Structure

ecommerce-testing/
│
├── tests/ # Test cases organized by feature
│ ├── test_open_website.robot
│ ├── test_search_functionality.robot
│
├── resources/ # Shared keywords (optional)
├── variables/ # Shared variables (optional)
├── output/ # Auto-generated logs and reports (ignored by Git)
│
├── .gitignore
├── README.md


---

## 🚀 Features Automated

✅ Open home page  
✅ Search for products  
✅ Click search button  
✅ Wait for results  
✅ (Coming soon) Add item to cart  
✅ (Coming soon) Validate checkout process

---

## 🛠️ Technologies Used

| Tool              | Purpose                         |
|------------------|----------------------------------|
| Robot Framework  | Test automation framework        |
| SeleniumLibrary  | Browser control and interactions |
| ChromeDriver     | Control Chrome browser           |
| VS Code          | Test development environment     |

---

## ⚙️ Setup Instructions

1. **Install Python**  
   [https://www.python.org/downloads/](https://www.python.org/downloads/)

2. **Install Robot Framework and SeleniumLibrary**
   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary

3. Install ChromeDriver

Download from https://chromedriver.chromium.org/downloads

Save the path to chromedriver.exe

4. Run tests
Navigate to the test folder and run:

robot test_search_functionality.robot

5. View reports
   After a run, open:
        log.html – full execution logs
        report.html – test summary report

🧼 .gitignore Included
The following files/folders are ignored:
    output/
    __pycache__/
    *.pyc
    .DS_Store
    .env


💼 Use Case
    This project can be used to:
        Show your testing skills to potential employers
        Demonstrate Robot Framework UI automation
        Serve as a base for larger automation suites

📸 Screenshots on Failure (Coming Soon!)
This project will soon include automatic screenshots for failed tests.

⭐ Star this repo if you find it helpful!