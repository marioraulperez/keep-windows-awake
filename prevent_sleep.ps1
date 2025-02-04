Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class PowerUtil {
    [DllImport("kernel32.dll", SetLastError = true)]
    public static extern uint SetThreadExecutionState(uint esFlags);

    public static void PreventSleep() {
        // ES_CONTINUOUS | ES_SYSTEM_REQUIRED | ES_DISPLAY_REQUIRED
        SetThreadExecutionState(0x80000002 | 0x00000001 | 0x00000002);
    }

    public static void AllowSleep() {
        // ES_CONTINUOUS
        SetThreadExecutionState(0x80000000);
    }
}
"@ -Language CSharp

# Prevent sleep
[PowerUtil]::PreventSleep()
Write-Output "Sleep prevention enabled. Press Enter to exit and allow sleep again."
Read-Host

# Allow sleep
[PowerUtil]::AllowSleep()
Write-Output "Sleep prevention disabled."
