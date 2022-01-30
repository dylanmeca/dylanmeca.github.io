---
layout: post
description: labsecurity is a framework and its use is for ethical hacking and computer security
categories: [Documentacion, Ciberseguridad, Informatica, Linux]
lang: en
permalink: /labsecurity-documentation
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

<p>labsecurity is a tool that brings together python scripts made for ethical hacking, in a single tool, through a console interface.</p>

<h1 id="introduction">Introduction</h1>

<ul>
  <li><a href="#how-to-use-the-console">How to use the console</a>
    <ul>
      <li><a href="#how-the-set-command-works">How the set command works</a></li>
      <li><a href="#how-the-use-command-works">How the use command works</a></li>
      <li><a href="#how-to-run-the-program">How to run the program</a></li>
    </ul>
  </li>
</ul>

<p>Information about the installation and more details in: <a href="https://github.com/dylanmeca/labsecurity">https://github.com/dylanmeca/labsecurity</a></p>

<p>This page is the labsecurity project documentation</p>

<h1 id="how-to-use-the-console">How to use the console</h1>

<p>To use the console we can use the <code class="language-plaintext highlighter-rouge">help</code> command to obtain information about the main commands, although to obtain the information of all the commands you can use the <code class="language-plaintext highlighter-rouge">show options</code> command but we can also read this documentation to know more about those commands.</p>

<h2 id="how-the-set-command-works">How the set command works</h2>


The ```set``` command is a command that allows us to select something specific, but we must think that ```set``` means to select in order to have an idea of how that command would work.

For example, if we want to select a target we would have to use the ```set``` command and then place ```target```:

```shell
set target 127.0.0.1
```

In this way we will have selected the objective. The ip that has been selected is after the ```target```, when we use ```target``` in ```set``` we are indicating that what is going to be selected is a target such as an ip or a host.

And in the end the ip will have been stored in the ```target``` variable and we can check that by executing the same command since we will get a message and that indicates that the target was stored in the variable.

If we wanted to select a port we would have to use the command ```set``` and then ```port``` since we specify that we are going to select a port by putting ```set port``` and an example would be ```set port 80``` where we would be selecting port 80.

# Summary

<h2 id="how-the-set-command-works">How the set command works</h2>

<p>The <code class="language-plaintext highlighter-rouge">set</code> command allows you to select something, for example with <code class="language-plaintext highlighter-rouge">set target</code>, we select a target, but the complete command would be <code class="language-plaintext highlighter-rouge">set target 192.168.1.1</code>, with that we would be selecting the target’s ip.</p>

<p>But to select a port, <code class="language-plaintext highlighter-rouge">set port</code> is used, and an example would be <code class="language-plaintext highlighter-rouge">set port 80</code>, with which we would be selecting port 80.</p>

<div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>
set =&gt; select something for example a target
target or port =&gt; indicates the type of selection, if it is a target or a port, an example would be that the target is the ip.
example.com =&gt; here we would replace example.com with the target's ip or port

</code></pre></div></div>

<h2 id="how-the-use-command-works">How the use command works</h2>

<p>The <code class="language-plaintext highlighter-rouge">use</code> command allows us to use something for example if we use the <code class="language-plaintext highlighter-rouge">use scanweb</code> command, we are selecting the <code class="language-plaintext highlighter-rouge">scanweb</code> function to be used when running the program.</p>

<p>For example within the system when selecting <code class="language-plaintext highlighter-rouge">scanweb</code> with the <code class="language-plaintext highlighter-rouge">use</code> command we are selecting that function that will be used when we run the program and when that happens the function that we had selected to be used will have been executed and the objective will enter within that function and we will have the Outcome.</p>

<h2 id="how-to-run-the-program">How to run the program</h2>

<p>To run the program you must use and execute the command <code class="language-plaintext highlighter-rouge">run or exploit</code>.</p>
