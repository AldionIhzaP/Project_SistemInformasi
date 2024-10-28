-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2024 pada 07.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(8, 'Cooler'),
(9, 'Headset Gaming'),
(10, 'Keyboard'),
(11, 'Kursi Gamers'),
(12, 'Memory Ram'),
(13, 'Monitor'),
(14, 'Motherboard'),
(15, 'Mouse'),
(16, 'Casing Pc'),
(17, 'Procecor'),
(18, 'Ssd'),
(19, 'Vga Card');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersedian_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersedian_stok`) VALUES
(11, 17, 'AMD RYZEN 5 4600G | Processor AMD AM4 Zen 2 Renoir 6 Cores 12 Threads', 1650000, 'LcIjlKk5qFN2AtS9Kr8W.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: PROCESSOR\r\nReady stock\r\n\r\nAMD RYZEN 5 4600G | Processor AMD AM4 Zen 2 Renoir 6 Cores 12 Threads\r\n\r\n\r\n𝗦𝗽𝗲𝗰𝗶𝗳𝗶𝗰𝗮𝘁𝗶𝗼𝗻𝘀 :\r\n\r\nPlatform\r\n- Desktop\r\n\r\nProduct Family\r\n- AMD Ryzen™ Processors\r\n\r\nProduct Line\r\n- AMD Ryzen™ 5 4000 G-Series Desktop Processors with Radeon™ Graphics\r\n\r\nFormer Codename\r\n- &quot;Renoir&quot;\r\n\r\nArchitecture\r\n- &quot;Zen 2&quot;\r\n\r\n# of CPU Cores\r\n- 6\r\n\r\nMultithreading (SMT)\r\n- Yes\r\n\r\n# of Threads\r\n- 12\r\n\r\nMax. Boost Clock\r\n- Up to 4.2GHz\r\n\r\nBase Clock\r\n- 3.7GHz\r\n\r\nL1 Cache\r\n- 384KB\r\n\r\nL2 Cache\r\n- 3MB\r\n\r\nL3 Cache\r\n- 8MB\r\n\r\nDefault TDP\r\n- 65W\r\n\r\nAMD Configurable TDP (cTDP)\r\n- 45-65W\r\n\r\nProcessor Technology for CPU Cores\r\n- TSMC 7nm FinFET\r\n\r\nPackage Die Count\r\n- 1\r\n\r\nUnlocked for Overclocking\r\n- Yes\r\n\r\nCPU Socket\r\n- AM4\r\n\r\nSupporting Chipsets\r\n- X570\r\n- X470\r\n- X370\r\n- B550\r\n- B450\r\n- B350\r\n- A520\r\n- A320\r\n\r\nCPU Boost Technology\r\n- Precision Boost 2\r\n\r\nInstruction Set\r\n- x86-64\r\n\r\nSupported Extensions\r\n- AES, AMD-V, AVX, AVX2, FMA3, MMX(+), SHA, SSE, SSE2, SSE3, SSE4.1, SSE4.2, SSE4A, SSSE3, x86-64\r\n\r\nMax. Operating Temperature (Tjmax)\r\n- 95°C\r\n\r\nLaunch Date\r\n- 7/21/2020\r\n\r\nOS Support\r\n- Windows 11 - 64-Bit Edition\r\n- Windows 10 - 64-Bit Edition\r\n- RHEL x86 64-Bit\r\n- Ubuntu x86 64-Bit\r\n- Operating System (OS) support will vary by manufacturer.', 'tersedia'),
(17, 8, 'DeepCool LE500 - 240mm AIO Liquid - CPU Cooler FIXED RGB', 875000, 'REgK3B8yw72RmLZNdMlP.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: COOLER\r\nReady stock\r\n\r\nDeepCool LE500 - 240mm AIO Liquid - CPU Cooler FIXED RGB\r\n\r\nApplication For\r\nIntelLGA1700/1200/1151/1150/1155A\r\nMDAM5/AM4\r\n\r\nTechnical Spec\r\nNet Weight 1238 g\r\nRadiator Dimensions 282×120×27 mm\r\nRadiator Material Aluminum\r\nTube length 415\r\nDimensions 91×80×52 mm\r\nPump Speed 2400 RPM±10%\r\nPump Noise 17.8 dB(A)\r\nPump Connector 3-pin\r\nPump Rated Voltage 12 VDC\r\nPump Rated Current 0.3 A\r\nPump Power Consumption 3.6 W\r\nFan Dimensions 120×120×25 mm\r\nFan Speed 500~2250RPM±10%\r\nFan Airflow 85.85 CFM\r\nFan Air Pressure 3.27 mmAq\r\nFan Noise ≤32.9 dB(A)\r\nFan Connector 4-pin PWM\r\nBearing Type Hydro Bearing\r\nFan Rated Voltage 12 VDC\r\nFan Rated Current 0.34 A\r\nFan Power Consumption 4.08 W\r\nLED Type 6-Color LED', 'tersedia'),
(18, 8, 'DEEPCOOL AG400 RGB LED Fixed FAN 12 CM AM5 / LGA1700 CPU Cooler', 300000, 'U2Ab3BPNTgfa5lB3qk3M.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: COOLER\r\nReady stock\r\n\r\nDeepcool AG400 LED Fixed CPU Cooler LGA 1700- AM5\r\n\r\nApplication For\r\nIntel LGA1700/1200/1151/1150/1155\r\nAMD AM5/AM4\r\n\r\nTechnical Spec\r\nProduct Dimensions 125×92×150 mm\r\nHeatsink Dimensions 120×92×150 mm\r\nNet Weight 614 g\r\nHeatpipe Ø6 mm×4 pcs\r\nFan Dimensions 120×120×25 mm\r\nFan Speed 500~2000 RPM±10%\r\nFan Airflow 75.89 CFM\r\nFan Air Pressure 2.53 mmAq\r\nFan Noise ≤31.6 dB(A)\r\nFan Connector 4-pin PWM\r\nBearing Type Hydro Bearing\r\nFan Rated Voltage 12 VDC\r\nFan Rated Current 0.28 A\r\nFan Power Consumption 3.36 W\r\nLED Type 6-Color LED', 'tersedia'),
(21, 12, 'G.Skill TRIDENT Z5 RGB DDR5 F5-6000J3636F16GX2-TZ -MEMORY RAM', 2175000, 'ux7d4u5pCj2rduXQ0Zue.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MEMORY RAM\r\nReady stock\r\n\r\nG.Skill DIMM DDR5 TZ5 RGB F5-6000J3636F16GX2-TZ5RS\r\n\r\nMemory Type\r\nDDR5\r\nCapacity\r\n32GB (16GBx2)\r\nMulti-Channel Kit\r\nDual Channel Kit\r\nTested Speed (XMP/EXPO)\r\n6000 MT/s\r\nTested Latency (XMP/EXPO)\r\n36-36-36-96\r\nTested Voltage (XMP/EXPO)\r\n1.35V\r\nRegistered/Unbuffered\r\nUnbuffered\r\nError Checking (ECC)\r\nNon-ECC\r\nSPD Speed (Default)\r\n4800 MT/s\r\nSPD Voltage (Default)\r\n1.10V\r\nFan Included\r\nNo\r\nWarranty\r\nLimited Lifetime\r\nFeatures\r\nIntel XMP 3.0 (Extreme Memory Profile) Ready', 'tersedia'),
(22, 12, 'MEMORY RAM PNY XLR8 GAMING RGB 16GB (2X8GB) DDR4 3200MHz - WHITE', 905000, '6Fm6kThI6CTxKN3IYcy6.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MEMORY RAM\r\nLIFE TIME WARRANTY BY BINTANG MAS REZEKI NUSANTARA\r\n\r\nFeatures\r\nPC Type/Memory Type Desktop DDR4\r\nCapacity 8GB\r\nChannel Type Single Channel Module\r\nFrequency Speed (JEDEC) 3200MHz (PC4-25600)\r\nCAS Latency CL16\r\nVoltage 1.35V\r\nXMP Support* Yes\r\nSpeed Compatibility 3200MHz, 3000MHz, 2933MHz, 2800MHz, 2666MHz, 2400MHz, 2133MHz\r\nOS Compatibility Windows 10 and older\r\n\r\nEPIC-X RGB™\r\nSynchronize with mainstream motherboards and control your color experience\r\n\r\n\r\nEXTREME PERFORMANCE\r\nPushes the limit with aggressive speed, low latency, and extreme overclocking capabilities\r\n\r\n\r\nXMP 2.0 SUPPORT\r\nSuper easy overlocking and runs at top speed', 'tersedia'),
(23, 12, 'ADATA DDR4 XPG SPECTRIX D50 PC25600 3200MHz 32GB (2X16GB)', 1570000, 'UM4X0KnISJocST3MjbkS.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MEMORY RAM\r\nReady stock\r\n\r\nADATA DDR4 XPG SPECTRIX D50 PC25600 3200MHz 32GB (2X16GB) RGB\r\n\r\nProduct Name : ADATA DDR4 XPG SPECTRIX D50 PC25600 3200MHz 32GB (2X16GB) Dual Channel - RGB\r\nBrand : ADATA\r\nSeries : SPECTRIX D50\r\nCapacity : 32GB (2X16GB)\r\nType : 288-pin DDR4 DIMM\r\nSpeed : DDR4 PC25600 (3200MHz )\r\nCas Latency : CL 16\r\nVoltage : 1.35V\r\nTiming : CL 16-20-20\r\nWarranty : Limited Lifetime Warranty', 'tersedia'),
(24, 14, 'Motherboard Gigabyte H410M K - LGA1200 DDR4', 1050000, 'k0jfiYcHRuJjw8OuqtFf.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MOTHERBOARD\r\nReady stock\r\n\r\nMotherboard Gigabyte H410M K - LGA1200 DDR4\r\n\r\nSpecifications\r\nCPU\r\nLGA1200 package: Support 10th Generation Intel Core i9 processors/ Intel Core i7 processors/Intel Core i5 processors/Intel Core i3 processors/Intel Pentium processors/Intel Celeron processors\r\nL3 cache varies with CPU\r\nIntel H470 Express Chipset\r\nMemory\r\n10th Generation Intel Core i9/i7 processors:\r\nSupport for DDR4 2933/2666/2400/2133 MHz memory modules\r\n10th Generation Intel Core i5/i3/Pentium /Celeron processors:\r\nSupport for DDR4 2666/2400/2133 MHz memory modules\r\n2 x DDR4 DIMM sockets supporting up to 64 GB (32 GB single DIMM capacity) of system memory\r\nDual channel memory architecture\r\nSupport for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\nSupport for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules\r\nSupport for Extreme Memory Profile (XMP) memory modules\r\nOnboard Graphics\r\n1 x HDMI port, supporting a maximum resolution of 4096x2160@30 Hz\r\nSupport for HDMI 1.4 version and HDCP 2.3.', 'tersedia'),
(25, 14, 'MOTHERBOARD GIGABYTE B760M AORUS ELITE AX DDR5 LGA1700', 3150000, '9zymQE6ZMrGuyKstsXIk.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MOTHERBOARD\r\nReady stock\r\n\r\nCPU\r\nLGA1700 socket: Support for the 13th and 12th Generation Intel® Core™, Pentium® Gold and Celeron® Processors*\r\nL3 cache varies with CPU\r\n* Please refer to &quot;CPU Support List&quot; for more information.\r\n\r\nChipset : Intel® B760 Express Chipset\r\n\r\nMemory\r\nSupport for DDR5 7600~5200(O.C.) / 4800 / 4000 MT/s memory modules\r\n4 x DDR DIMM sockets supporting up to 128 GB (32 GB single DIMM capacity) of system memory\r\nDual channel memory architecture\r\nSupport for Extreme Memory Profile (XMP) memory modules\r\n(Please refer &quot;Memory Support List&quot; for more information.)\r\n\r\nOnboard Graphics\r\nIntegrated Graphics Processor-Intel® HD Graphics support:\r\n1 x HDMI port, supporting a maximum resolution of 4096x2160@60 Hz\r\n* Support for HDMI 2.0 version and HDCP 2.3.\r\n1 x DisplayPort, supporting a maximum resolution of 4096x2304@60 Hz\r\n* Support for DisplayPort 1.2 version and HDCP 2.3\r\n(Graphics specifications may vary depending on CPU support.)\r\n\r\nWireless Communication module\r\nIntel® Wi-Fi 6E AX211\r\nWIFI a, b, g, n, ac, ax, supporting 2.4/5/6 GHz carrier frequency bands\r\nBLUETOOTH 5.3\r\nSupport for 11ax 160MHz wireless standard and up to 2.4 Gbps data rate\r\n(Actual data rate may vary depending on environment and equipment.)\r\n\r\nStorage Interface\r\nCPU:\r\n1 x M.2 connector (Socket 3, M key, type 2280 PCIe 4.0 x4/x2 SSD support) (M2A_CPU)\r\nChipset:\r\n1 x M.2 connector (Socket 3, M key, type 22110/2280 PCIe 4.0 x4/x2 SSD support) (M2P_SB)\r\n4 x SATA 6Gb/s connectors\r\nRAID 0, RAID 1, RAID 5, and RAID 10 support for SATA storage devices\r\n\r\nOperating System\r\nSupport for Windows 11 64-bit\r\nSupport for Windows 10 64-bit\r\n\r\nForm Factor\r\nMicro ATX Form Factor; 24.4cm x 24.4cm', 'tersedia'),
(26, 14, 'Biostar B560MHP - Micro ATX Motherboard LGA 1200', 1099000, '46DJMNIZxQhx3m7pTp53.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: MOTHERBOARD\r\nREADY STOCK GARANSI RESMI NJT 3 TAHUN\r\n\r\nSupports 10th /11th Generation Intel Core™ Processor\r\nIntel B560 single chip architecture\r\nSupports 2-DIMM DDR4- 3200/ 2933/ 2666/ 2400/ 2133/ 1866 up to 64 GB Memory\r\nSupports PCIe 4.0\r\nSupports PCIe M.2 (32Gb/s)\r\nSupports USB 3.2 Gen1\r\n\r\nCPU SUPPORT\r\nSocket 1200 for 10th / 11th Gen Intel Core™, Pentium and Celeron processors\r\n\r\nMEMORY\r\nSupports Dual Channel DDR4 1866/ 2133/ 2400/ 2666/ 2933/ 3200\r\n2 x DDR4 DIMM Memory Slot, Max. Supports up to 64 GB Memory\r\nEach DIMM supports non-ECC 4/8/16/32GB DDR4 module\r\n\r\nINTEGRATED VIDEO\r\nSupports DX12\r\nSupports HDCP\r\n\r\nSTORAGE\r\n4 x SATA III Connector (6Gb/s)\r\n1 x M.2 (M Key) Socket:\r\nSupports M.2 Type 2242/ 2260/ 2280 SSD module.\r\nSupports PCIe 3.0 x 4 (32Gb/s) &amp; SATA III (6Gb/s) SSD\r\n\r\nLAN\r\nIntel I219V\r\n10/ 100/ 1000 Mb/s auto negotiation, Half / Full duplex capability\r\n\r\nAUDIO CODEC\r\nRealtek ALC887\r\n7.1 Channels, High Definition Audio', 'tersedia'),
(27, 19, 'VENOMRX GeForce GT730 128 bit ddr3 4GB', 595000, '4vNKRElGBVbck20pjYUp.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: VGA CARD\r\nReady stock\r\n\r\nVENOMRX GeForce GT730 128 bit ddr3 4GB\r\n\r\nSpesifikasi\r\n\r\nGRAPHICS ENGINE NVIDIA Geforce GT730\r\nBUS STANDART PCIE Express 2.0\r\nVIDEO MEMORY DDR3 4096MB\r\nBase Clock 700MHz\r\nMEMORY CLOCK 1333MHz\r\nRAMDAC 400MHZ\r\nMEMORY INTERFACE 128-Bit\r\nD-SUB MAX RESOLUTION 2048 x 1536\r\nDVI MAX RESOLUTION 2560 x 1600\r\nDVI OUTPUT Yes x 1\r\nVGA OUTPUT Yes x 1\r\nHDMI OUTPUT Yes x 1\r\nHDCP SUPPORTS Yes\r\nLow Profile Bracket Bundled Yes (1 slots x 2)\r\nAccessories 1 x Quick Guide , 1 x Color Box', 'tersedia'),
(28, 19, 'ZOTAC GAMING GeForce RTX 4080 16GB AMP Extreme AIRO', 23899000, 'WZTPEOt9ZT76fDDLbTLa.png', 'Kondisi: Baru\r\nWaktu Preorder: 7 Hari\r\nMin. Pemesanan: 1 Buah\r\nEtalase: VGA CARD\r\nPRODUCT SPECIFICATIONS\r\nSpecifications\r\nGPUGeForce RTX 4080 16GB\r\nCUDA cores9728\r\nVideo Memory16GB GDDR6X\r\nMemory Bus256-bit\r\nEngine ClockBoost: 2565 MHz\r\nMemory Clock22.4 Gbps\r\nPCI Express4.0 16x\r\nDisplay Outputs3 x DisplayPort 1.4a (up to 7680x4320@60Hz)\r\n1 x HDMI® Connector*\r\n*Supports 4K 120Hz HDR, 8K 60Hz HDR, and Variable Refresh Rate as specified in the HDMI 2.1a Specification\r\nHDCP Support2.3\r\nMulti Display CapabilityQuad Display\r\nRecommended Power Supply750W\r\nPower Consumption320W\r\nPower Input1 x 12VHPWR\r\nDirectX12 Ultimate\r\nOpenGL4.6\r\nCoolingIceStorm 2.0\r\nSlot Size3.5 slot\r\nSLIN/A\r\nSupported OSWindows 11 / 10 (64-bit, v1809 November 2018 or later)\r\nCard Length355.5mm x 149.6mm x 72.1mm / 14&quot; x 5.9&quot; x 2.8&quot;\r\nAccessoriesGPU Support Stand\r\n3-pin RGB Header Cable\r\n3x 8-pin-to-12VHPWR cable\r\nManual24', 'tersedia'),
(29, 19, 'VGA MSI GeForce GTX 1650 VENTUS XS 4GB DDR6 OC D6 VENTUS XS OC', 2290000, 'eHRbU8WPFng63Bhv7ICp.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: VGA CARD\r\nREADY STOCK\r\n\r\nVGA MSI GeForce GTX 1650 D6 VENTUS XS V2\r\n\r\nGARANSI RESMI 2 TAHUN\r\n\r\nMODEL NAME\r\nGRAPHICS PROCESSING UNIT\r\nINTERFACE\r\nCORES\r\nCORE CLOCKS\r\nMEMORY SPEED\r\nMEMORY\r\nMEMORY BUS\r\nOUTPUT\r\nHDCP SUPPORT\r\nPOWER CONSUMPTION\r\nPOWER CONNECTORS\r\nRECOMMENDED PSU\r\nCARD DIMENSION (MM)\r\nWEIGHT (CARD / PACKAGE)\r\nDIRECTX VERSION SUPPORT\r\nOPENGL VERSION SUPPORT\r\nAFTERBURNER OC\r\nMAXIMUM DISPLAYS\r\nVR READY\r\nG-SYNC® TECHNOLOGY\r\nADAPTIVE VERTICAL SYNC\r\nDIGITAL MAXIMUM RESOLUTION\r\nGeForce® GTX 1650 D6 VENTUS XS V2\r\nNVIDIA® GeForce® GTX 1650\r\nPCI Express x16 3.0\r\n896 Units\r\nBoost: 1590 MHz\r\n12 Gbps\r\n4GB GDDR6\r\n128-bit\r\nDisplayPort x 1(v1.4a)\r\nHDMI x 1(Supports 4K@60Hz as specified in HDMI 2.0b)\r\nDL-DVI-D x 1\r\nY\r\n75 W\r\n6-pin x1\r\n300 W\r\n180 x 115 x 42 mm\r\n520 g / 724 g\r\n12 API\r\n4.6\r\nY\r\n3\r\nY\r\nY\r\nY\r\n7680 x 4320', 'tersedia'),
(30, 13, 'LED MONITOR AOC 24B1XH2 23.8&quot; IPS 100Hz 4Ms FHD', 1400000, 'Z4DYGyGVlgiXMauQYI7x.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: LED MONITOR\r\nReady stock\r\n\r\nModel name: 24B1XH2\r\nPanel: 23.8&quot; (IPS)\r\nPixel Pitch (mm): 0.2745 (H) × 0.2745 (V)\r\nEffective Viewing Area (mm): 527.04 (H) × 296.46 (V)\r\nBrightness (typical): 250 cd/m²\r\nContrast Ratio: 1300:1 (Typical) 20 Million : 1(DCR)\r\nResponse Time: 4ms (GtG)\r\nViewing Angle: 178° (H) / 178° (V) (CR &gt; 10)\r\n\r\nOptimum Resolution:\r\n1920 × 1080 @ 100Hz – HDMI\r\n1920 × 1080 @ 60Hz – VGA\r\n\r\nDisplay Colors: 16.7 Million\r\nSignal Input : VGA x1, HDMI 1.4 x1\r\nHDCP Version : HDMI 1.4\r\nUSB Hub: No\r\nPower Supply: 19VDC, 1.31A\r\nPower Consumption (typical): 22W\r\nSpeakers: no\r\nLine in &amp; Earphone: Earphone\r\nWall-Mount: 75mm x 75mm\r\nAdjustable Stand: Tilt: -5° ~ 23°\r\nProduct without Stand (mm): 320.7 (H) × 540.8 (W) × 37.1 (D)\r\nProduct with Stand (mm): 419.9 (H) × 540.8 (W) × 186.8 (D)\r\nProduct without Stand (kg): 2.73\r\nProduct with Stand (kg): 4.5\r\nCabinet Color: Black\r\nRegulatory Approvals: CE / FCC', 'tersedia'),
(31, 13, 'LED Monitor LENOVO D19-10 18.5Inch TN HD HDMI VGA - Lenovo D19-10', 1195000, 'b3e4bQFTZodx7aEYjRbc.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: LED MONITOR\r\nReady stock\r\n\r\nLED Monitor LENOVO D19-10 18.5Inch TN HD HDMI VGA - Lenovo D19-10\r\n\r\n\r\nSpesifikasi Teknis\r\nUkuran Panel : 18,5 inci\r\nResolusi : 1366 x 768\r\nTipe Panel : TN\r\nCahaya latar : WLED\r\nKecerahan : 200 cd/m²\r\nRasio Aspek : 16:9\r\nWaktu Respons (abu-abu ke abu-abu) : 5 ms (mode normal)\r\nRasio Kontras (standar) : 600:1\r\nRasio Kontras Dinamis (standar) : 3M:1\r\nKonektivitas :\r\n1 x VGA\r\n1 x HDMI 1.4\r\nSudut Pandang (H x V) : 90°/65°\r\nGamut Warna : 72% NTSC\r\nDukungan Warna : 16,7 Juta\r\nAnti-Silau : Ya\r\nPenyangga : Sudut Kemiringan(-5°/22°)\r\nKapabilitas Pemasangan VESA : Ya, 100 x 100 mm\r\nTÜV Low Blue Light : Ya\r\nSertifikasi :\r\nPeringkat ENERGY STAR®: 7.1\r\nEPEAT™: Bronze\r\nRoHS\r\nPemakaian Daya :\r\nStandar/Maksimum: 9 W/12 W\r\nMode Penonaktifan: &lt;0,3 W\r\nMode Tidur/Nonaktif: &lt;0,3 W', 'tersedia'),
(32, 13, 'ASUS TUF GAMING VG259QM HDR Monitor - 25 Inch Full HD 280Hz IPS 1ms', 5150000, '5jIG1AgXZHjYH2vlfkuh.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: LED MONITOR\r\nREADY STOCK\r\n\r\nASUS TUF GAMING VG259QM HDR Monitor - 25 Inch Full HD 280Hz IPS 1ms\r\n\r\nTUF Gaming VG259QM Gaming Monitor – 24.5 inch Full HD (1920x1080), Fast IPS, Overclockable 280Hz (Above 240Hz, 144Hz), 1ms (GTG), Extreme Low Motion Blur Sync, G-SYNC Compatible, DisplayHDR™ 400\r\n24.5-inch Full HD (1920 x 1080) Fast IPS gaming monitor with ultrafast 280*Hz refresh rate designed for professional gamers and immersive gameplay\r\nFast IPS technology enables a 1ms response time (GTG) for sharp gaming visuals with high frame rates.\r\nG-SYNC Compatible ready, delivering a seamless, tear-free gaming experience by enabling VRR (variable refresh rate) by default.\r\nASUS Extreme Low Motion Blur Sync (ELMB SYNC) technology enables ELMB together with G-SYNC Compatible, eliminating ghosting and tearing for sharp gaming visuals with high frame rates.\r\nHigh Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification\r\n\r\nDisplay\r\nPanel Size: Wide Screen 24.5&quot;(62.23cm) 16:9\r\nColor Saturation : 72% NTSC\r\nPanel Type : IPS\r\nTrue Resolution : 1920x1080\r\nDisplay Viewing Area(HxV) : 543.744 x 302.616 mm\r\nDisplay Surface : Non-glare\r\nPixel Pitch : 0.2832 mm\r\nBrightness(Max) : 400 cd/㎡\r\nContrast Ratio (Max) : 1000:1\r\nViewing Angle (CR≧10) : 178°(H)/178°(V)\r\nResponse Time : 1ms (GTG, Ave.)\r\nDisplay Colors : 16.7M\r\nFlicker free : Yes\r\nRefresh Rate(max) : 280Hz\r\n\r\nAudio Features\r\nStereo Speakers : 2W x 2 Stereo RMS\r\n\r\nI/O Ports\r\nSignal Input : HDMI(v2.0) x2, DisplayPort 1.2\r\nEarphone jack : 3.5mm Mini-Jack\r\n\r\nDimensions\r\nPhys. Dimension with Stand(WxHxD):\r\n563 x (356~486) x 211 mm\r\nPhys. Dimension without Stand (WxHxD):\r\n563x 329 x52 mm\r\nBox Dimension (WxHxD):\r\n664 x 415 x 221 mm\r\n\r\nWeight\r\nNet Weight (Esti.) : 5.1 kg\r\nWeight without stand : 2.9 kg\r\nGross Weight (Esti.) : 7.5 kg\r\n\r\nAccessories\r\nPower cord\r\nPower adapter\r\nDisplayPort cable (Optional)\r\nQuick start guide\r\nHDMI cable (Optional)\r\nWarranty Card', 'tersedia'),
(33, 10, 'Digital Alliance Keyboard Gaming Meca Fighter Ice TKL SE Grey White - SWITCH BLUE', 330000, 'ps5ITEsxEGt2XHIvHhVT.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\nDigital Alliance Keyboard Gaming Meca Fighter Ice TKL SE Grey White\r\n\r\n\r\nSpecification\r\n\r\nModel Meca Fighter Ice TKL SE\r\nType Mechanical\r\nColor Grey White\r\n\r\nMaterial\r\nTop Cover ABS\r\nBottom Cover ABS\r\n\r\nWeight 720g\r\nDimension 356 x 168 x 33mm\r\nInterface USB Gold Plated\r\nKeycaps Double Injection, Dual color full Anti Ghosting\r\nCable Length 1.8m Cable PVC\r\nBacklight Rainbow\r\nBacklight Effect LED with 10 Mode\r\n\r\n\r\nSWITCH\r\n\r\nSwitch Type Mechanical\r\nSwitch Name Outemu\r\nSwitch Color Blue, Red, Black\r\nSpecial Features Removable Switch, Splash Waterproof\r\nLifespan 50 Million Clicks Lifetime\r\n\r\nDalam paket pembelian Meca Fighter Ice TKL SE Terdapat\r\n\r\n*1 Unit Keyboard\r\n* Buku Manual Garansi\r\n* 1 Switch Cadangan\r\n* Keypuller\r\n* Switch Puller', 'tersedia'),
(34, 10, 'Digital Alliance Keyboard Gaming Meca Fighter Ice TKL SE White Grey - SWITCH BLUE', 330000, 'oSa2qYGbp58E46Z4h9jV.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\nDigital Alliance Keyboard Gaming Meca Fighter Ice TKL SE White Grey\r\n\r\nSpecification\r\n\r\nModel Meca Fighter Ice TKL SE\r\nType Mechanical\r\nColor White Grey\r\n\r\nMaterial\r\nTop Cover ABS\r\nBottom Cover ABS\r\n\r\nWeight 720g\r\nDimension 356 x 168 x 33mm\r\nInterface USB Gold Plated\r\nKeycaps Double Injection, Dual color full Anti Ghosting\r\nCable Length 1.8m Cable PVC\r\nBacklight Rainbow\r\nBacklight Effect LED with 10 Mode\r\n\r\n\r\nSWITCH\r\n\r\nSwitch Type Mechanical\r\nSwitch Name Outemu\r\nSwitch Color Blue, Red, Black\r\nSpecial Features Removable Switch, Splash Waterproof\r\nLifespan 50 Million Clicks Lifetime\r\n\r\nDalam paket pembelian Meca Fighter Ice TKL SE Terdapat\r\n\r\n*1 Unit Keyboard\r\n* Buku Manual Garansi\r\n* 1 Switch Cadangan\r\n* Keypuller\r\n* Switch Puller', 'tersedia'),
(35, 10, 'IKBC X GUNDAM 0078 C210 PBT Double shoot B/R Switch,Mechanical keyb', 2125000, 'UFKogYsizYRVUOyzaqJ1.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\n- IKBC X GUNDAM 0078 C210 PBT Double shoot RED Switch,Mchanical keyb\r\n\r\n- IKBC X GUNDAM 0078 C210 PBT Double shoot BLUE Switch,Mchanical keyb\r\n\r\n\r\nModel\r\nBrand iKBC\r\nName GUNDAM RX-78-2\r\nModel 108 Wired+ Mouse\r\nKeyboard\r\nKeyboard Interface USB\r\nDesign Style Gaming\r\nNormal Keys 108\r\nMechanical Keyboard Yes\r\nKey Switch Type Cherry MX Red\r\nKeyboard Color Blue / White\r\nType Wired\r\nAdditional Information\r\nDate First Available August 10, 2021', 'tersedia'),
(36, 15, 'Mouse DA Digital Alliance SENA | Ergonomic Mouse Gaming', 80000, 'yJuJH6aV3PnTqFCyb55H.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nReady stock\r\n\r\nSpesifikasi :\r\nMOUSE\r\nModel Sena\r\nColor Black\r\nShape Ergonomic Gaming\r\nNo. of Buttons 6\r\nUSB Cable Length 150 cm\r\nWeight 81 g (Without Cable)\r\nDimension 122 (L) x 64 (W) x 38 (H) mm\r\nDPI 1.200, 1.800, 2.400, 3.600\r\nPolling Rate 125Hz\r\nFrame Rate 4.000 fps\r\nTracking Speed 30 ips\r\nAcceleration 8g', 'tersedia'),
(37, 15, 'DA Gaming Mouse Luna Honey Black', 199, '5Tz4tgOGekM6QB4VYZbi.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\nDA Gaming Mouse Luna Honey Black\r\n\r\n\r\nSPECIFICATION\r\n\r\nModel DA Gaming Mouse Luna Honey\r\nColor Black\r\nShape Ergonomic Design\r\nNo. of Buttons 7\r\nUSB Cable Length 1.75 m\r\nGold-Plated USB Yes\r\nLight Color RGB\r\nWeight 75 g\r\nSwitch Huano\r\nSwitch Life 10 Million Click Times\r\nDimension (L x W x H) 123 x 68 x 40 mm\r\nSENSOR\r\nSensor Name Sunplus 6651B\r\nSensor Type Optical\r\nDPI up to 6400 DPI\r\nMaximum Frame Rate 6000 fps\r\nMaximum Polling Rate 1000 Hz\r\nMaximum Tracking Speed 66 ips\r\nMaximum Acceleration 22.5 g', 'tersedia'),
(38, 15, 'Digital Alliance DA AIR RGB Mouse Gaming Wireless B/W', 285000, 'z1pEEEmOk5o3a6Ee7xyV.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nMOUSE\r\nModel Air\r\nType Wireless\r\nColor White / Black\r\nShape Asymmetric Ergonomic Design, Palm Grip\r\nNo. of Buttons 6\r\nUSB Cable Length 180 cm\r\nLight Color RGB\r\nSwitch Huano\r\nSwitch Life 20 Million Click Lifecycle\r\nWeight 96 g\r\nDimension 124 (L) x 66 (W) x 43 (H) mm\r\nSENSOR\r\nSensor Name Pixart PMW 3325 (Energy-efficient Editon)\r\nSensor Type Optical\r\nDPI up to 10.000 DPI (by Software)\r\nMax. Polling Rate 1.000 Hz\r\nMax. Tracking Speed 100 ips\r\nMax. Acceleration 20g', 'tersedia'),
(39, 16, 'PARADOX GAMING RAKHIE MATX include 3 Fan RGB', 515, '5CIh9cC9MFa8pdxGyoxz.jpg', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: CASING\r\nReady stock\r\n\r\nPARADOX GAMING RAKHIE Include 3 Fan RGB\r\n\r\nDIMENSIONS 335*216*385mm\r\nMATERIAL SPCC 0.50mm WITH SLIDE WAY TEMPERED GLASSS &amp; ANTI DUST FILTER\r\nM/B TYPE MICRO ATX, MINI ITX\r\nI/O 1x USB C + 2x USB3.0 +HD AUDIO\r\nEXPANSION SLOT 4\r\nLED STRIPS -\r\nGPU MAX 330mm\r\nCPU MAX 175mm\r\nPSU -\r\nFAN SLOTS Front PRE INSTALLED 2 x 120mm RGB FAN\r\nTop 2 x 120mm / 2 x 140mm\r\nRear PRE INSTALLED 1 x 120mm RGB FAN', 'tersedia'),
(40, 16, 'CASING VENOM RX - VENOMRX MAKAROVE - ATX - INCLUDE 4 FAN RGB', 475, 'VZtXcuX3Oyvv9cc66A8y.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: CASING\r\nSPECIFICATION\r\nProduct Dimension L380mm x W206mm x H456mm\r\nPackage Dimension L490mm x W244mm x H430mm\r\nSide Window Panel Tempered Glass\r\nStructure Coating Black\r\nColor Black\r\nMainboard Size ATX / Micro-ATX / Mini-ITX\r\nPSU Model ATX\r\nCable Management Yes\r\nScrewless Yes\r\n\r\n\r\nKEY FEATURES\r\nSize : Mid Tower\r\nPower Supply Mounted : Bottom\r\nCPU Cooler Height : Up to 160mm\r\nVGA Card Leght : Up to 320mm\r\nExternal 5.25” Drive Bays : None\r\nInternal 5.25” Drive Bays : NONE\r\nInternal 3.5” Drive Bays : 2\r\nInternal 2.5” Drive Bays : 3\r\nExternal PCI Slots : 7\r\nFront Ports : USB 3.0x1, USB 2.0x2, HD Audiox1, Micx1\r\nFront Fans : 3x120mm RGB Fixed Fans (Included)\r\nTop Fans : 2X120mm (Optional)\r\nRear Fans : 1x120mm RGB Fixed Fans (Included)\r\nRadiator Supports : Front 240mm, Rear 120mm', 'tersedia'),
(41, 16, 'VenomRX VECNA ATX Include 3 FAN ARGB - MESH FRONT PANEL', 530000, 'PpZnAU1QUrszUoL5OT9c.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: CASING\r\nSPECIFICATION\r\nProduct Dimension L410mm x W210mm x H450mm\r\nPackage Dimension L466mm x W263mm x H430mm\r\nSide Window Panel Tempered Glass\r\nStructure Coating Black\r\nColor Black\r\nMainboard Size ATX / Micro-ATX / Mini-ITX\r\nPSU Model ATX\r\nCable Management Yes\r\nScrewless Yes\r\n\r\n\r\nKEY FEATURES\r\nSize : Mid Tower\r\nPower Supply Mounted : Bottom\r\nCPU Cooler Height : Up to 165mm\r\nVGA Card Leght : Up to 360mm\r\nExternal 5.25” Drive Bays : None\r\nInternal 5.25” Drive Bays : NONE\r\nInternal 3.5” Drive Bays : 2\r\nInternal 2.5” Drive Bays : 3\r\nExternal PCI Slots : 7\r\nFront Ports : USB 3.0x1, USB 2.0x2, HD Audiox1, Micx1\r\nFront Fans : 3x120mm A-RGB Fans (Included)\r\nTop Fans : 2X120mm (Optional)\r\nRear Fans : 1x120mm (Optional)\r\nRadiator Supports : Front 240mm, Rear 120mm', 'tersedia'),
(42, 18, 'PNY SSD CS900 2.5\' SATA III - 1 TB', 980000, 'LkS5V7Psrtcr30uGdeP5.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: SSD\r\n• Fitur yang 120GB\r\n-------------\r\nKapasitas : 120GB\r\nFaktor Bentuk : 2.5 inch\r\nHeight : 7mm\r\nAntarmuka : SATA-III 6Gb/s; Kompatible dengan SATA-II 3Gb/s\r\nKecepatan Baca Sekuensial Maks : 515 MB/s\r\nKecepatan Tulis Sekuensial Maks : 490 MB/s\r\nGaransi : 3 Tahun\r\n\r\nSpesifikasi :\r\n• Fitur yang 240GB\r\n-------------\r\nKapasitas : 240GB\r\nFaktor Bentuk : 2.5 inch\r\nHeight : 7mm\r\nAntarmuka : SATA-III 6Gb/s; Kompatible dengan SATA-II 3Gb/s\r\nKecepatan Baca Sekuensial Maks : 535 MB/s\r\nKecepatan Tulis Sekuensial Maks : 500 MB/s\r\nGaransi : 3 Tahun\r\n\r\n• Fitur yang 480GB\r\n-------------\r\nKapasitas : 480GB\r\nFaktor Bentuk : 2.5 inch\r\nHeight : 7mm\r\nAntarmuka : SATA-III 6Gb/s; Kompatible dengan SATA-II 3Gb/s\r\nKecepatan Baca Sekuensial Maks : 550 MB/s\r\nKecepatan Tulis Sekuensial Maks : 500 MB/s\r\nGaransi : 3 Tahun\r\n\r\n• Fitur yang 1TB\r\n-------------\r\nKapasitas : 1TB\r\nFaktor Bentuk : 2.5 inch\r\nHeight : 7mm\r\nAntarmuka : SATA-III 6Gb/s; Kompatible dengan SATA-II 3Gb/s\r\nKecepatan Baca Sekuensial Maks : 535 MB/s\r\nKecepatan Tulis Sekuensial Maks : 515 MB/s\r\nGaransi : 3 Tahun', 'tersedia'),
(43, 18, 'ACE POWER A1 128GB 2.5&quot; SATA 6Gb/s SSD', 320000, '9X2INGYQGDQDrJtYKbhP.png', '                                                Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: SSD\r\nREADY STOCK\r\n\r\nACE POWER A1 128GB 2.5&quot; SATA 6Gb/s SSD\r\n\r\n\r\nSPECIFICATION:\r\n\r\nSSD Ace Power 128GB (AP-SSD-A1-128)\r\nKapasitas : 128 GB\r\nAntar-muka : SATA 6Gbps\r\nForm Faktor : 2.5 inch\r\nKontroler : Silicon Motion SM2258XT\r\nNAND : 3D TLC\r\nMax Seq. Read Speed : hingga 550 MB/s\r\nMax Seq. Write Speed : hingga 430 MB/s\r\nMax Random 4K Read/Write : 61K IOPS / 70K IOPS\r\nTotal Bytes Written (TBW) : 60TB\r\nM.T.B.F : 2.000.000 Jam                                        ', 'tersedia'),
(44, 18, 'Intel SSD Series 670p M.2 NVMe PCIe 3.0 x4 - 1TB (R/W:3500/2500MBps)', 2050000, 'BE9wV785L1yVewH41ivC.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: SSD\r\nREADY STOCK\r\n\r\nIntel SSD 670P series 1TB NU010TZX1\r\n\r\nGARANSI RESMI WPG / INTEL INDONESIA\r\n\r\nEssentials\r\nProduct Collection\r\nIntel® SSD 6 Series\r\n\r\nCode Name\r\nProducts formerly Keystone Harbor\r\n\r\nCapacity\r\n1 TB\r\n\r\nStatus\r\nLaunched\r\n\r\nLaunch Date\r\nQ1 21\r\n\r\nLithography Type\r\n3D4 QLC\r\n\r\nUse Conditions\r\nPC/Client/Tablet\r\n\r\nRecommended Customer Price\r\n$129.00\r\nPerformance Specifications\r\nSequential Bandwidth - 100% Read (up to)\r\n3500 MB/s\r\n\r\nSequential Bandwidth - 100% Write (up to)\r\n2500 MB/s\r\n\r\nPower - Active\r\n80 mW\r\n\r\nPower - Idle\r\n25 mW\r\n\r\nReliability\r\nVibration - Operating\r\n2.17 GRMS (5-700 Hz) Max\r\n\r\nVibration - Non-Operating\r\n3.13 GRMS (5-800 Hz) Max\r\n\r\nShock (Operating and Non-Operating)\r\n1,000 G (Max) at 0.5 msec Operating---1,500 G (Max) at 0.5 msec non-operating\r\n\r\nOperating Temperature Range\r\n0°C to 70°C\r\n\r\nOperating Temperature (Maximum)\r\n70 °C\r\n\r\nOperating Temperature (Minimum)\r\n0 °C\r\n\r\nEndurance Rating (Lifetime Writes)\r\n370 TBW\r\n\r\nMean Time Between Failures (MTBF)\r\n1.6 million hours\r\n\r\nUncorrectable Bit Error Rate (UBER)\r\n&lt;1 sector per 10^15 bits read\r\n\r\nWarranty Period\r\n5 yrs\r\n\r\nPackage Specifications\r\nForm Factor\r\nM.2 22 x 80mm\r\n\r\nInterface\r\nPCIe 3.0 x4, NVMe\r\n\r\nAdvanced Technologies\r\nEnhanced Power Loss Data Protection\r\nNo\r\n\r\nHardware Encryption\r\nAES 256 bit\r\n\r\nHigh Endurance Technology (HET)\r\nNo\r\n\r\nTemperature Monitoring and Logging\r\nNo\r\n\r\nEnd-to-End Data Protection\r\nYes\r\n\r\nIntel® Smart Response Technology\r\nYes\r\n\r\nIntel® Rapid Start Technology\r\nYes', 'tersedia'),
(45, 9, 'Headset Digital Alliance DA Delta ART PLUS Jack 3.5mm Limited Edition', 225000, 'VWr71I6nuSQlQGs3dqQn.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\nHeadset Digital Alliance Delta ART PLUS + Jack 3.5mm - Limited Edition\r\n\r\nSpecification\r\nMain Featured Stereo Sound\r\nLED RGB LED Light\r\nColor Colorful Art Painting\r\nType Earcups Over-Ears\r\nMaterial ABS\r\nEarcups Material PU Pro Protein\r\nEarcups Detachable Yes\r\nWeight 290 g With Cable\r\nCable Type Jack 3.5mm 4 pin with adapter (Sound) + USB (Power LED)\r\nCable Length 200cm±15 Braided Cable\r\nSupport To PC, PS4, XBOX One, Nintendo Switch, Mobile Devices\r\nSOUND\r\nSpeaker Diameter φ50mm\r\nFrequency Response 20Hz – 20KHz\r\nImpedance 32Ω+15%\r\nSpeaker Sensitivity 114dB ±3dB\r\nMax. Power 30mW\r\nMicrophone\r\nSize 6.0 x 5.0 mm\r\nMicrophone Type Omni-Directional\r\nSensitivity -40dB ±3dB\r\nMic Impedance 2.2K Ω', 'tersedia'),
(46, 9, 'DA Gaming Headset Delta Fighter RGB', 210, 'cQ2gRZJiRlXhj44a4aJn.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nREADY STOCK\r\n\r\nDA Gaming Headset Delta Fighter RGB\r\n\r\n\r\nSPECIFICATION\r\nMain Featured Virtual Surround Sound 7.1\r\nLED RGB LED Light\r\nColor Black\r\nWeight 345g\r\nCable Length 180cm\r\nConnector USB\r\nDimension 230 (L) x 180 (W) x 90 (H) mm\r\nSOUND\r\nSpeaker Diameter φ50mm\r\nFrequency Response 20Hz – 20KHz\r\nImpedance 32Ω+15%\r\nSpeaker Sensitivity 120dB ±3dB\r\nRated Power 10mW\r\nMax. Power 20mW\r\nMICROPHONE\r\nMic Type OMNI Directional\r\nMic Dimension 6.0 x 5.0 mm\r\nSensitivity 38±3dB', 'tersedia'),
(47, 11, 'Gaming Chair DragonWar GC-015|GC015 RGB', 2195000, 'W2dmoAsLUdlN7AWpsJRK.png', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: GAMING GEAR\r\nReady stock\r\n\r\n\r\nGC-015 RGB Lighting effect Gaming Chair\r\n\r\nRacing Light effect control with remote\r\nProvide high stability and comfort support\r\nFreely adjustable backrest, tilt angle from 90-180\r\nSoft padded armrest\r\nGas lift : Class 4\r\n60mm PU caster\r\nRocking chair function\r\nExtra padded back and seat\r\n\r\nWireless Remote Control Full Spectrum RGB Lighting\r\nA unique, eye-catching RGB effect is delighting your gaming experience\r\n\r\nElegant, Durable Exterior\r\nThe industrial strength, extra padded gaming chair provides greater support and durability for your ebtire frame and head\r\n\r\nMulti Angles Adjustability\r\nAssembled with a wide range of adjustability that enchances gamers personal comfort, relax for extended periods during your intense gaming sessions.\r\n\r\nSPECIFICATIO:\r\n\r\nChair: foam - normal foam\r\nFrame Construction: Metal\r\nArmrest: Fixed\r\nBase: Wider Metal base\r\nCaster: 60mm nylon caster\r\nMechanism: Butterfly\r\nGas Lift: Class 4\r\nPower plug: USB\r\nextra padded back and seat', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$YpGK1wC0bKHp1Y2bSMac7OcgYEIH1HqICV6pUSxZ1eOM2sEVAaGTu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
