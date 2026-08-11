# 🛠️ Moteur OCRmyPDF Local (Docker)

Ce dossier sert de sas de traitement pour rendre les PDF scannés sélectionnables.

## Méthode 1 : Glisser-Déposer (Recommandé)
Prendre le PDF et le relâcher sur le fichier "OCR_Glisser_Deposer.bat".

## Méthode 2 : Commande Manuelle
Si le script échoue, ouvrir PowerShell dans ce dossier et utiliser cette commande canonique. 
Remplacer "document.pdf" par le nom cible :

```powershell
docker run --rm -v "$($PWD.Path):/data" jbarlow83/ocrmypdf --language fra+eng --deskew --clean "/data/document.pdf" "/data/document_OCR.pdf"

> **Note technique :**
> 
> -   \--deskew : redresse les pages
>     
> -   \--clean : nettoie les artefacts visuels du scan L'image utilisée est "jbarlow83/ocrmypdf:latest".
>     

```

Avec ça, ton workflow de transformation de scans est blindé, documenté, déterministe et s'exécute en un seul mouvement de souris.

```