# BatchEscalationVirus
smoothly destroys your PC with simple code


-----------------------
this malware is a good solution because it's not detected by the vast majority
of anti-viruses and can causes some pretty damage.

(I think it can be added to an sfx archive for auto-run after extraction.)





**how it works?**
-----------------------
once run, NAN creates a batch file in the _"Appdata>Local>Temp"_ directory
then asks the user for permission to open a CMD as admin, if the user clicks NO or press the close button,
the pop-up is relaunched in a loop until the user clicks YES, once done a command is executed in the CMD to open the .bat located in the "Temp" directory with admin right.


**///update:**
now NAN.bat is copied to a hidden directory _( %LocalAppdata%Programs\Packages\Microsoft\Low\Data\Cache\logs\Temp\Publisher\Vault\Credential\Token\Windows\input )_

**then from there automatically goes to startup**
(in case the victim restarts his PC instead of clicking YES in UAC pop-up)




code execution:
--------------------------
__the batch file located in the "Temp" directory contains code that:__

`reduces boot RAM, making it impossible to boot`

~~`adds a reg key that blocks the display of the desktop and icons`~~

~~`adds 4 registry keys to disable the mouse cursor`~~

`swaps current user password with a random password **.`

`loop user account creation, with random passwords`

`infinite creates random files in the Windows directory ***.`


 ** _// this command can obtain composed names such as ''Jean Mark'', which the command "net user %USERNAME% %RANDOM% " can't do.
      it's also useful because once the victim restarts his pc, it will automatically go into "recovery" mode, so the victim can recover his files,
      but with the addition of a random password, they can no longer do it._
      
*** _// please don't change file extensions if you don't know what you are doing, as some AV like avast block the creation of certain extensions_





https://github.com/KetaKBM/BatchEscalationVirus/assets/138097385/34ac0526-d6d8-4173-b69e-b5ca1348209c






Tested AV
-------
❌=detected,
✅=not detected
----------------------
`Windows Defender   ✅ (obviously)`

`Avast              ✅`

`Malwarbyte         ✅`

`Norton             ✅`

`Eset Nod32         ✅`

`Kaspersky total.S  ✅`

`Mcaffe             ✅`

`TotalAv            ✅`

`Avira              ✅`

`AVG                ✅`

-------------------------

⚠️DISCLAMER⚠️
-------------

This code is provided for educational and research purposes only. This virus has been created for the exclusive purpose of demonstrating the potential vulnerabilities and dangerousness of a simple batch file.

If you behave illegally and/or cause harm to yourself or others through the use of this project, you must bear the consequences yourself, and we will not assume any legal or joint liability.
-------------------





the UAC exploit came from, [ForceAdmin](https://github.com/Chainski/ForceAdmin). thanks to him
