package com.itheima.service;

import com.itheima.domain.Account;

import java.util.List;

/**
 * 账户的业务层接口
 * @author 黑马程序员
 * @Company http://www.ithiema.com
 */
public interface IAccountService {

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
}
