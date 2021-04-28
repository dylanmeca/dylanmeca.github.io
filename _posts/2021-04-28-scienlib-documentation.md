---
layout: post1
---

<meta name="keywords" content="scienlib, scienlib documentation, scien, lib, documentation">

[![Build Status](https://img.shields.io/github/stars/dylan14567/scienlib.svg)](https://github.com/dylan14567/scienlib)
[![License](https://img.shields.io/github/license/dylan14567/scienlib.svg)](https://github.com/dylan14567/scienlib/blob/main/.github/LICENSE)
[![dylan14567](https://img.shields.io/badge/author-dylan14567-green.svg)](https://github.com/dylan14567)
[![bug_report](https://img.shields.io/badge/bug-report-red.svg)](https://github.com/dylan14567/scienlib/blob/main/.github/ISSUE_TEMPLATE/bug_report.md)
[![security_policy](https://img.shields.io/badge/security-policy-cyan.svg)](https://github.com/dylan14567/scienlib/blob/main/.github/SECURITY.md)
[![Python](https://img.shields.io/badge/language-Python%20-yellow.svg)](https://www.python.org)

Scienlib is a scientific Python library that adds mathematical functions and adds other functions like physics, but also has cybersecurity and other functions.

More information about the project at: [https://github.com/dylan14567/scienlib](https://github.com/dylan14567/scienlib)

# Introduction

- [How to use the library](#how-to-use-the-library)
- [Basic math](#basic-math)
  - [speed calculation](#speed-calculation)
  - [Get the divider of a number](#get-the-divider-of-a-number)
  - [How to find the average](#how-to-find-the-average)
- [cybersecurity](#cybersecurity)
  
Information about the installation and more details in: [https://github.com/dylan14567/scienlib](https://github.com/dylan14567/scienlib)

This page is the scienlib project documentation.

## How to use the library

To use the library you must write the following code:

```python

import scienlib

```

## Basic math

Within the library we have basic mathematical functions.

#### speed calculation

The first basic mathematics is speed, in real life the formula of the speed is ``` v = d ÷ t ```, to use this mathematical formula you have to write the following code:

```python

scienlib.velocity (d,t)

```

where it says d replace it with the distance and where it says t replace it with the time for example:

```python

r = scienlib.velocity (20,8)
print (r)

```

and the result would be: ``` 2.5 ```

What happened here is that the distance was divided by time, what I would be doing is recreating the formula of speed equals distance over time.

#### Get the divider of a number

There is a mathematical function inside the library that helps you to obtain the devider of a number.

to use this mathematical function you must put the following code:

```python

scienlib.divider (n,c)

```

where it says n must be replaced by the number that we will use to determine what number will be the devider at that time, where c is the candidate that we will use to know the devider of the number, example:

```python

r = scienlib.divider (14,7)
print (r)

```

What happened here is that the result was obtained if 14 is a devider of 7 and the result is True, by default in the code it will be True if it is true and False if it is false.

#### How to find the average

To find the average you must put the following code:

```python

list = [17,15,14,10]
r = scienlib.average (list)
print (r)

```

what this does is find the average of the numbers in a list the operation it does is add everything and divide it by the amount of data there is.

the result of this example is 14.0 and what the code did was add everything and divide it by the amount of data.

## cybersecurity

the bookstore also have cybersecurity functions.
