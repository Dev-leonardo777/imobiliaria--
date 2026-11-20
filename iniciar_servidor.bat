@echo off
title SERVIDOR ATELIER IMOVEIS
cd /d "%~dp0"
echo ====================================================
echo INICIANDO SERVIDOR LOCAL ATELIER IMOVEIS
echo ====================================================
node server.js
if %errorlevel% neq 0 (
  echo.
  echo [Aviso] Node.js nao respondeu, iniciando servidor via Python...
  python -m http.server 3000
)
pause
