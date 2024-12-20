class mSPI {

private:
  int PIN_MOSI  // Master Out, Slave In (MOSI)
  int PIN_MISO  // Master In, Slave Out (MISO)
  int PIN_SCLK  // Serial Clock (SCLK)
  int PIN_CS    // Chip Select (CS)

public:
  // Constructor to init the SPI pins
  mSPI (PIN_MOSI, PIN_MISO, PIN_SCLK, PIN_CS);

  // Init the SPI interface
  void begin();

  // Send data of type uint8_t over SPI
  void send_data(uint8_t data);

  // Receive data of type uint8_t over SPI
  uint8_t receive_data();
};