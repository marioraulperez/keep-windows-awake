# Prevent Windows Sleep PowerShell Script

## Description

This PowerShell script uses `SetThreadExecutionState` from `kernel32.dll` to prevent Windows from going to sleep and turning off the display. It allows users to keep their system awake while performing long-running tasks like downloads, renders, or presentations.

## Features

- Prevents Windows from sleeping or turning off the display.
- Restores default sleep behavior when the script exits.
- Easy to use and lightweight.

## How It Works

**Instrucciones también disponibles en ********[español](README-es.md)********.**

The script defines a small C# class within PowerShell that:

- Imports `SetThreadExecutionState` from `kernel32.dll`.
- Provides two methods:
  - `PreventSleep()`: Prevents sleep and keeps the display on.
  - `AllowSleep()`: Restores default sleep behavior.
- Prevents sleep until the user presses Enter.

## Usage

### 1. Save the Script

Save the script as `prevent_sleep.ps1`.

### 2. Run the Script

Run the following command to bypass potential restricted execution policies and execute the script:

```cmd
powershell -NoProfile -ExecutionPolicy Bypass -File .\prevent_sleep.ps1
```

### 3. Keep Your PC Awake

The script will prevent sleep until you press Enter.

### 4. Restore Sleep Behavior

When you press Enter, the system will return to its normal sleep settings.

## Notes

- This script does **not** modify system settings permanently.
- Does not requires Administrator privileges to run.
- Useful for avoiding interruptions during long-running tasks.

## License

This project is licensed under the GNU General Public License v3.0 (GPL-3.0). You are free to use, modify, and distribute this software under the terms of the GPL-3.0 license.

