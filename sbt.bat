set akkahome=%AKKA_HOME%
set AKKA_HOME=
set SCRIPT_DIR=%~dp0
java -Xmx1024M -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8765 -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m -jar "%SCRIPT_DIR%sbt-launch.jar" %*
set AKKA_HOME=%akka_home%