from selenium import webdriver

driver = webdriver.Chrome('C:/Users/Mubarak/PycharmProjects/automation/library/chromedriver.exe')
dueDateInputField = "//span [@class='gtdpicon icon-gtdpcalendar']"
monthLabel = "//button [@class='headerlabelbtn monthlabel']"
todayLabel = "//button[@class='headertodaybtn headertodaybtnenabled']"
yearLabel = "//button [@class='headerlabelbtn yearlabel']"
dateLabel = "//td/div [@class='currmonth' or @class='currmonth sunday']"
nextMonthButton = "//button[@aria-label='Next Month']"
previousMonthButton = "//button[@aria-label='Previous Month']"
nextYearButton = "//button[@aria-label='Next Year']"
previousYearButton = "//button[@aria-label='Previous Year']"


def dueDate(date, month, yesr):
    actual_month = driver.find_element_by_xpath(monthLabel).text
    actual_year = driver.find_element_by_xpath(yearLabel).text
    driver.find_element_by_xpath(dueDateInputField).click()
    while actual_month != month:
        driver.find_element_by_xpath(nextMonthButton).click()
        actual_month = driver.find_element_by_xpath(monthLabel).text
    diff = actual_year - yesr
    if diff > 0:
        for i in range(0, diff):
            driver.find_element_by_xpath(previousYearButton).click()
        driver.find_element_by_xpath()
    elif diff <= 0:
        for i in range(diff, 0):
            driver.find_element_by_xpath(nextMonthButton).click()
        driver.find_element_by_xpath()


