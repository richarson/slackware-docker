slackware-docker
===============

build scripts for full slackware docker images

Overview
========

Modifications to Vincent Batts' (https://github.com/vbatts/slackware-docker)
dockerfiles to create base and full slackware images, both 32 and 64 bits.

Consider these scripts alpha/beta status, I plan to improve them but I make no promises :)

- mkimage-slackware32.sh: script to create a minimal 32 bits slackware image from scratch
- mkimage-slackware64.sh: script to create a minimal 64 bits slackware image from scratch
- Dockerfile-32full: builds a full 32 bits slackware image from the image created by mkimage-slackware32.sh
- Dockerfile-64full: builds a full 64 bits slackware image from the image created by mkimage-slackware64.sh
- get_paths.rb: original script from vbatts, unmodified.

Contributing
============
please hack on this and send feedback!

Note
====

I'm leaving the original copyright notice from VBatts for now, but modifications
are my own and if you use this files don't bother him, ask me first!

License
=======

Copyright (c) 2013, Vincent Batts <vbatts@hashbangbash.com>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer. 
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
