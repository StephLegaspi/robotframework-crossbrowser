*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}                                https://demo.nopcommerce.com/
${browser}                            chrome
${searchBoxLocator}                   id=small-searchterms
${searchButtonLocator}                xpath=//button[@class='button-1 search-box-button']


*** Test Cases ***
Search an item
    open browser    ${URL}      ${browser}
    wait until element is visible       ${searchBoxLocator}
    input text      ${searchBoxLocator}     Desktop
    click button    ${searchButtonLocator}
    sleep   5
    close browser
