.global contextSwitch
contextSwitch:
        sd ra, (a0) # old ra
        sd sp, (a1) # old sp

        ld ra, (a2) # running ra
        ld sp, (a3) # running sp

        ret
