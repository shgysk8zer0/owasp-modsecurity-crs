# OWASP ModSecurity Core Rule Set (CRS)

ModSecurity™ is a web application firewall engine that provides very little protection on its own. In order to become useful, ModSecurity™ must be configured with rules. In order to enable users to take full advantage of ModSecurity™ out of the box, Trustwave's SpiderLabs is sponsoring and maintaining a free certified rule set for the community. Unlike intrusion detection and prevention systems, which rely on signatures specific to known vulnerabilities, the OWASP ModSecurity Core Rule Set provides generic protection from unknown vulnerabilities often found in web applications, which are in most cases custom coded. The Core Rules are heavily commented to allow it to be used as a step-by-step deployment guide for ModSecurity™.

## Licensing
(c) 2006-2012 Trustwave

The ModSecurity Core Rule Set is provided to you under the terms and
conditions of Apache Software License Version 2 (ASLv2)

http://www.apache.org/licenses/LICENSE-2.0.txt

## Mail-List
For more information refer to the [OWASP Core Rule Set Project page](http://www.owasp.org/index.php/Category:OWASP_ModSecurity_Core_Rule_Set_Project)

Core Rules Mail-list -
* [Subscribe](https://lists.owasp.org/mailman/listinfo/owasp-modsecurity-core-rule-set)  
* [Archive](https://lists.owasp.org/pipermail/owasp-modsecurity-core-rule-set/)

## Installation
1. Follow these [Instructions](http://www.modsecurity.org/download.html) to install the module
1. `cd` into the correct directory:
 * <samp>/etc/apache2/conf.d/</samp> is good on Ubuntu
 * <samp>/usr/local/apache/conf/</samp> works as well.
 * Pick somewhere that makes sense and has restricted access
1. Get the code from either method listed in "Downloading"
 * Zip
```shell
$ wget https://github.com/SpiderLabs/owasp-modsecurity-crs/archive/master.zip
$ unzip master.zip
$ mv owasp-modsecurity-crs-master/ crs
```
 * Clone from GitHub
```shell
$ git clone git://github.com/SpiderLabs/owasp-modsecurity-crs.git crs
```
1. Navigate into the CRS directory
```shell
$ cd crs
```
1. Copy the default config file
```shell
$ cp modsecurity_crs_10_setup.conf.example modsecurity_crs_10_setup.conf
```
1. Symlink any rules into <samp>activated_rules</samp>
```shell
# Enables all base rules
$ ln -s $(pwd)/base_rules/* activated_rules/
```
1. Set the correct permissions
```shell
$ chmod -R g-w . && chmod -R o-w .
$ sudo chown -R crs root
```
