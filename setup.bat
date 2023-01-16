@echo off
uharc x -o+ -vm+ -y+ data.uha
del data.uha
uharc x -o+ -vm+ -y+ sound.uha
del sound.uha
del uharc.exe
startw.exe unpack.exe
del unpack.exe
cls
echo Please wait ...
call dupe.bat
del dupe.bat
startw inject.exe "Sounds\CBW_Stingers.uax" "Sounds\CBW_Scripted.uax" "Sounds\CBW_DYN_weapons.uax" "Sounds\CBW_DYN_interface.uax" "Sounds\CBW_DYN_foley.uax" "Sounds\CBW_DYN_Dialog.uax" "Sounds\CBW_Ambience.uax" 
del inject.exe
del startw.exe
SetupReg.exe
cls
echo OK, ALL DONE !
pause