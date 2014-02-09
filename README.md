
ToDo now
====

* cleanup this very file
* copy icinga.cfg und munin foo
* document this:
 * $ kinit holger@FOSDEM.ORG
 * $ ssh -o 'GSSAPIAuthentication yes' holger@apeiron.fosdem.org
* collect recipts and send them to trouble
 * h01ger: recipts: 50+397
* write down lists of things which can+should be improved

ToDo later
====
* send debconf stuff to irill
* build cubemap on wheezy
* enhance
 * building coordinators
 * print more
  * building maps
  * room / name 
  * checklists
 * wouter: built a list of contacts per devroom so we can update the rooms sheet
 * mail devroom managers and/or volunteers on friday again
 * 3 cheatsheets
  * Clarify what cheat sheet is what (label one "setup", the other
    "operating" cheat sheet)
 * fai
  * save laptop+all logs on the server
  * remove BONDING
 * prepare things better: label everything, put camera positions into maps(!)
 * Need to have a separate room (not sharing with network team anymore)
 * Separate software/gear team (h01ger/CarlFK: software; wouter/...: gear)
 * Add UPS for servers
 * Clarify to teams that we *might* be late at startup.
 * Assign a particular person to manage video volunteers (and *nothing* else)
* Good ideas, to be remembered for next year:
 * Must have spare *everything*; cameras, laptops, cables, everything.
 * Make rounds when things should be up
* We had planned to run dvsink-files twice (once to server, once to
  laptops). As such, we had three servers (more than we'd need for
  offline copying) and rented the laptops until the monday after fosdem
  (since copying should've finished by sunday evening). Last-minute
  change of plans meant:
  - Copying files took until late monday
  - One server wasn't used much during event (maybe for transcoding?)
  - Waste of money for an extra server and for extra laptop rental
* Preparing at the NixSys office won't be an option for next year:
  - NixSys is moving at the end of Q1 2014
  - The office is not large enough to run 20+ laptops concurrently
  - It is quite a logistical effort to get everything from rental
    companies to Mechelen to ULB to Mechelen to rental companies again.

  The above combined mean we would need space which would ideally be:
  - Within walking distance of a hotel or other accomodation for video
    team members (so we don't need to worry about transportation and can
    work until the wee hours of the night if needs be),
  - Within a reasonable distance of the ULB (so moving gear from that
    location to ULB and back isn't an issue for the logistics people)
  - Ours for at least a week before the event, and a few days after,
  - A place with a clear address so we can have rental companies
    deliver gear there,
  - With decent Internet connectivity (doesn't need to be gigabit
    Internet link, but we need to be able to install several laptops
    from the Internet, and need to communicate with people not there
    over IRC or mail or the likes),
  - Large enough and have a stable enough power infrastructure to run
    two laptops plus a camera plus a framegrabber per room concurrently
    as well as seat four to five people with their laptops, so that we
    can test our full setup.

Basic setup
====

* 2 main talk rooms (janson, K auditorium)
 *  streamed (the main talk rooms)
 *  audio entirely done by ULB
 *  1 camera, 1 twinpact
 *  2 laptops

* Lightning talks room
 * Streamed
 * audio, appearantly done by ULB
 * 1 camera, 1 twinpact
 * 2 laptops

* 19 developer rooms
 * 1 camera per room 
 * 1 twinpact
 * audio, appearantly done by ULB

Check the rooms at https://fosdem.org/2014/schedule/rooms/ 
and https://fit.fosdem.org/wiki/Fosdem2014Devrooms 


3 servers
----
* how do we use them?
  - 6 rooms per server:
    - K building: video1
    - H building (minus 1301, Cornil): video2
    - Janson, AW building, H.1301: video3
 
  There is no wired connectivity to the U building; we'll need to record
  to local hard disk there, and possibly sneakernet them over with a USB
  disk or some such.

* For U building: sync to servers by night from NOC
  - UA2.114 & UA2.252A: sync to video1
  - UD2.120: sync to video2
  - UD2.218A: sync to video3

Additionally, there are two USB hard disks to sneakernet data over in case of
disk space issues

24 twinpacts
----
* 2 from IRILL
* 3 from FOSDEM
* 10 from carl (2 need power supplies fixed)
* 4 from Kenny (KDE)
* 5 newly bought on eBay (no power supplies or remotes) testing now.

Thats 24 in total. 1 broke on Wednesday at pre-setup.

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
8 cameras but only 6 tripods: we can pick these up on Wednesday (need to drive to
Vilvoorde, 10')

From Stake5:
------------
10 cameras: will be delivered on thursday


From IRILL/DebConf:
-------------------
h01ger brought from Paris:

- 1 pelicase
- 2 twinpacts
- 3 cameras
- 4 tripods

From Python:
------------
CarlFK brought:

- 10 twinpacts
- plus 5 more bought with FOSDEM money
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
- Saturday/Sunday, one hour before start of schedule: yell at devrooms who've
  not shown up yet, go set up gear there ourselves (and possibly send
  volunteers there as well)
