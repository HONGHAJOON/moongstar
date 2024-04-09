package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Comment;
import dto.Walking;
import util.MybatisSqlSessionFactory;

public class WalkingDAOImpl implements WalkingDAO {
	
	SqlSession sqlSession = MybatisSqlSessionFactory.getSqlSessionFactory().openSession();

	@Override
	public void insertWalking(Walking walk) throws Exception {
		sqlSession.insert("mapper.walking.insertWalking",walk);
		sqlSession.commit();
		
	}
	public List<Walking> selectWalkingList() throws Exception{		
		return sqlSession.selectList("mapper.walking.selectWalkingList");
		
		
		
	}
	public void updateWalking(Walking walk) throws Exception{
		sqlSession.update("mapper.walking.updateWalking",walk);
		sqlSession.commit();
	}
	
	
	public Walking selectWalking(Integer walkNum) throws Exception{
		return sqlSession.selectOne("mapper.walking.selectWalking",walkNum);
	}
	
	@Override
	public List<Comment> selectWalkComment(Integer walkNum) throws Exception {
		return sqlSession.selectList("mapper.walking.selectWalkComment",walkNum);
	}
	@Override
	public void insertWalkComment(Comment comment) throws Exception {
		sqlSession.insert("mapper.walking.insertWalkComment",comment);
		sqlSession.commit();
	}
	@Override
	public String selectWalkNick(String memId) throws Exception {
		return sqlSession.selectOne("mapper.walking.selectWalkNick",memId);
	}
	@Override
	public List<Walking> selectWalkListOnMain() throws Exception {
		return sqlSession.selectList("mapper.walking.selectWalkListOnMain");
	}
	
}
