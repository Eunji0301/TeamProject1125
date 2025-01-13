package com.HelloHealthy.myapp.service;

import com.HelloHealthy.myapp.domain.DiagnosisRecordVo;

public interface MealReportService {
	
	 public int diagnosisInsert(DiagnosisRecordVo drv);
	 
	 public String saveDiagnosisRecord(DiagnosisRecordVo record);
}
