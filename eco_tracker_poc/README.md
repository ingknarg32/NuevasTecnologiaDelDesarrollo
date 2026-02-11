# Eco Tracker PoC - App Multiplataforma con DevOps Automático

Primera app multiplataforma (Android & Windows) con DevOps automático usando GitHub Actions.

## Fase 1: Preparación del Ambiente (En la Nube)

**No instalaremos nada. Todo será en el navegador.**

1. Entra a Project IDX: Ve a [idx.google.com](https://idx.google.com)
2. Crea un nuevo proyecto: Selecciona el template de Flutter
3. Configura el nombre: Ponle `eco_tracker_poc`
4. Esperar: IDX levantará una máquina virtual con Linux, Flutter y un simulador de Android en tu pestaña del navegador

## Fase 2: El Código (Single Codebase)

El código principal está en `lib/main.dart`. Esta app simple funciona en ambos sistemas:
- Permite registrar nombres de puntos
- Muestra una lista de los puntos registrados
- Interfaz básica con Material Design

## Fase 3: Configuración del DevOps (GitHub Actions)

La automatización está configurada en `.github/workflows/release.yml`:

- **Trigger**: Se activa automáticamente cuando creas un tag con formato `v*` (ej: `v1.0`)
- **Build**: Compila para Android (.apk) y Windows (.exe)
- **Release**: Sube los archivos compilados a los releases de GitHub

## Fase 4: El Despliegue (Push & Release)

### Conectar con GitHub:

```bash
git remote add origin [URL_DE_TU_REPO_VACIO_EN_GITHUB]
```

### Subir tu código:

```bash
git add .
git commit -m "PoC completa"
git push origin main
```

### Publicar (activa la compilación automática):

```bash
git tag v1.0
git push origin v1.0
```

## Fase 5: Entrega del Resultado

1. Ve a tu repositorio en GitHub
2. En la columna derecha verás una sección llamada "Releases"
3. Estarán los archivos:
   - `app-release.apk` (Para tu móvil Android)
   - `eco_tracker_poc.exe` (Para tu PC Windows)

## Arquitectura del Proyecto

```
eco_tracker_poc/
├── lib/
│   └── main.dart              # Código principal de la app
├── .github/
│   └── workflows/
│       └── release.yml        # Configuración de DevOps
├── pubspec.yaml               # Dependencias de Flutter
├── analysis_options.yaml      # Reglas de linting
└── README.md                  # Este archivo
```

## Características Técnicas

- **Framework**: Flutter (single codebase)
- **Plataformas**: Android & Windows
- **CI/CD**: GitHub Actions
- **Build Automático**: Activado por tags
- **Distribución**: GitHub Releases
- **Costo**: Totalmente gratuito

## Notas Importantes

- El workflow usa `windows-latest` para compilar ambas plataformas
- Los archivos se generan en las rutas estándar de Flutter
- El `GITHUB_TOKEN` se maneja automáticamente por GitHub Actions
- No requiere configuración manual de claves o secretos adicionales
