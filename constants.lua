--[[
Copyright © 2018, Sjshovan (Apogee)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Mount Muzzle nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Sjshovan (Apogee) BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--]]

packets = {
    inbound = {
        music_change = {
            id = 0x05F,
            offsets = {
                type = 0x06
            }
        },
        zone_update = {
            id = 0x00A
        }
    },
    outbound = {
        action = {
            id = 0x1A,
            categories = {
                mount = 0x1A,
                unmount = 0x12
            },
        }
    },
}

player = {
    statuses = {
        types = {
            mount = 1072
        },
        mounted = {
            chocobo = 5,
            mount = 85
        }
    },
    buffs = {
        reiveMark = 511,
        mounted = 252
    }
}

music = {
    songs = {
        silent = 0x5B,
        mount = 0x54,
        chocobo = 0xD4,
        zone = 0x00,
    },
    types = {
        mount = 84,
        idle_day = 0,
        idle_night = 1
    }
}

colors = {
    primary = "\31\200%s",
    secondary = "\31\207%s",
    info = "\31\1%s",
    warn = "\31\140%s",
    danger = "\31\167%s",
    success = "\31\158%s"
}

muzzles = {
    silent = {
        name = 'silent',
        song = music.songs.silent,
        description = 'No Music (Default)'
    },
    mount = {
        name = 'mount',
        song = music.songs.mount,
        description = 'Mount Music'
    },
    chocobo = {
        name = 'chocobo',
        song = music.songs.chocobo,
        description = 'Chocobo Music'
    },
    zone = {
        name = 'zone',
        song = music.songs.zone,
        description = 'Current Zone Music'
    }
}

return {
    packets = packets,
    player = player,
    music = music,
    colors = colors,
    muzzles = muzzles
}