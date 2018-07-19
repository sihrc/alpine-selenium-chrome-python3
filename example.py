# coding:utf-8
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

def main():
    options = Options()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-gpu")
    options.add_argument("--headless")

    driver = webdriver.Chrome(chrome_options=options)
    driver.get('http://www.cnblogs.com/')
    time.sleep(5)

    title = driver.title
    print(title)

    driver.close()
    driver.quit()

if __name__ == "__main__":
    main()
