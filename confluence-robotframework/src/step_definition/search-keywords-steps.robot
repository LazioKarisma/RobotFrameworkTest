*** Settings ***
Resource  ../page_object/home-page-object.robot
Resource  ../page_object/search-page-object.robot

*** Keywords ***
user open the confluence
  open the application  url=https://confluence.ap.manulife.com/

user search for
  [Arguments]  ${query}
  Insert Into Search Input  text=${query}

user should find the Page
  [Arguments]  ${title}
  Element Should Be Found  title=${title}
  close the application

user should get no result notification
  Should Display No Result
  close the application