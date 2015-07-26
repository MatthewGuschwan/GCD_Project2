---
title: "CodeBook.md"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.



Getting and Cleaning Data Project 2
This document explains the code used to create the tidy dataset produced.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

From the Train and Test folders, the code reads the subject, x and y data.

Train and Test data were combined.

To determine which columns of data to include, I sorted by the terms 'std' (for standard deviation) and 'mean' from 'features.txt'.

The 'Activity' column was assigned names in place of integers 1-6, and the variable names were derived from 'features.txt'.

Variables are described in more depth