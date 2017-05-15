# Do you want to learn Puppet?
### Disclaimer
*This doc was originally structured and written from the point of view of*
*someone who already has purchased Puppet Enterprise. That said, there is*
*plenty here which applies to opensource puppet/hiera/puppetdb too.*

Also note that while Puppet 4 is different and contains breaking changes to Puppet 3, *most (like 90%) of Puppet 3 is exactly the same in Puppet 4.*

----

## Overview
This section will start at the complete novice level and will end at the intermediate-level.

## Learn to read and write Puppet Code
1. Try the self-paced traing guides and the Learning VM.
  Puppet Labs offers a fair amount of no-cost learning/training materials right
through their website and it absolutely covers the intro level & basics of
puppet.
  + [Introduction to Puppet](http://docs.puppetlabs.com/guides/introduction.html)
  + Start with the ["Choose Your Own Adventure" styled Learning Roadmaps.](https://learn.puppetlabs.com/learning-roadmaps)
  + [Create an account with Puppet Labs training portal](https://learn.puppetlabs.com/login.html) and then [login and start the free "Self-Paced Training".](https://learn.puppetlabs.com/catalog)
  + Enroll in the free courses and ['checkout' via the shopping cart.](https://learn.puppetlabs.com/cart)
  + [Download and run the Learning VM](https://puppetlabs.com/download-learning-vm) for personal non-classroom learning. The Learning VM comes pre-installed with Puppet, and with its companion Quest Guide gives you a chance to dive into the Puppet experience.
2. [Puppet Language: Visual Index](http://docs.puppetlabs.com/puppet/latest/reference/lang_visual_index.html) can help you find syntax elements when you can’t remember their names.
3. [Language Basics](http://docs.puppetlabs.com/puppet/latest/reference/lang_summary.html)
4. Install a Puppet client agent on your workstation to familiarize yourself with [`puppet` the command.](http://docs.puppetlabs.com/puppet/latest/reference/services_commands.html) See other section for download links.
6. Chose a code-editor / IDE that has integrations with puppet-language syntax. Find a [list on the front page of the Forge](https://forge.puppet.com/)
7. Validate your code syntax and style-check your code
  + `puppet parser validate init.pp` will run the parser and check to see if your syntax is correct
  + Install the `puppet-lint` and run `puppet-lint init.pp` to check/enforce a coding style
8. Learn `git` and Github, see other documentation
9. [Beginers guide to puppet modules](http://docs.puppetlabs.com/guides/module_guides/bgtm.html) and then [Module Fundamentals](http://docs.puppetlabs.com/puppet/latest/reference/modules_fundamentals.html)
10. Read the [Release Notes to keep on top the changes to Puppet 4.x](https://docs.puppetlabs.com/puppet/latest/reference/release_notes.html)


### Validate the code you write with the puppet command
After you write a puppet code file, say `init.pp`, you need to check to see if the code you have written is of clean syntax and will 'compile'. So you can run the command:
```
puppet parser validate init.pp
```
and it will syntax check your code. Code with valid syntax will not produce any output or errors.

### puppet-lint makes it easy to adhere to the Puppet Labs coding style-guide
The puppet-lint tool analyze your code and look for deviations from the Puppet Labs style guide. It’s a quick and easy way to ensure that everybody is following a common set of conventions, so as your module collection grows, you’ll have a consistent set of modules instead of sections with cobwebs.
+ [Puppet Labs self-paced training coure on puppet-lint](https://learn.puppetlabs.com/elearning/puppet-lint)
+ [puppet-lint homepage](http://puppet-lint.com/)
+ [puppet-lint on github.com](https://github.com/rodjek/puppet-lint)
+ [puppet-lint at rubygems.org](https://rubygems.org/gems/puppet-lint/versions/1.1.0)

Code that passes the style-check will not produce any output or errors. Run `puppet-lint --help` to see all the options for the checks. Also `--no-140chars-check`  is probably desirable since 140 character limit is *nice* but may be almost impossible adhere to through out the code because of long paths/URLs.

### File templating with Puppet 3 and 4
+ "Puppet Templates" – Sally Lehman, Auth0
  - https://puppetconf2016.sched.org/event/6fjz/puppet-templates-sally-lehman-auth0
  - Slides - http://www.slideshare.net/PuppetLabs/puppetconf-2016-puppet-templates-sally-lehman-auth0
  - Video - https://www.youtube.com/watch?v=Tz6ngyPb2ew
  - Quite a comprehensive look at various forms of content templating


### 'Roles and Profiles' design pattern
The Roles and Profiles design pattern is how you layer two levels of abstraction on your code so that you can build practical, business-specific interfaces to the configuration you care most about. A better interface makes hierarchical data easier to use, makes system configurations easier to read, and makes refactoring easier.
+ [Roles and profiles: Introduction](https://docs.puppet.com/pe/2017.1/r_n_p_intro.html)
+ [Roles and profiles: A complete example](https://docs.puppet.com/pe/2017.1/r_n_p_full_example.html)
+ [Slides: Puppet Best Practices: Roles and Profiles – Gary Larizza at PuppetConf 2016](https://www.slideshare.net/PuppetLabs/puppetconf-2016-puppet-best-practices-roles-profiles-gary-larizza-puppet)
+ [Video: Puppet Best Practices: Roles and Profiles – Gary Larizza at PuppetConf 2016 ](https://www.youtube.com/watch?v=RYMNmfM6UHw)


### Do you have Puppet 3.x code and now need to move to 4.x?
Several breaking changes were introduced in Puppet 4.0. If you previously used Puppet 3.x, your manifests will need to be updated for the new implementation. [The Puppet 4.0 release notes detail the breaking changes from puppet 3.x to puppet 4.0.](https://docs.puppet.com/puppet/4.0/release_notes.html) Reading all the other 4.x release notes in order is a must in order to get the full scope of changes and deprecations.

If you are familiar with Puppet 3 and new to Puppet 4:
+ [Why you should upgrade to Puppet 4](https://docs.puppet.com/upgrade/)
+ [Puppet 4 language features](https://docs.puppet.com/puppet/4.6/reference/lang_updating_manifests.html)
+ [Puppet Inc.'s Puppet 4 optimized NTP module](https://forge.puppet.com//puppetlabs/ntp/6.0.0)
+ [How Puppet Inc. updated their NTP module to Puppet 4](https://puppet.com/blog/ntp-puppet-4-language-update)

Also this presentation by Rob Nelson at PuppetConf 2016 is a great resource for migrating to 4.x
+ "Enjoying the Journey from Puppet 3.x to Puppet 4.x" - Rob Nelson
  - https://puppetconf2016.sched.org/event/6fj4/enjoying-the-journey-from-puppet-3x-to-4x-rob-nelson-att
  - Slides - http://www.slideshare.net/PuppetLabs/puppetconf-2016-enjoying-the-journey-from-puppet-3x-to-4x-rob-nelson-att
  - Video - https://www.youtube.com/watch?v=FWnj0xQOZN8
  - He documents things in his talk that I experienced when I migrated from PE 3.8 to PE 2015.2.

## Installing Client agents
### Puppet Downloads (OpenSource and Not-Puppet Enterprise)
Here are the links to the opensource downloads.
+ Linux YUM package repo: https://yum.puppetlabs.com/
+ Debian/Ubuntu APT package repo: https://apt.puppetlabs.com/
+ Windows: https://downloads.puppetlabs.com/windows/
+ Mac OS X: https://downloads.puppetlabs.com/mac/

### Puppet Enterprise client agent
You'll need to get the Puppet Enterprise client on your choice of desktop/laptop OS (Linux [Fedora/Ubuntu/Red Hat], Windows, Mac OS X). Go to the [Puppet Enterprise download page and choose the "Puppet Enterprise Agents](https://puppetlabs.com/download-puppet-enterprise-all#agent) and download the appropriate binary archive for your OS.

You should just be able to install the package-archive with your OS's package installation tools (`rpm` for RHEL/Fedora, `apt` for Ubuntu, double-click .MSI/.EXE on Windows, or extract the .DMG for Mac OS X). In case that is not enough info, visit the following links:
+ [Install PE Agents: Linux & unix](http://docs.puppetlabs.com/pe/latest/install_agents.html)
+ [Install PE Agents: Windows](http://docs.puppetlabs.com/pe/latest/install_windows.html)
+ [Install PE Agents: Mac OS X](http://docs.puppetlabs.com/pe/latest/install_osx.html)

## Links to general puppet video resources
### The PuppetConf videos have plenty of great presentations on a very wide variety of Sysadmin/DevOps/CfgMgmt topic.
[2014 PuppetConf videos](https://puppetlabs.com/puppetconf-2014-videos-and-presentations)

[2015 PuppetConf videos](https://puppetlabs.com/puppetconf-2015-videos-and-presentations)

### A look back at how Puppet changed between 0.24, 2.5, 2.6, 27, 3.x, 4.x
[Puppet, After a Decade and Change](https://puppetlabs.com/presentations/puppet-after-decade-and-change)
-Eric Sorenson, Puppet Labs

### Changes in was called 'the future parser', which is now the current Puppet 4.x language
[Power of Puppet 4](https://puppetlabs.com/presentations/power-puppet-4)
 -Martin Alfke, example42

----

# So you want to learn about Puppet, it's subsystemsi, and administration?

This section will start at the intermediate-level and will move toward the
Server Admin-level.

### Agent All In One Packaging
[What's the Deal with Puppet 4, AIO and Puppet Collections and What Does That Mean to Me?](https://puppetlabs.com/presentations/whats-deal-puppet-4-aio-and-puppet-collections-and-what-does-mean-me)
-Eric Sorenson and Mike Stahnke, Puppet Labs

## Puppet Subsystems
### Puppet Server
+ [The Puppet Master on the JVM](https://puppetlabs.com/presentations/puppet-master-jvm-chris-price-puppet-labs)- Chris Price, Puppet Labs
+ [Puppet Server: 2015 and Beyond!](https://puppetlabs.com/presentations/puppet-server-2015-and-beyond) -Kevin Corcoran, Chris Price and Archana Sridhar, puppetlabs


### PuppetDB
PuppetDB is the application for storing puppet catalogs and facts so you can
get reporting out of it. It uses Postgresql on the backend. PuppetDB the app
has changed in the last 3 years. Probably best to start at the beginning.
Seriously good set of videos from Deepak on the how/why of PuppetDB.

+ [2013 PuppetConf - New Adventures in Higher-Order Automation](https://puppetlabs.com/presentations/puppetdb-new-adventures-higher-order-automation)
-Deepak Giridharagopal, Puppet Labs
+ [2014 PuppetConf - PuppetDB: One Year Faster](https://puppetlabs.com/presentations/puppetdb-one-year-faster-deepak-giridharagopal-puppet-labs)
-Deepak Giridharagopal, Puppet Labs
+ [2015 PuppetConf - PuppetDB: Year in Review and Roadmap](https://puppetlabs.com/presentations/puppetdb-year-review-and-roadmap) -Scott Hanselman, Deepak Giridharagopal, Puppet Labs

### PE Console
[Introduction to Puppet Enterprise Console](https://puppetlabs.com/presentations/introduction-puppet-enterprise-console)
 Beth Cornils, Libby Molina, Steve Axthelm and Colin Brock, Puppet Labs

### PE APIs
[PE API Roundup: NC, RBAC, Activity Service, Tools and More!](https://puppetlabs.com/presentations/pe-api-roundup-nc-rbac-activity-service-tools-and-more)
 Jeremy Adams and Lizzi Lindboe, Puppet Labs

## PE Integrations
### Puppet Enterprise and Satellite 6.
+ [YouTube video "Puppet Enterprise and Satellite 6"](https://www.youtube.com/watch?v=SznrNExpjxo) - Richard Jerrido, Red Hat
+ [Red Hat Kbase article on Sat6 + PE "Solution Brief: Red Hat Satellite 6 & Puppet Enterprise Integration"](https://access.redhat.com/articles/satellite-and-puppet-enterprise)
+ [Puppetlabs puppet module 'satellite_pe_tools' to perform integration](https://forge.puppetlabs.com/puppetlabs/satellite_pe_tools)
