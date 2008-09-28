Automaton
===============

1. Development Computer Setup
  1. Dependencies
  2. Setting up the development Tools

2. Podcast Producer Server Setup
  1. Dependencies: correct forward and reverse DNS
  2. Configuring Open Directory
  3. Configuring Xgrid
  4. Configuring PodcastPro
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


Podcast Producer Server Setup
---------------------------

Podcast Producer Recording Machine Setup
----------------------------------------

Using the Workflow Tools
---------------------------