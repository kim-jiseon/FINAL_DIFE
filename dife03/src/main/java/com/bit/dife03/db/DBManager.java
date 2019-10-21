package com.bit.dife03.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.dife03.vo.AdminVo;

public class DBManager {
	public static SqlSessionFactory factory;
    static {        
        try {
            Reader reader = Resources.getResourceAsReader("com/bit/dife03/db/dbConfig.xml");
            factory = new SqlSessionFactoryBuilder().build(reader);
            reader.close();
        }catch (Exception e) {
            // TODO: handle exception
            System.out.println(e.getMessage());
        }
    }
    
    public static List<AdminVo> listAdmin(){
    	List<AdminVo> list = null;
    	SqlSession session = factory.openSession();
    	list = session.selectList("admin.selectAll");
    	session.close();
    	System.out.println("list"+list);
    	return list;	
    }

}
