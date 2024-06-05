#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <math.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"
#include "esp_log.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "nvs.h"
#include "esp_vfs.h"
#include "esp_spiffs.h"

#include "../Lib/lcd_com.h"
#include "../Lib/lcd_lib.h"
#include "../Lib/fontx.h"
#include "../Lib/bmpfile.h"
#include "../Lib/decode_png.h"
#include "../Lib/pngle.h"
#include "../Lib/LCD.h"
#if CONFIG_INTERFACE_I2S
#define INTERFACE INTERFACE_I2S
#elif CONFIG_INTERFACE_GPIO
#define INTERFACE INTERFACE_GPIO
#elif CONFIG_INTERFACE_REG
#define INTERFACE INTERFACE_REG
#endif


#if CONFIG_ILI9341
#include "../Lib/ili9341.h"
#define DRIVER "ILI9341"
#define INIT_FUNCTION(a, b, c, d, e) ili9341_lcdInit(a, b, c, d, e)

#elif CONFIG_ILI9486
#include "../Lib/ili9486.h"
#define DRIVER "ILI9486"
#define INIT_FUNCTION(a, b, c, d, e) ili9486_lcdInit(a, b, c, d, e)

#endif

#define INTERVAL 400
#define WAIT vTaskDelay(INTERVAL)
TFT_t dev;
static const char *TAG = "MAIN";

FontxFile fx16G[2];
FontxFile fx24G[2];
FontxFile fx32G[2];

FontxFile fx16M[2];
FontxFile fx24M[2];
FontxFile fx32M[2];



void TFT(void *pvParameters)
{
	char file[32];
	lcdFillScreen(&dev,BLACK);
	uint8_t ascii[24] ;	
	
	float ec =5.4;
	


    strcpy(file, "/images/sanlab.bmp");
    BMPTest(&dev, file, CONFIG_WIDTH, CONFIG_HEIGHT);

	// 	lcdDrawFillRect(&dev, 0, 0, 240,240 , RED);
	// WAIT;
	// lcdDrawFillRect(&dev, 0, 240, 0,240 , BLUE);
	//WAIT;
	// // lcdDrawFillRect(&dev, 0, 0, 240,240 , RED);
	// // WAIT;
	// // lcdDrawFillRect(&dev, 0, 0, 240,240 , RED);
	// // WAIT;



	
	sprintf((char *)ascii, "20:11:23");
	ArrowTest(&dev, fx32M, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,250,50,WHITE );
	

	sprintf((char *)ascii, "NODE 1");
	ArrowTest(&dev, fx32M, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,200,340,WHITE );
	

	sprintf((char *)ascii, "CONNECTING");
	ArrowTest(&dev, fx32M, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,150,300,GREEN );
	

	sprintf((char *)ascii, "NODE 2");
	ArrowTest(&dev, fx32M, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,60,340 ,WHITE);
	

	sprintf((char *)ascii, "CONNECTING");
	ArrowTest(&dev, fx32M, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,10,300,GREEN );
	
	// sprintf((char *)ascii, "BKRES");
	// ArrowTest(&dev, fx24G, CONFIG_WIDTH, CONFIG_HEIGHT,ascii,0,150 );
	// WAIT;

vTaskDelete(NULL);

}

void app_main()
{
	// Initialize NVS
	ESP_LOGI(TAG, "Initialize NVS");
	esp_err_t err = nvs_flash_init();
	if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
		// NVS partition was truncated and needs to be erased
		// Retry nvs_flash_init
		ESP_ERROR_CHECK(nvs_flash_erase());
		err = nvs_flash_init();
	}
	ESP_ERROR_CHECK( err );

	ESP_LOGI(TAG, "Initializing SPIFFS");
	esp_err_t ret;
	ret = mountSPIFFS("/spiffs", "storage0", 10);
	if (ret != ESP_OK) return;
	listSPIFFS("/spiffs/");

	// Image file borrowed from here
	// https://www.flaticon.com/packs/social-media-343
	ret = mountSPIFFS("/icons", "storage1", 10);
	if (ret != ESP_OK) return;
	listSPIFFS("/icons/");

	ret = mountSPIFFS("/images", "storage2", 14);
	if (ret != ESP_OK) return;
	listSPIFFS("/images/");

	lcd_interface_cfg(&dev, INTERFACE);
	INIT_FUNCTION(&dev, CONFIG_WIDTH, CONFIG_HEIGHT, CONFIG_OFFSETX, CONFIG_OFFSETY);
	InitFontx(fx16G,"/spiffs/ILGH16XB.FNT",""); // 8x16Dot Gothic
	InitFontx(fx24G,"/spiffs/ILGH24XB.FNT",""); // 12x24Dot Gothic
	InitFontx(fx32G,"/spiffs/ILGH32XB.FNT",""); // 16x32Dot Gothic
	InitFontx(fx16M,"/spiffs/ILMH16XB.FNT",""); // 8x16Dot Mincyo
	InitFontx(fx24M,"/spiffs/ILMH24XB.FNT",""); // 12x24Dot Mincyo
	InitFontx(fx32M,"/spiffs/ILMH32XB.FNT",""); // 16x32Dot Mincyo
	xTaskCreate(TFT, "TFT", 1024*6, NULL, 2, NULL);

}
