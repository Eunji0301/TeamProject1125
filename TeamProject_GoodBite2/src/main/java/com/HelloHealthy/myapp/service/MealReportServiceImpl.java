package com.HelloHealthy.myapp.service;

import com.HelloHealthy.myapp.domain.DiagnosisRecordVo;
import com.HelloHealthy.myapp.persistance.MealReportMapper;

public class MealReportServiceImpl implements MealReportService {

	private MealReportMapper mealReportMapper;

	@Override
	public int diagnosisInsert(DiagnosisRecordVo drv) {
		return 0;
	}

	public MealReportServiceImpl(MealReportMapper mealReportMapper) {
		this.mealReportMapper = mealReportMapper;
	}


	@Override
	public String saveDiagnosisRecord(DiagnosisRecordVo record) {
		return null;
	}

}
