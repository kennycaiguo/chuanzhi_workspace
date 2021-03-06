package com.itheima.utils;

/**
 * 事务管理的工具类
 * @author 黑马程序员
 * @Company http://www.ithiema.com
 */
public class TransactionManager {

    private ConnectionUtils connectionUtils;

    public void setConnectionUtils(ConnectionUtils connectionUtils) {
        this.connectionUtils = connectionUtils;
    }

    /**
     * 开启事务

    public void beginTransaction(){
        try {
            connectionUtils.getConnection().setAutoCommit(false);
        }catch (Exception e){
            e.printStackTrace();
        }
    }*/

    /**
     * 提交事务
     */
    public void commit(){
        try {
            connectionUtils.getConnection().commit();
            connectionUtils.getConnection().close();
            //解绑
            connectionUtils.remove();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 回滚事务
     */
    public void rollback(){
        try {
            connectionUtils.getConnection().rollback();
            connectionUtils.getConnection().close();
            //解绑
            connectionUtils.remove();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 释放资源

    public void close(){
        try {
            connectionUtils.getConnection().close();
            //解绑
            connectionUtils.remove();
        }catch (Exception e){
            e.printStackTrace();
        }
    }*/
}
