*** Settings ***
Library   SeleniumLibrary
Resource  ../step_definition/search-keywords-steps.robot

*** Test Cases ***
Successful search on confluence
  Given user open the confluence
  When user search for  query=QE Automation Agenda
  Then user should find the page  title=ID QE Automation Agenda

Unsuccessful search on confluence
  Given user open the confluence
  When user search for  query=jasndlajwdoasbdoasjdbasdljb
  Then user should get no result notification

