Automaton
===============

1. Development Computer Setup
  1. Dependencies
  2. Setting up the development Tools

2. Podcast Producer Server Setup
  1. Dependencies
  2. Configuring Open Directory
  3. Configuring Xgrid
  4. Configuring Podcast Producer
  5. Initializing the Workflows

3. Podcast Producer Recording Machine Setup

4. Using the Workflow Tools
  1. Generating a new course
  1. Creating a Course in iTunesU
  1. Getting the Workflows on your development Machine
  1. Generating a new Course Workflow
  1. Adding the Workflow to the Repository
  1. Installing the Changes to the Podcast Producer machine

Development Computer Setup
---------------------------
### Dependencies
To use the development tools you will need to have the ruby programming language and [git](http://git.or.cz/) installed on your development machine.

### Setting up the development tools
The development of UM's podcast workflows happens through a custom [rubigen](http://rubigen.rubyforge.org/) generator called [Automaton](http://github.com/trek/um-automaton/) that install system-wide. Install this generator on your computer using rubygems:

`sudo gem install trek-automaton -s http://gems.github.com`

This will install the Automaton gem and all of it's dependencies. You are now ready to create new Podcast Producer workflow bundles based on the UM School of Dentistry Template.

The Automaton gem is *only* required on development machines.

Sometimes the Automaton gem will be updated to include new features. To updated the gem (and ensure that future generated workflows are correctly formatted) use:

`sudo gem update trek-automaton -s http://gems.github.com`

Podcast Producer Server Setup
---------------------------
### Dependencies
Podcast Producer **absolutely requires** properly configured forward and reverse DNS.  On a Unix computer you can verify this using the `host` command.  To check and address like fellini.dent.umich.edu, enter:

`host fellini.dent.umich.edu`

If forward DNS is configured properly you should see the IP address of this machine:

`fellini.dent.umich.edu has address 141.211.159.166`

Running `host` again with the IP address should return a domain name pointer if *reverse* DNS is correctly configured.

`host 166.159.211.141`
`166.159.211.141.in-addr.arpa domain name pointer fellini.dent.umich.edu.`

If you do not receive a response like this, reverse DNS is not correctly configured and Podcast Producer will not function properly.

Your Podcast Producer machine will also need to have git installed.

### Configuring Open Directory
Podcast Producer uses Open Directory to authenticate both users recording new podcasts and other services that make up the Producer Producer system.

For full Directions for configuring Open Directory see the *Configuring the Open Directory Service* section of Apple's [*Podcast Producer Administration*](http://images.apple.com/server/macosx/docs/Podcast_Producer_Admin_v10.5.pdf) guide.

### Configuring Xgrid
For full Directions for configuring Open Directory see the *Configuring Xgrid Service* section of Apple's [*Podcast Producer Administration*](http://images.apple.com/server/macosx/docs/Podcast_Producer_Admin_v10.5.pdf) guide.  This guide has directions for setting up an Xgrid Controller and an Xgrid Agent on the same machine.

A more recommended setup is to have Podcast Producer, Open Directory, and the Xgrid Controller on one machine and Xgrid Agents on separate machines.  To use this architecture follow the directions in Podcast Producer Administration guide. After the last step:

1. Return to the Xgrid Service configuration in Server Admin.
2. Select "Settings" from the list of section in the top bar
3. Select the "Agent" tab
4. Uncheck the "Enable Agent Service" option

Setting up Agent computers will be covered in Section 3 of this document.


### Configuring Podcast Producer
In the section titled *Setting Up Podcast Producer* From the [*Podcast Producer Administration*](http://images.apple.com/server/macosx/docs/Podcast_Producer_Admin_v10.5.pdf) guide follow the directions in the section named *Configuring General Settings*

To set the specific Workflow Settings used at the Dental School:

1. Open Server Admin. 
2. In the Computers and Services list, select Podcast Producer. 
3. Click Settings. 
4. Click Properties. 
5. Click the triangle next to Default Properties to display the properties. 

Set your properties as follows:

* Administrator Short Name:
  pcastadmin 
* Group Administrator User:
  pcastadmin 
* Group Administrator Password:
  pcastadmin’s password 
* iTunes U Posting Credentials:
  UM's Posting Credentials
* iTunes U Shared Secret:
  UM's Shared Secret
* iTunes U Site Url:
  umich.edu
* iTunes U Tab id:
  0.0


### Initializing the Workflows
Podcast Producer ships with a set of default workflows. We will overwrite these with the School of Dentistry's custom workflows.  These workflows are stored in a central code repository called github.  To replace the default workflows with the custom workflows

1. In the Finder, open your Podcast Producer's shared folder (specified in the General tab of Settings section of Podcast Producer service in Server Admin).
2. Delete the *Workflows* folder (you may be promoted for your administrator credentials)
3. Open the Podcast Producer's shared folder in terminal with

  `cd /path/to/your/shared/folder`

4. Install the custom workflows using git with:
  
  `sudo git clone git://github.com/trek/um-podcastproducer-workflows.git Workflows`

Your custom workflows are now installed and will be recognized by Podcast Producer


Podcast Producer Recording Machine Setup
----------------------------------------

Using the Workflow Tools
---------------------------
### Generating a new course
### Creating a Course in iTunesU
### Getting the Workflows on your development Machine
### Generating a new Course Workflow
### Adding the Workflow to the Repository
### Installing the Changes to the Podcast Producer machine