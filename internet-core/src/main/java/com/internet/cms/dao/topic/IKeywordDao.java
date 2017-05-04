package com.internet.cms.dao.topic;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.internet.cms.model.Keyword;
import com.internet.cms.page.Pager;

public interface IKeywordDao{
	
	/**
	 * 根据关键字查询在当前数据库中是否存在
	 * @param name 关键字
	 * @return 返回要查询的关键字
	 */
	public Keyword findKeywordByName(@Param("name") String name);
	
	/**
	 * 添加keyword
	 * @param k 关键字对象
	 */
	public void add(Keyword k);
	
	/**
	 * 更新keyword
	 * @param k 关键字对象
	 */
	public void update(Keyword k);

	/**
	 * 查找没有使用的关键字
	 * @return
	 */
	public Pager<Keyword> findNoUseKeyword();
	/**
	 * 清空没有使用的关键字
	 */
	public void clearNoUseKeyword();
	/**
	 * 查找正在被引用的关键字
	 * @return
	 */
	public List<Keyword> findUseKeyword();
	/**
	 * 根据某个条件从keyword表中查询关键字
	 * @param con
	 * @return
	 */
	public List<Keyword> listKeywordByCon(String con);
	
	/**
	 * 根据关键字联想已经在数据库中存在的关键字（创建文档时输入关键字并联想）
	 * @param name 创建文档输入的关键字
	 * @return 关键字
	 */
	public List<String> listKeywordStringByCon(@Param("name") String name);

	
}
