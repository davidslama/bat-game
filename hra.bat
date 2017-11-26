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

echo Pres komin si pronikl dovnitr muzes prohledat bud sklep
echo nebo patro na kterym se prave nachazis nebo pudu 
echo.
echo n - soucasne patro
echo s - sklep
echo p - puda 
choice /c psn
if errorlevel == 3 goto soucasne
if errorlevel == 2 goto sklep
if errorlevel == 1 goto puda

:vypacit

echo pacenim okna si udelal moc velky hluk a bandite te zabili
echo u - ukoncit hru
echo z - zkusit znovu
choice/c zu
if errorlevel == 2 goto konec
if errorlevel == 1 goto zkusit

:sklep

echo Proplizil ses do sklepa, bohuzel si ale nic nenasel
echo n - jit zpatky nahoru a prohledat horni patro
echo p - jit  na pudu a prohledat ji
choice /c pn
if errorlevel == 2 goto soucasne
if errorlevel == 1 goto puda

:puda
 
echo plizil ses na pudu ale zistil si, ze je zamcena
echo n - jit zpet dolu a dolni patro
echo s - jit prohledat sklep
choice /c sn
if errorlevel == 2 goto soucasne
if errorlevel == 1 goto sklep

:soucasne

echo Prohledal si cele patro a se stestim si nikoho z banditu nevzbudil
echo ale nenasel si sve penize, jenom klice
echo p - jit na pudu
echo s - jit do sklepa
choice /c sp
 if errorlevel == 2 goto puda2
 if errorlevel == 1 goto sklep2
 
:puda2

echo Odemkl si pudu a nasel sejf ve kterym byli tve penize

echo u - ukoncit hru
echo z - hrat znovu
choice/c zu
if errorlevel == 2 goto konec
if errorlevel == 1 goto zkusit

:sklep2

echo Proplizil ses do sklepa, bohuzel si ale nic nenasel
echo p - jit na pudu
choice /c p
if errorlevel == 1 goto puda2
 

:zkusit
goto zacatek

:konec

