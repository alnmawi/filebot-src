@ECHO OFF
java -DuseExtendedFileAttributes=true -DuseCreationDate=false -Djava.net.useSystemProxies=false -Dapplication.deployment=portable -Djna.nosys=true -Djna.nounpack=true -Dapplication.dir="%~dp0data" -Duser.home="%~dp0data" -Djava.io.tmpdir="%~dp0data\tmp" -Djna.library.path="%~dp0." -Djna.boot.library.path="%~dp0." -Djava.library.path="%~dp0." -Dnet.filebot.AcoustID.fpcalc="%~dp0fpcalc.exe" -Djava.util.prefs.PreferencesFactory=net.filebot.util.prefs.FilePreferencesFactory -Dnet.filebot.util.prefs.file="%~dp0data\prefs.properties" %JAVA_OPTS% -jar "%~dp0FileBot.jar" %*