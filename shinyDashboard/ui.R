#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
    
    dashboardPage(
        dashboardHeader(title = "Shiny App Header",
                        dropdownMenu(type = "message",
                                     messageItem(from = "Finance Update", message = "We are on threshold"))),
        dashboardSidebar(
            sliderInput("bins", "Number of Breaks",1,100,50),
            sidebarMenu(
                menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
                menuSubItem("Finance", tabName = "finance"),
                menuSubItem("Sales", tabName = "sales"),
                menuItem("Detailed Analysis"),
                menuItem("Raw Data")
            )
        ),
        dashboardBody(
            tabItems(
                tabItem(tabName = "dashboard",
                        fluidRow(
                            box(plotOutput("histogram"))
                        )),
                tabItem(tabName = "finance",
                        h1("Finance Dashboard")),
                tabItem(tabName = "sales",
                        h1("Sales Dashboard"))
            )
        )
    )
)
