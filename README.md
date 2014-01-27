ToDo
====
* label everything from: carl + wouter + debconf
* decide how to use storage, 2.5 tb each 
* test+configure installation on two laptops (only)
* buy printer cartridges
* move fai from debconf to git..
* 5 more laptops

Basic setup
====

* 2 main talk rooms (janson, K auditorium)
 *  streamed (the main talk rooms), if Flumotion deal works out
 *  audio entirely done by ULB
 *  1 camera, 1 twinpact
 *  2 laptops

* Lightning talks room
 * Streamed, if Flumotion deal works out
 * audio, appearantly done by ULB
 * 1 camera, 1 twinpact
 * 2 laptops

* 19 developer rooms
 * 1 camera per room 
 * 1 twinpact
 * audio, appearantly done by ULB

Check the rooms at https://fosdem.org/2014/schedule/rooms/ 
and https://fit.fosdem.org/wiki/Fosdem2014Devrooms 


open questions / random stati
----
* how many cameras with tripods ordered? any backups?
 
  19 cameras have been ordered, all come with tripods. I had been
  planning to borrow three from IRILL (for one we'd have to use a D-I
  box), but apparently there's been a bit of a mixup.
  - TODO: perhaps borrow three from CCC?
 * do they come with firewire cables?
   - No idea. Probably not all of them.
* 45 laptops ordered. hopefully with firewire... small or big firewire?
  - small
* wheezy + which dvswitch version?
  - debconf + bugfix for manual fade state machine failure? 
  - which version / branch is that?
    It's in [git](http://anonscm.debian.org/gitweb/?p=dvswitch/dvswitch.git;a=commit;h=75dda59bd2a74ffe842154a0f2d7a1d0c94fea00)
* we need 100 power sockets for setup, status?
* we need room cheat sheets, best written in asciidoca
 * include: if speakers insist not to be recorded, dont
* penta integration - whats the status?
* do we want 23 small switches to have uplink connectivity to get the data of the latops easily at night?
  - The plan is to record to the server during the event, and copy to
    local hard disk _only_ as a backup. As such, we don't necessarily
    need 23 small switches (a few would be necessary, to deal with the
    laptops from U building; but I have some at the office, so that
    shouldn't be a major issue)


3 servers
----
* how do we use them?
  - 7 or 8 rooms per server. TODO: decide which rooms on which server (not too urgent).
 
  There is no wired connectivity to the U building; we'll need to record
  to local hard disk there, and possibly sneakernet them over with a USB
  disk or some such.

TODO: do we have 2 harddrives to redudantly store everything once we need to give the server back? when is that?

- Rental up to three weeks past FOSDEM
- We can host them at ULB for a few weeks to do the transcoding, at
  which point they'll get uploaded to video.fosdem.org and mirrored to
  (at least) five mirrors

Hence, I don't think we need to redundantly store stuff 


24 twinpacts
----
* 2 from IRILL
* 3 from FOSDEM
* 10 from carl (2 need power supplies fixed)
* 4 from Kenny (KDE)
* 5 newly bought on eBay (no power supplies or remotes) testing now.

Thats 24 in total.

People (core team)
----
* wouter
* h01ger (arriving 26th or 25th, leaving the 3rd or 4th)
* CarlFK (arriving 26th, leaving the 3rd) + Jen
* fil (arriving 2014-01-28 14:05 brussels south, leaving monday)

Gear arrivals
=============

From Videohouse:
----------------

9 cameras plus tripods: we can pick these up on Wednesday (need to drive to
Vilvoorde, 10')

From Stake5:
------------

10 cameras: will be delivered on wednesday


From IRILL/DebConf:
-------------------

h01ger will bring from Paris:

- 1 pelicase
- 2 twinpacts
- 3 cameras
- 4 tripods

From Python:
------------

CarlFK will bring:

- 10 twinpacts
- 5 more bought with FOSDEM money
- Loads of firewire cables


From hackman:
---------

- 1 camera will be brought by him on friday


From easy2rent:
---------------

3 servers and 45 laptops will be delivered on monday

From KDE:
---------

Kenny Duffus will bring 4 twinpacts to the infodesk on friday.

Planning
========

This is an initial planning for what we'll do during the week before FOSDEM.

- Monday: install servers, configure them, install transcoding scripts,
  monitoring, etc
- Tuesday: install & test laptops
- Wednesday: hook up cameras & twinpacts, test things, divide gear over boxes
- Thursday: go buy stuff if we figure out we're missing something, write
  documentation for volunteers, make waitscreen loop
- Friday morning: margin in case we run behind schedule
- Friday afternoon: bring gear to ULB, with help of FOSDEM logistics
  team. Possibly verify ULB audio set-up already in place, so we can ask
  for changes if necessary (and still possible...)
- Saturday/Sunday, early-o-clock: go to ULB and be ready to hand out video gear
  to volunteers
- Saturday/Sunday, 8:00 AM: yell at devrooms who've not shown up yet, go set up
  gear there ourselves (and possibly send volunteers there as well)
