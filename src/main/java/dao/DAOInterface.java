package dao;
import java.util.ArrayList;
import java.util.List;

public interface DAOInterface<T> {
	
	public List<T> selectAll();
	
	public T selectById(T t);
	
	public int insert(T t);
	
	public int insertAll(List<T> arr);
	
	public int delete(T t);
	
	public int deleteAll(List<T> arr);
	
	public int update(T t);
}
