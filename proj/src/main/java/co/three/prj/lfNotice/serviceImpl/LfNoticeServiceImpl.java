package co.three.prj.lfNotice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.three.prj.comm.DataSource;
import co.three.prj.lfNotice.LfNoticeMapper;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;

public class LfNoticeServiceImpl implements LfNoticeService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private LfNoticeMapper map = sqlSession.getMapper(LfNoticeMapper.class);
	@Override
	public List<LfNoticeVO> LfNoticeSelectList(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeSelectList(vo);
	}

	@Override
	public LfNoticeVO LfNoticeSelect(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeSelect(vo);
	}
	
	@Override
	public int LfNoticeInsert(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeInsert(vo);
	}

	@Override
	public int LfNoticeDelete(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeDelete(vo);
	}

	@Override
	public int LfNoticeUpdate(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeUpdate(vo);
	}

	@Override
	public int LfNoticeHitUpdate(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeHitUpdate(vo);
	}



	@Override
	public LfNoticeVO LfNoticeSearch(String obj, String sd, String ed) {
		// TODO Auto-generated method stub
		return map.LfNoticeSearch(obj, sd, ed);
	}

	@Override
	public int LfNoticeCount(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.LfNoticeCount(vo);
	}

	@Override
	public List<LfNoticeVO> searchTypeSelect(LfNoticeVO vo) {
		// TODO Auto-generated method stub
		return map.searchTypeSelect(vo);
	}




}
