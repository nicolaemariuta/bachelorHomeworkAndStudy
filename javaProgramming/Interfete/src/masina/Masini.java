package masina;

public interface Masini {
	
	String Afisare  = "/ Detalii Masina";
	String getMarca();
	String getCuloare();
	void setCuloare(String value);
	float getGreutate();
	void setGreutate(float value);
	int getPutereMotor();
	void setPutereMotor(int value);
	String getTipCombustibil(); // "benzina", "motorina"...
	void setTipCombustibil(String value);
	int getPret();
	void setPret(int value);
	void afiseazaDetalii();
	
	
	}
	


