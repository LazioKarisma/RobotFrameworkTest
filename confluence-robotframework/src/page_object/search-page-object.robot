*** Keywords ***
element should be found
  [Arguments]  ${title}
  Sleep  5
  Element Should Be Visible  locator=//*[@title='${title}']
  Capture Page Screenshot


should display no result
  Wait Until Element Is Visible  locator=//p[contains(text(),"We couldn't find anything matching")]  timeout=10
  Capture Page Screenshot