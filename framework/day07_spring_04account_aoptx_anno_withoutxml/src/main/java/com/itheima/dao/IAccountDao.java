package com.itheima.dao;

import com.itheima.domain.Account;

import java.util.List;

/**
 * @author 黑马程序员
 * @Company http://www.ithiema.com
 */
public interface IAccountDao {

    /**
     * 查询所有
     * @return
     */
    List<Account> findAll();

    /**
     * 根据id查询
     * @param id
     * @return
     */
    Account findById(Integer id);

    /**
     * 保存
     * @param account
     * @return
     */
    void save(Account account);

    /**
     * 更新
     * @param account
     */
    void update(Account account);

    /**
     * 根据id删除
     * @param id
     */
    void delete(Integer id);

    /**
     * 根据名称查询账户
     * @param accountName
     * @return  如果没有返回null，如果超过一个抛异常
     */
    Account findByName(String accountName);
}
