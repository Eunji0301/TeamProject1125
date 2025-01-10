package com.HelloHealthy.myapp.domain;

import java.time.LocalDateTime;

public class DiagnosisRecordVo {
	private int drIdx;
	private String uId;
    private float drHeight;
    private float drWeight;
    private int drAge;
    private String drDisease;
    private String drActivity;
    private LocalDateTime drCreateAt;
    
    public int getDrIdx() {
		return drIdx;
	}
	public void setDrIdx(int drIdx) {
		this.drIdx = drIdx;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public float getDrHeight() {
		return drHeight;
	}
	public void setDrHeight(float drHeight) {
		this.drHeight = drHeight;
	}
	public float getDrWeight() {
		return drWeight;
	}
	public void setDrWeight(float drWeight) {
		this.drWeight = drWeight;
	}
	public int getDrAge() {
		return drAge;
	}
	public void setDrAge(int drAge) {
		this.drAge = drAge;
	}
	public String getDrDisease() {
		return drDisease;
	}
	public void setDrDisease(String drDisease) {
		this.drDisease = drDisease;
	}
	public String getDrActivity() {
		return drActivity;
	}
	public void setDrActivity(String drActivity) {
		this.drActivity = drActivity;
	}
	public LocalDateTime getDrCreateAt() {
		return drCreateAt;
	}
	public void setDrCreateAt(LocalDateTime drCreateAt) {
		this.drCreateAt = drCreateAt;
	}
	
}
