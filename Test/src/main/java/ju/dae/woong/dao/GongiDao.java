package ju.dae.woong.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import ju.dae.woong.vo.GongiVo;

public class GongiDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE="data.mybatis.mapper.GongiMapper";
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	public int insert(GongiVo vo) {
		System.out.println(vo+"aa");
		System.out.println(vo.getImages()+"bb");
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	public List<GongiVo> selectList(HashMap<String, Object> map){
		return sqlSession.selectList(NAMESPACE+".list",map);
	}
	public int getCount(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".count");
	}
	public int delete(int num) {
		return sqlSession.delete(NAMESPACE+".delete",num);
	}
}
