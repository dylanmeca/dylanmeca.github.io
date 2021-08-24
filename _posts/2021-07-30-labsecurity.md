---
layout: post
description: labsecurity is a framework and its use is for ethical hacking and computer security, This documentation describes how to use the labsecurity commands
permalink: /labsecurity
img: https://raw.githubusercontent.com/dylanmeca/labsecurity/main/.github/icon.jpg
keywords:
  - labsecurity
  - security
  - lab
  - documentation
  - framework
  - bookshop
  - console
  - program
  - software
  - python
  - security
  - security audit
  - exploit
  - scanner
  - hacking
  - pentesting
  - vulnerability detection
  - vulnerability
  - hacking
  - hacking tool
  - vulnerability scanners
  - security scanner
  - linux tools
  - information gathering
  - security tools
  - hacking tools
  - security tool
  - linux tool
  - security scanners
---

[![Build Status](https://img.shields.io/github/stars/dylanmeca/labsecurity.svg)](https://github.com/dylanmeca/labsecurity)
[![License](https://img.shields.io/github/license/dylanmeca/labsecurity.svg)](https://github.com/dylanmeca/labsecurity/blob/main/LICENSE)
[![dylanmeca](https://img.shields.io/badge/author-dylanmeca-green.svg)](https://github.com/dylanmeca)
[![bug_report](https://img.shields.io/badge/bug-report-red.svg)](https://github.com/dylanmeca/labsecurity/blob/main/.github/ISSUE_TEMPLATE/bug_report.md)
[![security_policy](https://img.shields.io/badge/security-policy-cyan.svg)](https://github.com/meca/labsecurity/blob/main/.github/SECURITY.md)
[![Python](https://img.shields.io/badge/language-Python%20-yellow.svg)](https://www.python.org)
![logo](https://raw.githubusercontent.com/dylanmeca/labsecurity/main/.github/icon.jpg)

labsecurity is a framework and its use is for ethical hacking and computer security.

# Introduction

- [How to use the console](#how-to-use-the-console)
  - [How the set command works](#how-the-set-command-works)
  - [How the use command works](#how-the-use-command-works)
  - [How to run the program](#how-to-run-the-program)

Information about the installation and more details in: [https://github.com/dylanmeca/labsecurity](https://github.com/dylanmeca/labsecurity)

This page is the labsecurity project documentation

# How to use the console 

To use the console we can use the ``` help ``` command to obtain information also on the available commands, but we can read this documentation to know more about those commands.

## How the set command works

The ``` set ``` command allows you to select something, for example with ``` set target ```, we select a target, but the complete command would be ``` set target 192.168.1.1 ```, with that we would be selecting the target's ip.

But to select a port, ``` set port ``` is used, and an example would be ``` set port 80 ```, with which we would be selecting port 80.

```

set => select something for example a target
target or port => indicates the type of selection, if it is a target or a port, an example would be that the target is the ip.
example.com => here we would replace example.com with the target's ip or port

```

## How the use command works

The ``` use ``` command allows us to use something for example if we use the ``` use scanweb ``` command, we are selecting the ``` scanweb ``` function to be used when running the program.

For example within the system when selecting ``` scanweb ``` with the ``` use ``` command we are selecting that function that will be used when we run the program and when that happens the function that we had selected to be used will have been executed and the objective will enter within that function and we will have the Outcome.


## How to run the program

To run the program you must use and execute the command ``` run or exploit ```.
