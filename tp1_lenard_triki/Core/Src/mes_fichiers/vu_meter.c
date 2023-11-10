#include "mes_fichiers/vu_meter.h"
#include "spi.h" // Assurez-vous d'inclure le bon fichier d'en-tête pour les fonctions SPI HAL



// Fonction d'initialisation
int vu_init(h_vu_t *h_vu) {
    h_vu -> led[0] = 0;
    h_vu -> led[1] = 0;

    h_vu-> spi_buffer[0] = VU_ADDR;
    h_vu-> spi_buffer[1] = VU_IODIRA_ADDRESS;
    h_vu-> spi_buffer[2] = 0x00;
    HAL_SPI_Transmit(&hspi3, h_vu -> spi_buffer, 2, HAL_DELAY(100));

    h_vu-> spi_buffer[0] = VU_ADDR;
    h_vu-> spi_buffer[1] = VU_IODIRB _ADDRESS;
    h_vu-> spi_buffer[2] = 0x00;
    HAL_SPI_Transmit(*hspi, h_vu -> spi_buffer, 2, HAL_DELAY(100));

    HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)

    return 0;
}

int vu_led(h_vu_t *h_vu, uint8_t port, uint8_t led, uint8_t state);
