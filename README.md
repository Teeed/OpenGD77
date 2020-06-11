# OpenGD77
[![Build Status](https://drone.teeed.eu/api/badges/Teeed/OpenGD77/status.svg)](https://drone.teeed.eu/Teeed/OpenGD77)

Open source firmware for the Radioddity GD-77 dual band DMR / FM handheld transceiever, for Amateur Radio use.

# What is this repo all about?
This repo contains version which supports TalkGroup filtering. It is also aimed to clean up existing codebase and improve stability.

Developers on parent (rogerclarkmelbourne/OpenGD77) are [not willing to merge any changes from me](https://github.com/rogerclarkmelbourne/OpenGD77/pull/426), nor to read stdlib docs (which could really help them understand how some functions from stdlib work), even if docs clearly says they are wrong. So, the only way is to continue work in my own repo. However, I will merge "good" changes from main repo until it is possible (after cleanup it will probably be quite hard, since there will be a lot of code conflicts).

# Releases
For binary relases please have look at https://github.com/Teeed/OpenGD77/releases.

# Project status

The firmware is relatively stable and provides DMR and FM audio transmission and reception, as well as a DMR hotspot mode.
However it does currently support some core functionality that the official firmware supports, including sending and receiving of text messages, or Dual Capacity Direct operation, or Dual Watch operation etc

Not all functionality provided in the official firmware is likely ever to be part of this firmware, because some features like encryption are explicitly prohibited for Amateur Radio operators.

Some functionality like Dual Watch may also not ever be implemented, because its equivalent to the Channel / Zone scan function.



The project is under active development by several developers. 
New developers are welcome to participate, but currently the focus is still on getting the core functionality working and existing bugs fixed.
This does not mean that new non-core functionality changes will be rejected, but bug fixes and core functionality PR's  will take priority


# Credits
Originally conceived by Kai DG4KLU.
Further development by Roger VK3KYY, latterly assisted by Daniel F1RMB, Alex DL4LEX, Colin G4EML and others.

Current lead developer and source code gatekeeper is Roger VK3KYY

# License
This software is licenced under the GPL v2 and is intended for Amateur Radio and educational use only.

Use of this software for commercial purposes is strictly forbidden.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
