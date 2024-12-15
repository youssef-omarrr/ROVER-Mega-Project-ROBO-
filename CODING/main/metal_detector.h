#define tolerance   10 // Adjust this based on sensor calibration

class MetalDetector {
private:
  int sensorPIN;  // Pin connected to the metal detector
  int buzzerPIN;  // Buzzer pin to indicate detection

public:
  // Constructor to initialize the metal detector with sensor pin and buzzer pin
  MetalDetector(int sensorPIN, int buzzerPIN);

  // Initialize the sensor and buzzer pin
  void begin();

  // Perform an action when metal is detected
  void handleDetection();
};