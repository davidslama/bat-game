echo off



set /p hrac=" Ahoj, jak se jmenujes?:"
echo vybral sis hrace: %hrac%
msg %username% "ahoj hodne stesti "%hrac%e"
if "%hrac%"=="" pøíkaz
:zacatek
echo Vystopoval si bandity, ktery te okradli, tvuj ukol je ziskat zpet sve penize.

echo v - pokusit se do jejich sidla proplizit vecer
echo d - jit hlavnimi dvermi za dne
echo.
choice /c:dv
rem vyberes si den nebo noc.
if errorlevel == 2 goto vecer
if errorlevel == 1 goto den

:den
 echo sel si za dne, tim padem te bandite hned poznali a zabili.
 echo u - ukoncit hru
 echo z - zkusit znovu
 echo.
choice/c:zu
if errorlevel == 2 goto konec
if errorlevel == 1 goto zkusit

:vecer
echo Je pulnoc a ty se rozhodnes vyrazit.

echo v - muzes vypacit okno a tim se dostat do sidla.
echo k - nebo muzes vlizt do domu kominem
echo.
choice /c kv
rem vyberes si moznost vniknuti
if errorlevel == 2 goto vypacit
if errorlevel == 1 goto komin

:komin

echo uspesne si se dostal do sidla skrz komin a ziskal zpet sve penize
echo.
echo u - ukoncit hru
echo z - hrat znovu
choice /c zu
if errorlevel == 2 goto konec
if errorlevel == 1 goto zacatek

:vypacit

echo pacenim okna si udelal moc velky hluk a bandite te zabili
echo u - ukoncit hru
echo z - zkusit znovu
choice/c zu
if errorlevel == 2 goto konec
if errorlevel == 1 goto zkusit


:zkusit
goto zacatek

:konec

