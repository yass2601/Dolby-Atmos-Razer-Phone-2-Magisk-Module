# Dolby Atmos Razer Phone 2 Magisk Module

## Descriptions
- An EQ ported from Razer Phone 2 (bolt)
- Doesn't support dynamic partition
- Spoofing product model/brand/device/manufacturer, may break some system apps.

## Requirements
- Android 9, 10, or 11
- 64 bit
- Magisk installed

## Installation Guide
- Remove another Dolby module
- Reboot
- Install via Magisk Manager only
- Reboot

## Optional
- If you using multiple audio mods (don't use both):
  - AML 4.0 supported
  - ACDB supported (Android 10 and bellow only for now)
- You can rename dax-default extension to use more bass enhancer boost. See /data/adb/modules_update/DolbyAtmos/system/vendor/etc/dolby/. Delete /data/vendor/dolby/dax_sqlite3.db if there before reboot.

## Troubleshootings
- If installation failed with "I/O error", then you need to disable DM-Verity of your ROM first.
- If SE policy patch doesn't work for your device, send logcats to dev, then try using force permissive method.
  Run at Terminal Emulator before flash:
  - `su`
  - `setprop dolby.force.permissive 1`
- If Dolby force close, just reinstall again.
- Make sure manifest.xml is patched correctly.
- Use Audio Compatibility Patch if you encounter processing problem.
- If you have some issues, like ringtones, alarm tones doesn't work, or calls opposite person doesn't hear, [do this fix.](https://t.me/audioryukimods/543)

## Report Guide
- Send me full logcats using this app https://play.google.com/store/apps/details?id=com.dp.logcatapp
- Send all "audio_effects" files in system/etc and vendor/etc
- If you don't do above, it will be closed immediately

## Telegram
- https://t.me/audioryukimods
- https://t.me/modsandco

## Donate
- https://www.paypal.me/reiryuki




           - Enjoy the Atmos 🎧 -
