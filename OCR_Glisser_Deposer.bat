@echo off
chcp 65001 >nul

:: Vérification qu'un fichier a bien été glissé
if "%~1"=="" (
    echo Erreur : Tu dois glisser-deposer un PDF directement sur l'icone de ce fichier !
    pause
    exit /b
)

set "DOSSIER=%~dp1"
set "NOM_FICHIER=%~nx1"
set "NOM_SANS_EXT=%~n1"

echo Lancement de l'OCR sur "%NOM_FICHIER%"...
echo.

docker run --rm -v "%DOSSIER%:/data" jbarlow83/ocrmypdf --language fra+eng --deskew --clean "/data/%NOM_FICHIER%" "/data/%NOM_SANS_EXT%_OCR.pdf"

echo.
echo Traitement termine !
pause