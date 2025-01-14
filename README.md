<div align="center">  
  <h1>Allowlist</hi>
</div>

<br />


<div align="center">
   <a href="#" > 
    <img src="https://img.shields.io/badge/Python-v3-9cf" alt="repo size" >
  <a/>
  <a href="#" > 
    <img src="https://img.shields.io/github/repo-size/ijhuang/allowlist?label=Repo%20Size&color=orange" alt="repo size" >
  <a/>
   <a href="#" > 
    <img src="https://img.shields.io/github/stars/ijhuang/allowlist?label=Stars" alt="stars" >
  <a/>   
  <a href="#" > 
    <img src="https://img.shields.io/github/last-commit/ijhuang/allowlist?label=Last%20Updated" alt="last updated" >
  <a/>
   <a href="https://github.com/ijhuang/allowlist/commits/master" > 
    <img src="https://img.shields.io/github/commit-activity/y/ijhuang/allowlist?label=Commit%20Activity" alt="commit activity" >
  <a/>
  <a href="https://github.com/ijhuang/allowlist/issues" > 
    <img src="https://img.shields.io/github/issues-raw/ijhuang/allowlist?label=Open%20Issues&color=critical" alt="open issues" >
  <a/>
  <a href="https://github.com/ijhuang/allowlist/issues?q=is%3Aissue+is%3Aclosed" > 
    <img src="https://img.shields.io/github/issues-closed-raw/ijhuang/allowlist?label=Closed%20Issues&color=inactive" alt="closed issues" >
  <a/>
  <a href="https://github.com/ijhuang/allowlist/graphs/contributors" > 
    <img src="https://img.shields.io/github/contributors/ijhuang/allowlist?label=Contributors&color=yellow" alt="contributors" >
  <a/>
  <a href="https://github.com/ijhuang/allowlist/blob/master/LICENSE" > 
    <img src="https://img.shields.io/github/license/ijhuang/allowlist?label=License&color=blueviolet" alt="license" >
  <a/>
</div>
    
<div align="center">
  <h1>Collection of commonly allow-listed domains for <br> Pi-Hole®</h1> 
</div>

</div>
<div align="center">
  
A robust collection of commonly allow-listed websites borrowed from various sources including Pi-Hole subreddit, Pi-Hole forum, Pi-Hole GitHub repository and more!
Add these domains to your Pi-Hole setup by running a script or manually and make your setup __trouble-free!__
Want to report a new domain? Want to report existing one? Feel free to file an [issue](https://github.com/ijhuang/allowlist/issues).

</div>

<div align="center">
  <h3>
    <a href="https://github.com/ijhuang/allowlist/releases">
      Releases
    </a>
    <span> | </span>
    <a href="https://github.com/ijhuang/allowlist/pulse/monthly">
      Pulse
    </a>
    <span> | </span>
    <a href="https://github.com/ijhuang/allowlist/issues">
      Submit Issue
    </a>
    <span> | </span>
    <a href="https://github.com/ijhuang/allowlist/pulls">
      Submit PR
    </a>
    <span> | </span>
  </h3>
</div>       
&nbsp;
    
<br />

![Allowlist install demo gif](https://raw.githubusercontent.com/ijhuang/allowlist/master/images/whitelist.gif)

<br />

## <ins>Table of contents</ins>
- [Features](#features)
- [Overview](#overview)
- [Installation](#installation)
  * [For whitelist.txt](#for-whitelisttxt)
  * [For referral-sites.txt](#for-referral-sitestxt)
  * [For optional-list.txt](#for-optional-listtxt)
  * [For Docker installation (with Python3 support)](#for-docker-installation-with-python3-support)
  * [For Docker installation (without Python3 support) or /etc/pihole on different directory](#for-docker-installation-without-python3-support-or-etcpihole-on-different-directory)
- [Uninstall](#uninstall)
- [Automated Update](#automated-update)
- [How do I determine an ad domain?](#how-do-i-determine-an-ad-domain)
- [Stargazers over time ](#stargazers-over-time)
- [Support](#support)
- [License ](#license)

## <ins>Features</ins>

- The entire repo is curated.
- New domains are added frequently.
- Supports Pi-Hole Docker installation.
- Comes with a simple install/uninstall scripts i.e. you can add all domains with comments automatically at an instant.
- Domains are categorized and are included in 3 different files.
- All the domains will have comments to let you know about the domain.
- If you are a beginner to Pi-Hole, adding these sites will solve issues with host files that block legit websites.

## <ins>Overview</ins>
  <br />

| File Name | Domain Count | Description | Update Frequency | Raw Link |
|:-:|:-:|:-:|:-:|:-:|
| whitelist.txt | 191 | This file contain domains that are __safe__ to allowlist i.e. it does not contain any tracking or advertising sites. Adding this file fixes many problems like YouTube watch history, videos on news sites and so on. If you want to report additional domain feel free to file an [issue](https://github.com/ijhuang/allowlist/issues). | Occasionally | [link](https://raw.githubusercontent.com/ijhuang/allowlist/master/domains/whitelist.txt) |
| referral-sites.txt | 75 | People who use services like Slickdeals and Fatwallet needs a few sites (most of  them are either trackers or ads) to be allowlisted to work properly. This file contains some analytics and ad serving sites like __doubleclick.net__ and others. __If you don't know what these services are, stay away from this list.__ | Occasionally | [link](https://raw.githubusercontent.com/ijhuang/allowlist/master/domains/referral-sites.txt) |
| optional-list.txt | -- | This file contain domains that are needed to be allowlisted depending on the service you use. It may contain some tracking site but sometimes it's necessary to add bad domains to make a few services to work. Currently there is no script for this list, you have to add domains manually to your Pi-Hole. | Occasionally | [link](https://raw.githubusercontent.com/ijhuang/allowlist/master/domains/optional-list.txt) |


## <ins>Installation</ins>

 Make sure you have __python3__ installed on your machine. You can simply install it by using `sudo apt install python3`

#### For whitelist.txt

```Shell
git clone https://github.com/ijhuang/allowlist.git
sudo python3 allowlist/scripts/whitelist.py
```

#### For referral-sites.txt

```Shell
git clone https://github.com/ijhuang/allowlist.git
cd allowlist/scripts
sudo ./referral.sh
```

If you are using Pi-hole 5.0 or later, the comment field has a unique string - `qjz9zk` to uniquely identify the domains added by this script so the user can remove the domains without affecting other allowlisted sites.

#### For optional-list.txt
You can add it manually depending upon the service you use.

#### For Docker installation (with Python3 support)

 Access you running Pi-Hole container by `docker exec -it <container-ID> bash` and proceed with the steps given below:

```Shell
git clone https://github.com/ijhuang/allowlist.git
sudo python3 allowlist/scripts/whitelist.py
```

```Shell
git clone https://github.com/ijhuang/allowlist.git
cd allowlist/scripts
sudo ./referral.sh
```

#### For Docker installation (without Python3 support) or /etc/pihole on different directory

 You can pass two optional arguments to whitelist.py, uninstall.py, and referral.sh:

```Text
 -d or --dir to specify the Pi-hole etc directory (in normal install should be /etc/pihole)
 -D or --docker to specify if Pi-hole is running as Docker container
 ```

```Shell
git clone https://github.com/ijhuang/allowlist.git
sudo python3 allowlist/scripts/whitelist.py --dir /home/docker/pihole/etc-pihole/ --docker
```

```Shell
git clone https://github.com/ijhuang/allowlist.git
cd allowlist/scripts
sudo ./referral.sh --dir /home/docker/pihole/etc-pihole/ --docker
```
__Note: You don't have to clone the repo every time you need to update allowlist file. Navigate to `allowlist/scripts` and run it again `sudo python3 whitelist.py__

## <ins>Uninstall</ins>

![Allowlist uninstall demo gif](https://raw.githubusercontent.com/ijhuang/allowlist/master/images/uninstall.gif)

As mentioned earlier, the unique string (`qjz9zk`) will come in handy while removing the domains from the database. It uses LIKE operator of the SQLite to match the wildcard string present in the comment section.

```SQL
DELETE FROM domainlist WHERE type = 0 AND comment LIKE '%qjz9zk%'
```

This statement will remove the domain only if it is present in the exact allowlist section and having the string `qjz9zk`. Domains in the regex list will not be removed by this script.

The older version of the Pi-hole uses a simple text file to store the entries. In this case the script will match the domains present in your Pi-hole to the domains present in the GitHub repo and removes them accordingly.

__To remove the domains:__
`sudo python3 uninstall.py`


## <ins>Automated Update</ins>

```Shell
cd /opt/
sudo git clone https://github.com/ijhuang/allowlist.git
```

Make the script to run the script at 1AM on the last day of the week

```Shell
sudo nano /etc/crontab
```

Add this line at the end of the file:

```Text
0 1 * * */7     root    /opt/allowlist/scripts/whitelist.py
```

CTRL + X then Y and Enter

```Shell
sudo python3 allowlist/scripts/whitelist.py
```

## <ins>How do I determine an ad domain?</ins>
- __Adam:ONE Assistant (formerly DNSthingy Assistant):__ <a href="https://chrome.google.com/webstore/detail/adamone-assistant/fdmpekabnlekabjlimjkfmdjajnddgpc">This browser extension</a> will list all of the domains that are queried when a web page is loaded. You can often look at the list of domains and cherry pick the ones that appear to be ad-serving domains.
- __Using inbuilt Developer tool:__ For Chrome and Firefox, __`ctrl+shift+I`__ will land you in Developer tools menu.
- __Using an Android app:__ [__`Net Guard`__](https://play.google.com/store/apps/details?id=eu.faircode.netguard) is an Android app that can be used to monitor any specific apps, works on unrooted devices too.

## <ins>License</ins>

```Text
Copyright for portions of project Allowlist are held by [Anudeep ND, 2020] as part of project Bar. All other copyright for project Allowlist are held by [ijhuang, 2021].

MIT License

Copyright (c) 2021 ijhuang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
