class Pelota extends FCircle {

  Pelota(float tam) {
    super( tam );
  }

  void inicializar( float x, float y) {

    setPosition( x, y );
    setFill(255, 0, 0);
    setDensity(13);
    setRestitution(1);
    setBullet(true);
    addTorque(12);
  }
}
