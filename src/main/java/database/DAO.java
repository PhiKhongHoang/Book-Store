package database;

import java.util.ArrayList;

public interface DAO<E> {
	public ArrayList<E> selectAll();

	public E selectById(E e);

	public int insert(E e);

	public int insertAll(ArrayList<E> arr);

	public int update(E e);

	public int delete(E e);

	public int deleteAll(ArrayList<E> arr);
}
