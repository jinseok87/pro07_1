package kr.go.pss.service;

import java.util.List;

import kr.go.pss.dto.SampleDTO;

public interface SampleService {
	public List<SampleDTO> sampleList() throws Exception;

	public SampleDTO getSample(String id) throws Exception;

	public void addSample(SampleDTO sample) throws Exception;
}
