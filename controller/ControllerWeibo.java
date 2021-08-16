package web23.web20.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import web23.web20.model.Weibo;
import web23.web20.model.User;
import web23.web20.model.WeiboWithComments;
import web23.web20.service.ServiceWeibo;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Random;

@Controller
public class ControllerWeibo {

   private ServiceWeibo serviceWeibo;
   private ControllerHelper controllerHelper;

    ControllerWeibo(ServiceWeibo serviceWeibo, ControllerHelper controllerHelper) {
        this.serviceWeibo = serviceWeibo;
        this.controllerHelper = controllerHelper;
    }

    // @GetMapping("/weibo/timeline")
    // public ModelAndView timeline(HttpServletRequest request) {
    //     User currentUser = ControllerHelper.currentUser(request);
    //     // serviceWeibo serviceWeibo = new ServiceWeibo()
    //     ArrayList<Weibo> weibos = this.serviceWeibo.timelineWeibos(currentUser);
    //     // 读出 模板 文件并把数据放进 html 文件
    //     ModelAndView modelAndView = new ModelAndView("weibo_timeline");
    //     modelAndView.addObject("weibos", weibos);
    //     return modelAndView;
    // }
    //
    // @GetMapping("/weibo/all")
    // public ModelAndView all(HttpServletRequest request) {
    //     User currentUser = ControllerHelper.currentUser(request);
    //     ArrayList<WeiboWithComments> weibos = this.serviceWeibo.currentUserWeibos(currentUser);
    //     // 读出 模板 文件并把数据放进 html 文件
    //     ModelAndView modelAndView = new ModelAndView("weibo_all");
    //     modelAndView.addObject("weibos", weibos);
    //     return modelAndView;
    // }

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("index_new");
        ArrayList<Weibo> allWeibos = serviceWeibo.pblishWeibos(serviceWeibo.getAllWeibos());
        modelAndView.addObject("weibos", allWeibos);

        return modelAndView;
    }

    @GetMapping("/weibo")
    public ModelAndView weibo(HttpServletRequest request, int weiboId) {
        ModelAndView modelAndView = new ModelAndView("weibo_detail");
        Weibo weibo2 = serviceWeibo.getWeiboByWeiboId(weiboId);
        System.out.println("获取的weibo是" + weibo2);
         weibo2 = serviceWeibo.pblishWeibo(weibo2);
        modelAndView.addObject("weibo",weibo2);
        modelAndView.addObject("comments",weibo2.getOldComments());
        return modelAndView;
    }

    @PostMapping("/weibo1/commentAdd")
    //comment=wwww&isAnonymous=on
    //comment=wwwwwwwwwwww
    public ModelAndView weiboCommentAdd(HttpServletRequest request, int weiboId, String comment, String isAnonymous) {

        User user = controllerHelper.currentUser(request);
        if(user.role.toString().equals("guest") && isAnonymous == null){
            //如果是游客
            return new ModelAndView("redirect:/login");
        }
        serviceWeibo.commentAdd(comment,weiboId,user.id);
        String address = String.format("redirect:/weibo?weiboId=%s",weiboId);
        return new ModelAndView(address);
    }

    @PostMapping("/weibo1/newWeibo")
    //newWeibo是处理newTopic页面的数据
    public ModelAndView weibo_new(HttpServletRequest request, String content) {
        // return new String("redirect:/login");
        User user = controllerHelper.currentUser(request);
        System.out.println(String.format("发布新话题的user: %s",user.username));
        if(user.role.toString().equals("guest") ){
            //如果是游客
            return new ModelAndView("redirect:/login");
        }
        // System.out.println("!!!!!!!!!!!!!!!!!!!!!");
        // System.out.println("当前用户是" + user.username);
        // System.out.println("!!!!!!!!!!!!!!!!!!!!!");
        //进入发布主题页面
        serviceWeibo.add(content,user.id);
        return new ModelAndView("redirect:/");

    }

    @GetMapping("/newTopic")
    //newTopic是返回页面
    public ModelAndView weibo_topic(HttpServletRequest request) {
        return new ModelAndView("new_topic");
    }



}