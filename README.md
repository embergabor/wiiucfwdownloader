# wiiucfwdownloader - Wii U Custom Firmware Downloader
This script was created to simplify the SD card preparation process of installing a Custom Firmware on your Wii U. Please use the guide at [https://wiiu.hacks.guide](url) and follow it step by step. When you get to the SD Preparation step just run the wiiu_cfw.sh and select the CFW you want ('h' for Haxchi and 'm' for Mocha). The script will download all required files and create the folder structure that you can simply copy to your SD card.

# Requirements
- bash
- wget
- unzip

# Usage
1. Run the script `./wiiu_cfw.sh`
1. Enter the CFW you want to install (`h` for Haxchi and `m` for Mocha)
1. Wait for the process to finish
1. Copy the contents of the `sdcard/` folder (not the folder itself) to your SD card
1. Enjoy
