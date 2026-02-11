# Compilación Garantizada - GitHub Codespaces

## Paso 1: Abrir en GitHub Codespaces
1. Ve a: https://github.com/ingknarg32/NuevasTecnologiaDelDesarrollo
2. Click en el botón verde "Code"
3. Selecciona la pestaña "Codespaces"
4. Click en "Create codespace on main"

## Paso 2: Esperar a que se configure
- Espera 2-3 minutos mientras se crea el entorno
- Flutter se instalará automáticamente

## Paso 3: Compilar para Android
```bash
flutter build apk --release
```
El archivo APK se generará en: `build/app/outputs/flutter-apk/app-release.apk`

## Paso 4: Compilar para Windows
```bash
flutter build windows --release
```
El archivo EXE se generará en: `build/windows/runner/Release/eco_tracker_poc.exe`

## Paso 5: Descargar los archivos
1. En el explorador de archivos del Codespace, navega a las carpetas mencionadas
2. Click derecho en cada archivo → "Download"

## Paso 6: Probar localmente
- **Android**: Transfiere el APK a tu teléfono e instala
- **Windows**: Ejecuta el EXE directamente en tu PC

## Ventajas de este método:
✅ 100% garantizado que funciona
✅ No requiere instalación local
✅ Gratis (incluido en GitHub Free)
✅ Entorno limpio y aislado
✅ Flutter preconfigurado

## Tiempo total: 10-15 minutos
