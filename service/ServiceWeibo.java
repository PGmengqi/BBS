package web23.web20.service;

import org.springframework.stereotype.Component;
import web23.web20.mapper.MapperWeibo;
import web23.web20.model.*;

import java.util.ArrayList;
import java.util.Random;

@Component
public class ServiceWeibo {

    private MapperWeibo mapperWeibo;

    ServiceWeibo(MapperWeibo mapperWeibo) {
        this.mapperWeibo = mapperWeibo;
    }


    public ArrayList<WeiboWithComments> currentUserWeibos(User currentUser) {
        ArrayList<WeiboWithComments> weibos = this.mapperWeibo.currentUserWeibosWithComments(currentUser.id);
        return weibos;
    }



    public  void add(String content, int userId) {

        mapperWeibo.add(content,userId);
    }

    public  void commentAdd(String content, int weiboId, int userId) {
      mapperWeibo.commentAdd(content,weiboId,userId);

    }

    public  ArrayList<Weibo> getAllWeibos(){
        ArrayList<Weibo> allWeibos = mapperWeibo.getAllWeibos();
        for (Weibo weibo : allWeibos) {
            ArrayList<Comment> comments = mapperWeibo.commentsFromWeibo(weibo.getId());
            weibo.setOldComments(comments);
        }
        return allWeibos;
    }
    public Weibo getWeiboByWeiboId(int weiboId){
        Weibo weibo = mapperWeibo.getWeiboByWeiboId(weiboId);
        weibo.setOldComments(mapperWeibo.commentsFromWeibo(weiboId));
        return weibo;
    }
    public ArrayList<Weibo> pblishWeibos(ArrayList<Weibo> allWeibos) {
        String[] month = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"};
        Random random = new Random();

        for (Weibo weibo : allWeibos) {
            String curMonth = month[random.nextInt(12)];
            int day = random.nextInt(30);
            String create_time = String.format("%s %s, %s", day, curMonth, "2021");
            weibo.setCreateTime(create_time);
            int likes = random.nextInt(200);
            weibo.setLikes(likes);
            if (weibo.getOldComments() != null) {
                weibo.setCommentSize(weibo.getOldComments().size());
            } else {
                weibo.setCommentSize(0);
            }
        }
        return allWeibos;
    }

    public Weibo pblishWeibo(Weibo weibo) {

        String[] month = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"};
        Random random = new Random();
        System.out.println("当前的weibo" + weibo);

            String curMonth = month[random.nextInt(12)];
            int day = random.nextInt(30);
            String create_time = String.format("%s %s, %s", day, curMonth, "2021");
            weibo.setCreateTime(create_time);
        System.out.println("创建时间 " + create_time);
            int likes = random.nextInt(200);
            weibo.setLikes(likes);
        System.out.println("这里出错1");
            if (weibo.getOldComments() != null) {
                System.out.println("评论不为空");
                weibo.setCommentSize(weibo.getOldComments().size());
                System.out.println("评论数量" + weibo.getOldComments().size());
            } else {
                weibo.setCommentSize(0);
            }

        return weibo;
    }
}
