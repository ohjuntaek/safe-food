package com.ssafy.safefood.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("food")
public class FoodVO {
	/**식품을 구별하는 코드 */
	private int code;
	/**식품 이름*/
	private String name;
	/**일회 제공 량*/
	private double supportpereat;
	/**일회 제공되는 칼로기*/
	private double calory;
	/**일회 제공되는 탄수화물*/
	private double carbo;
	/**일회 제공되는 단백질*/
	private double protein;
	/**일회 제공되는 지방*/
	private double fat;
	/**일회 제공되는 당류*/
	private double sugar;
	/**일회 제공되는 나트륨*/
	private double natrium;
	/**일회 제공되는 콜레스테롤*/
	private double chole;
	/**일회 제공되는 포화지방산*/
	private double fattyacid;
	/**일회 제공되는 트렌스지방*/
	private double transfat;
	/**제조사*/
	private String maker;
	/**원료*/
	private String material;
	/**이미지 경로*/
	private String img;
	private Date create_time;
	private int ingest_no;
	
	
	
	public int getIngest_no() {
		return ingest_no;
	}
	public void setIngest_no(int ingest_no) {
		this.ingest_no = ingest_no;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	@Override
	public String toString() {
		return "FoodVO [code=" + code + ", name=" + name + ", supportpereat=" + supportpereat + ", calory=" + calory
				+ ", carbo=" + carbo + ", protein=" + protein + ", fat=" + fat + ", sugar=" + sugar + ", natrium="
				+ natrium + ", chole=" + chole + ", fattyacid=" + fattyacid + ", transfat=" + transfat + ", maker="
				+ maker + ", material=" + material + ", img=" + img + ", create_time=" + create_time + ", ingest_no="
				+ ingest_no + "]";
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getSupportpereat() {
		return supportpereat;
	}
	public void setSupportpereat(double supportpereat) {
		this.supportpereat = supportpereat;
	}
	public double getCalory() {
		return calory;
	}
	public void setCalory(double calory) {
		this.calory = calory;
	}
	public double getCarbo() {
		return carbo;
	}
	public void setCarbo(double carbo) {
		this.carbo = carbo;
	}
	public double getProtein() {
		return protein;
	}
	public void setProtein(double protein) {
		this.protein = protein;
	}
	public double getFat() {
		return fat;
	}
	public void setFat(double fat) {
		this.fat = fat;
	}
	public double getSugar() {
		return sugar;
	}
	public void setSugar(double sugar) {
		this.sugar = sugar;
	}
	public double getNatrium() {
		return natrium;
	}
	public void setNatrium(double natrium) {
		this.natrium = natrium;
	}
	public double getChole() {
		return chole;
	}
	public void setChole(double chole) {
		this.chole = chole;
	}
	public double getFattyacid() {
		return fattyacid;
	}
	public void setFattyacid(double fattyacid) {
		this.fattyacid = fattyacid;
	}
	public double getTransfat() {
		return transfat;
	}
	public void setTransfat(double transfat) {
		this.transfat = transfat;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
