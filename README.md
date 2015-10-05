# ROHM Sensor Platform Kit Public Repository
* Part Number: SENSEKIT2-EVK-101
* Description: An Open platform that can be used to quickly evaluate sensor products!
* Developer: USDC Applications Engineering Team, ROHM Semiconductor
* Date Started: November 2014
* ROHM Webpage: http://www.rohm.com/web/global/sensor-platform-kit
* Sensor Kit Promotional Video on EEWEB: http://www.eeweb.com/company-blog/rohm/sensor-platform-kit

----
### Repository Contents
* Documentation Folder: Contains Application Note, MCU Datasheet, and Platform Guide for connecting this board to other device platforms
* Firmware Folder: Contains the Source Code for the ML610Q112 firmware for the Sensor Platform Base Board
* Hardware Design Files: Contains BOM, Schematic, and Layout files for this project
* PC Evaluation Tools: Contains FTDI VCP drivers and a copy of Putty

----
### Where to Purchase
* Digikey: http://www.digikey.com/product-detail/en/SENSEKIT2-EVK-101/SENSEKIT2-EVK-101-ND/5300443
* Mouser: http://www.mouser.com/search/ProductDetail.aspx?qs=ywOlPR3ZvdGy0i4DGttzbw%3d%3d&utm_source=findchips&utm_medium=aggregator&utm_campaign=755-SENSEKIT2EVK101&utm_term=SENSEKIT2-EVK-101
* Farnell, Element 14: http://uk.farnell.com/rohm/sensekit2-evk-101/multi-sense-eval-kit/dp/2475523

----
### FAQ
* Question: 
  * "I would like to try a different initialization setting for one of the sensors.  How would I go about uploading new firmware to the sensor platform's base board?"
* Answer:  
  * It is possible to modify the existing firmware of the base board.
  * Please see the draft document entitled, “ROHM_HowToFlash-TestingGuide_SensorPlatformKit_2015-10-05” for detailed instructions on how to flash the existing base board.
    * Programming Guide Repository Location: …/ROHMSensorPlatformEVK/Documentation/Sensor Platform/ROHM_HowToFlash-TestingGuide_SensorPlatformKit_2015-10-05.pdf
  * Please note that the board’s default firmware source files can also be found in the Sensor Platform Repository:
    * Default Firmware Repository Folder Location: …/ROHMSensorPlatformEVK/Firmware - Base Board ML610Q112 Code
  * Finally, you will need LAPIS Semiconductor’s nanoEase programmer tool to debug and flash the base board.  This additional tool can be purchased on Digikey at the following link:
    * http://www.digikey.com/product-detail/en/NANO-EASE/NANO-EASE-ND/4576425
  * However, if you do not want to purchase the Lapis nanoEase programmer tool, another alternative would be to write some sample code for the platform you may be using.
    * For example, in the sensor kit repository (…/ROHMSensorPlatformEVK/Documentation/Other Platform Guides/ROHM_ConnectingSensorPlatform_Arduino.pdf) you will find a platform guide and Arduino code for using these sensors with the Arduino platform.  By running this, you can easily change your Arduino code and run with the initialization routines you would like to try with this sensor.



----
### Software License
The following are categorized under the GNU General Public License, Version 3:
* Firmware Design. Includes LAPIS ML610Q112 MCU main.c C code

Copyright (C) 2015 USDC Applications Engineering Team, ROHM Semiconductor

This program is free software: you can redistribute it and/or 
modify it under the terms of the GNU General Public License as published 
by the Free Software Foundation, either version 3 of the License, or any 
later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

----
### Hardware License
The following are categorized under the CERN Open Hardware Licence, Version 1.2:
* Hardware Design. Includes Schematic, BOM, Layout

Copyright (C) 2015 USDC Applications Engineering Team, ROHM Semiconductor

This repository contains free hardware design concepts: you can redistribute it and/or 
modify it under the terms of the CERN Open Hardware Licence as published 
by the CERN, either version 1.2 of the License, or any 
later version.

This hardware design is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
CERN Open Hardware Licence for more details.

You should have received a copy of the CERN Open Hardware Licence
along with this program.  If not, see <http://www.ohwr.org/licenses/cern-ohl/v1.2>.