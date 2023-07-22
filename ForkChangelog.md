My own setup and changes - use case is daily work driver running lightroom + davinci resolve. Dual boot into windows (separate drive) for occasion work

# Hardware
- Intel i9-10900k
- Gigabyte Z490 Vision D:
	- Audio: Realtek ALC1220-VB
	- 1Gbit Ethernet: Intel I219-V
	- 2.5Gbit Ethernet: Intel I225-V
	- Two USB-C/Thunderbolt 3 ports
- RAM: 64GB Corsair Vengeance LPX 64GB (2x32GB) DDR4 3600(PC4-28800) C18
- GPU1: MSI Gaming X Trio RX 6900XT
  - DisplayPort to LG 31MU97-B
  - DisplayPort to motherboard displayport in
- Caldigit TS3 Plus Thunderbolt 3 Dock
  - connected to motherboard thunderbolt out
  - connected to LG ultrafine 24" via thunderbolt out
- PSU: Corsair HXi 1000 (USB link not connected to avoid sleep-wake issues)

# Software
- MacOS ~Big Sur~ Monterey
- iStats Menus
- HWInfo

# Opencore specifics
- Currently using **iMac20,2** - `config_iMac20,2__iGPU display output`

# Differences from upstream

Changes on top of SchmockLord's upstream

- running `generate_config.sh <file>` against one of the config_X.plist will patch serials from `secrets.env` file. See `secrets.example` for inspiration on creating secrets file
- Added BrcmPatchRAM for Bluetooth support
- `UpdateSMBIOSMode=Custom` & `CustomSMBIOSGuid=true` for Windows boot support

# Fork ChangeLog
#### Oct 2022
- Removed SSDT-RX580-Version 1.0.aml as I am no longer using it
- Reverted RadeonSensor and SMCRadeonGPU since upstream provides it now
- Switched to Upstream provided value for `SecureBootModel`

#### Feb 2022
- added generate_config.sh to patch secrets (serials) into config template

#### Jan 2022
- added fork changelog
- added SSDT-RX580-Version 1.0.aml (RX580 optimizations)
- Added RadeonSensor and SMCRadeonGPU for RX6900XT support
- Added BrcmPatchRAM for Bluetooth support
- `UpdateSMBIOSMode=Custom` & `CustomSMBIOSGuid=true` for Windows boot support
- `SecureBootModel=Default` for Monterey software update support

#### Dec 2022
- sync to upstream [7d9d697](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/7d9d69783ea8305c98457e5339981319e00b99d6)
- OC 0.8.7
- Ready for Ventura update

#### Jul 2022
- sunc to upstream [d7b4e99](https://github.com/ashishpandey/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/commit/d7b4e999bed6e7d1c84e14ab19b614e5633cd6db)
- OC 0.9.3
- added script to print currently booted OC version
- enabled RadeonSensor kexts
- Added Solarflare 10GBe kext
