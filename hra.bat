@echo off

set /p hrac="zadej jmeno hrace:"
echo vybral sis hrace: %hrac%
msg %username% "ahoj%hrac%e"
if "%hrac%"=="" pøíkaz

echo Tvuj ukol je ziskat lup od mistnich banditu. Kdyz dorazis na misto mas tri
echo moznosti jak toho docilit

echo a - vecer se proplizit a pokusit se lup ukrast
echo b - probit se skrz bandity.
echo.
choice /c:ab
rem vyberes si moznost

if errorlevel == 2 goto vecer
if errorlevel == 1 goto probit


:vecer 
echo lup je na dosah ale jestli ho vezmes riskujes ze probudis banditi.
echo.
timeout /t 10
echo c - vzit lup a utyct.
echo g - pobit banditi ve spanku.
echo.

choice /c:cg

if errorlevel == 2 goto vzit
if errorlevel == 1 goto pobit

:vzit

:pobit

:konec
pause
