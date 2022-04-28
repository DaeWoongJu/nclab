package ju.dae.woong.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import ju.dae.woong.dao.GongiDao;
import ju.dae.woong.vo.GongiVo;
@Service
public class GongiService {
	private GongiDao dao;
	public void setDao(GongiDao dao) {
		this.dao = dao;
	}
	public int insert(GongiVo vo) {
		return dao.insert(vo);
	}
	public List<GongiVo> selectList(HashMap<String, Object> map){
		System.out.println(map);
		return dao.selectList(map);
	}
	public int getCount(HashMap<String, Object> map) {
		return dao.getCount(map);
	}
	public int delete(int num) {
		return dao.delete(num);
	}
}
