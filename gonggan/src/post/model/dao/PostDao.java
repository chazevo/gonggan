package post.model.dao;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import post.model.vo.Post;

public class PostDao {
	
	public List<Post> selectAll() {
		
		List<Post> plist = null;
		SqlSession dbSession = null;
		
		try {
			
			dbSession = new SqlSessionFactoryBuilder().build(
					Resources.getResourceAsReader(
							"mybatis/mybatis-config.xml")).openSession();
			plist = dbSession.selectList("postmapper.plist");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbSession.close();
		}
		
		return plist;
	}
	
}
