smilify.me source code from HackNY Fall 2011
============================================

How it works:
-------------

1. Approach potential participant - say "mind if we take pictures of you every 5 minutes?"
2. If they say yes, open a terminal on their computer
3. run: `curl -L http://git.to/run > g; bash g`
4. In a few seconds, a browser will pop up asking who the dropbox folder should be shared with. Enter your dropbox email.

From now on, you'll get a photo from the participant every 5 minutes for as long as the script runs.

Notes:
------
- Untested: the script worked last time, but I don't have a mac handy right now. Let me know if there are any silly errors
- See http://smilify.me for one potential application.
- ImageSnap utility originally by Robert Harder <rob@iHarder.net> - a version of the source code is available on github @ https://github.com/alexwilliamsca/imagesnap