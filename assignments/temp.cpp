void versionHandler(const char *event, const char *data)
{
    int latest = atoi(data);

    Serial.printlnf("Latest version is: %d", latest);
    Serial.printlnf("Current version is: %d", FIRMWAREVERSION);

    if (latest > FIRMWAREVERSION)
    {
        if (Particle.connected())
        {
            Serial.println("Creating new session to encourage update...");
            Particle.publish("New_session", PRIVATE);
            Particle.publish("spark/device/session/end", "", PRIVATE);
            delay(10000);
        }
        else
        {
            Serial.println("Device offline!");
        }
    }
}