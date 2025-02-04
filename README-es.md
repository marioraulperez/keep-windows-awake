# Script de PowerShell para Prevenir el modo Suspención (Sleep) de Windows

## Descripción

Este script de PowerShell utiliza `SetThreadExecutionState` de `kernel32.dll` para evitar que Windows entre en modo de suspensión o apague la pantalla. Es útil para mantener el sistema activo durante tareas prolongadas como descargas, renderizados o presentaciones.

## Características

- Evita que Windows entre en suspensión o apague la pantalla.
- Restaura el comportamiento normal de suspensión al salir del script.
- Fácil de usar y ligero.

## Cómo Funciona

**Instrucciones también disponibles en ****************[inglés](README.md)****************.**

El script define una pequeña clase en C# dentro de PowerShell que:

- Importa `SetThreadExecutionState` de `kernel32.dll`.
- Proporciona dos métodos:
  - `PreventSleep()`: Previene la suspensión y mantiene la pantalla encendida.
  - `AllowSleep()`: Restaura el comportamiento normal de suspensión.
- Evita la suspensión hasta que el usuario presione Enter.

## Uso

### 1. Guardar el Script

Guarde el script como `prevent_sleep.ps1`.

### 2. Ejecutar el Script

Abra una linea de comandos y ejecute los siguientes comandos para omitir posibles políticas de ejecución restringida y ejecutar el script:

```cmd
powershell -NoProfile -ExecutionPolicy Bypass -File .\prevent_sleep.ps1
```

### 3. Mantener el PC Activo

El script evitará la suspensión hasta que presione Enter.

### 4. Restaurar el Comportamiento de Suspensión

Cuando presione Enter, el sistema volverá a sus configuraciones normales de suspensión.

## Notas

- Este script **no** modifica la configuración del sistema de forma permanente.
- NO Requiere privilegios de Administrador para ejecutarse.
- Útil para evitar interrupciones durante tareas prolongadas.

## Licencia

Este proyecto está licenciado bajo la Licencia Pública General de GNU v3.0 (GPL-3.0). Eres libre de usar, modificar y distribuir este software bajo los términos de la licencia GPL-3.0.

