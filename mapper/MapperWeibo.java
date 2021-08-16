package web23.web20.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import web23.web20.model.Comment;
import web23.web20.model.User;
import web23.web20.model.Weibo;
import web23.web20.model.WeiboWithComments;

import java.util.ArrayList;

@Mapper
@Repository
public interface MapperWeibo {


    ArrayList<WeiboWithComments> currentUserWeibosWithComments(int userId);

    ArrayList<Comment> commentsFromWeibo(int weiboId);

    ArrayList<Weibo> getAllWeibos();
    Weibo getWeiboByWeiboId(@Param("weiboId")int weiboId);
    void commentAdd(@Param("comment") String comment, @Param("weiboId") int weiboId, @Param("userId") int userId);
    void add(@Param("content") String content, @Param("userId") int userId);

}
