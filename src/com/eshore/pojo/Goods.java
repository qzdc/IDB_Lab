package com.eshore.pojo;

import java.sql.Date;

public class Goods {

	private int gid;
	private String kinds;// 类型
	private String gname;// 名字
	private String gphoto;// 实物图片
	private String types;// 型号
	private String producer;// 生产商
	private String paddress;// 出产地
	private String described;// 描述
	private Date pdate;// 生产日期
	private float price;// 单价
	private float carriage;// 运费
	private int keyclass;//小类别
	private int big_keyclass;//大类别
	private String keyword;//类别名称

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getKinds() {
		return kinds;
	}

	public void setKinds(String kinds) {
		this.kinds = kinds;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGphoto() {
		return gphoto;
	}

	public void setGphoto(String gphoto) {
		this.gphoto = gphoto;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public String getPaddress() {
		return paddress;
	}

	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}

	public String getDescribed() {
		return described;
	}

	public void setDescribed(String described) {
		this.described = described;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getCarriage() {
		return carriage;
	}

	public void setCarriage(float carriage) {
		this.carriage = carriage;
	}

	public int getKeyclass() {
		return keyclass;
	}

	public void setKeyclass(int keyclass) {
		this.keyclass = keyclass;
	}

	public int getBig_keyclass() {
		return big_keyclass;
	}

	public void setBig_keyclass(int bigKeyclass) {
		big_keyclass = bigKeyclass;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public void setGood(String gname,String gphoto,String kinds,
						String types,String producer,float price,
						float carriage,Date pdate,String paddress,
						String described){
		this.gname=gname;
		this.gphoto=gphoto;
		this.kinds=kinds;
		this.types=types;
		this.producer=producer;
		this.price=price;
		this.carriage=carriage;
		this.pdate=pdate;
		this.paddress=paddress;
		this.described=described;
	}

}
