*** Settings ***
Documentation    Orquestrador de Pages
Library          SeleniumLibrary
Resource        ../Resources/variables.robot
Resource        ../Resources/Locators.robot
Library         ../TestSuite/Data/Data.py
Resource        ../PageObjects/LoginPage.robot
Resource        ../PageObjects/LoginUser.robot
Resource        ../Resources/Comum.robot
Resource        ../Resources/BDDpt-BR.robot
Resource        ../PageObjects/Clean.robot