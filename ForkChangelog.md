My own setup and changes - use case is daily work driver running lightroom + davinci resolve. Dual boot into windows (separate drive) for occasional work

# Hardware
- Intel i9-10900k
- Gigabyte Z490 Vision D:
	- Audio: Realtek ALC1220-VB
	- 1Gbit Ethernet: Intel I219-V
	- 2.5Gbit Ethernet: Intel I225-V
	- Two USB-C/Thunderbolt 3 ports
- RAM: 64GB Corsair Vengeance LPX 64GB (2x32GB) DDR4 3600(PC4-28800) C18
- GPU: MSI Gaming X Trio RX 6900XT
  - DisplayPort to LG 31MU97-B
  - DisplayPort to motherboard displayport in
  - motherboard thunderbolt out connected to LG ultrafine 24"
- Caldigit TS3 Plus Thunderbolt 3 Dock
  - connected to motherboard thunderbolt out
- SolarFlare S6102 SFN5122F Dual Port 10Gbe PCIe Adapter SF329-9021-R7 
  - connected to unraid server via a DAC
- PSU: Corsair HXi 1000 (USB link not connected to avoid sleep-wake issues)

# Software
- MacOS Sonoma
- iStats Menus
- HWInfo

# Opencore specifics
- Currently using **iMac20,2** - `config_iMac20,2__iGPU display output`

# Differences from upstream

Changes on top of SchmockLord's upstream

- running `generate_config.sh <file>` against one of the config_X.plist will patch serials from `secrets.env` file. See `secrets.example` for inspiration on creating secrets file
- Enabled BrcmPatchRAM for Bluetooth support
- `UpdateSMBIOSMode=Custom` & `CustomSMBIOSGuid=true` for Windows boot support
- Added Solarflare 10GBe NIC support

# Fork ChangeLog

_reverse chronology: newest entries first_

#### Feb 2025
- sync to upstream [d9e9a82](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/d9e9a828662f77c7efb6cdbd5d76f27c4c13cc65) - OC 1.0.1
- Ready for Sequoia update
- Fixed missing Solarflare and BrcmPatchRAM kext config
- Updated BrcmPatchRAM to 2.6.9

#### Jun 2024
- sync to upstream [772f630](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/772f63027c796914b37a59e5a969b18a09a78f9b) - OC 0.9.3
- Ready for Sonoma update

#### Sep 2023
- sunc to upstream [d2516af](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/d2516afe348fca76a2f11d7c53e5692ba3648097) - OC 0.9.4

#### Jul 2023
- sync to upstream [d7b4e99](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/d7b4e999bed6e7d1c84e14ab19b614e5633cd6db) - OC 0.9.3
- added script to print currently booted OC version
- enabled RadeonSensor kexts
- Added Solarflare 10GBe kext
- add boot .contentVisibility to hide entries from bootloader

#### Apr 2023
- sync to upstream [8d64a47](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/8d64a476cf58d902f9e38d76bfee4e5fb56db852) - OC 0.8.9

#### Jan 2023
- sync to upstream [1e5abee](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/1e5abee05fd715b629caf4399089e65e29df9b22) - OC 0.8.8

#### Dec 2022
- sync to upstream [7d9d697](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/7d9d69783ea8305c98457e5339981319e00b99d6) - OC 0.8.7
- Ready for Ventura update

#### Oct 2022
- sync to upstream [4d337bd](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/4d337bdab756ad6b97c9943d937fdd573978458f) - OC 0.8.4
- Removed SSDT-RX580-Version 1.0.aml as I am no longer using it
- Reverted RadeonSensor and SMCRadeonGPU since upstream provides it now
- Switched to Upstream provided value for `SecureBootModel`

#### Mar 2022
- sync to upstream [9564b04](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/9564b0404ce24c19e4c687f097fd4db5dfabb4b0) - OC 0.7.9

#### Feb 2022
- sync to upstream [d9e0762](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/d9e07621cda13c18d292533f2941084843113ef9) - OC 0.7.8
- added generate_config.sh to patch secrets (serials) into config template

#### Jan 2022
- sync to upstream [df5513e](https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D/tree/df5513e1811da6849e543b1381786edf9f425de4) - OC 0.7.7
- added fork changelog
- added SSDT-RX580-Version 1.0.aml (RX580 optimizations)
- Added RadeonSensor and SMCRadeonGPU for RX6900XT support
- Added BrcmPatchRAM for Bluetooth support
- `UpdateSMBIOSMode=Custom` & `CustomSMBIOSGuid=true` for Windows boot support
- `SecureBootModel=Default` for Monterey software update support
