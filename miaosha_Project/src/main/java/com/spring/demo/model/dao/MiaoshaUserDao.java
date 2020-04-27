package com.spring.demo.model.dao;

import com.spring.demo.model.entity.MiaoshaUser;
import com.spring.demo.model.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * @author Administrator
 * @date 2020/4/10 11:17
 */
@Mapper
public interface MiaoshaUserDao {
    @Select("select * from t_user where id = #{id}")
    public MiaoshaUser getById(@Param("id")long id);

    @Update("update t_miaosha_user set password = #{password} where id = #{id}")
    public void update(MiaoshaUser toBeUpdate);
}
