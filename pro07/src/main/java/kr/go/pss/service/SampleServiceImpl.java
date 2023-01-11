package kr.go.pss.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.pss.dao.SampleDAO;
import kr.go.pss.dto.SampleDTO;


@Service
public class SampleServiceImpl implements SampleService {

	@Autowired
	SampleDAO sampleDao;

	@Override
	public List<SampleDTO> sampleList() throws Exception {
		return sampleDao.sampleList();
	}

	@Override
	public SampleDTO getSample(String id) throws Exception {
		return sampleDao.getSample(id);
	}

	@Override
	public void addSample(SampleDTO sample) throws Exception {
		sampleDao.addSample(sample);
	}

}
