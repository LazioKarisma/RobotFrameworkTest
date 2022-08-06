*** Keywords ***
open the application

    [Arguments]   ${url}
    Open Browser  url=${url}  browser=chrome

close the application
  Close Browser

insert into search input
  [Arguments]  ${text}
  Click Element		locator=quick-search-query
  Wait Until Element Is Visible		locator=search-filter-input		timeout=10
  Input Text  locator=search-filter-input		text=${text}