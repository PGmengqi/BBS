package web23.web20.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import web23.web20.mapper.MapperUser;
import web23.web20.model.User;
import web23.web20.service.ServiceAuth;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;

@Controller
public class ControllerUser {

    private ServiceAuth serviceAuth;

    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }

    ControllerUser(ServiceAuth serviceAuth) {
        this.serviceAuth =serviceAuth;
    }
    // @GetMapping("/login/view")
    // public ModelAndView loginView(HttpServletRequest request) {
    //     User user = ControllerHelper.currentUser(request);
    //     String username = user.username;
    //     String message = String.format("当前登录用户 %s", username);
    //     ModelAndView modelAndView = new ModelAndView("login");
    //     modelAndView.addObject("message", message);
    //     return modelAndView;
    // }

    @GetMapping("/login")
    //newTopic是返回页面
    public ModelAndView login_view(HttpServletRequest request) {
        return new ModelAndView("login");
    }

    // @PostMapping
    // public ModelAndView login_process(HttpServletRequest request) {
    //     return new ModelAndView("login");
    // }

    @PostMapping("/login/process")
    public String login_process(String username, String password, HttpServletResponse response) {
        String sessionId = serviceAuth.login(username, password);
        Cookie cookie;
        if (sessionId.length() > 0) {
            // cookie = String.format("Set-Cookie: session_id=%s\r\n", sessionId);
            cookie = new Cookie("session_id", sessionId);
            log("!!!!!!!!!!!!!!!");
            log("设置coookie成功");
            log("cookie的name:%s,cookie的value:%s",cookie.getName(),cookie.getValue());
            cookie.setMaxAge(30 * 60);//半小时过期
            cookie.setPath("/");//("/")表示的是访问当前工程下的所有webApp都会产生cookie
            response.addCookie(cookie);
        }else {
            return "redirect:/login";
        }
        return "redirect:/";
    }

    @PostMapping("/register/process")
    public ModelAndView register_process(HttpServletRequest request, String username, String password) {

        boolean success = serviceAuth.register(username, password);
        if (success) {
            return new ModelAndView("redirect:/");
        } else {
            return new ModelAndView("redirect:/register");
        }

    }

    @GetMapping("/register")
    public ModelAndView register_view() {
        return new ModelAndView("register");

    }


    @GetMapping("/functions")
    public ModelAndView functions_view() {
        return new ModelAndView("functions");

    }
    // @GetMapping("/upload/view")
    // public ModelAndView uploadView() {
    //     return new ModelAndView("upload");
    // }
    //
    // @PostMapping("/upload")
    // public ModelAndView upload(MultipartFile file) {
    //     log("filename %s size %s", file.getOriginalFilename(), file.getSize());
    //     Path path = Path.of("upload", file.getOriginalFilename());
    //     try {
    //         Files.write(path, file.getBytes());
    //     } catch (IOException e) {
    //         throw new RuntimeException(e);
    //     }
    //     return new ModelAndView("redirect:/upload/view");
    // }
    //
    // @GetMapping("/uploaded")
    // public void uploaded(HttpServletResponse response, String file) throws IOException {
    //     byte[] bytes = Files.readAllBytes(Path.of("upload", file));
    //     response.setContentType("image/jpeg");
    //     OutputStream out = response.getOutputStream();
    //     out.write(bytes);
    //     out.flush();
    //     //关闭响应输出流
    //     out.close();
    // }
    //
    //
    // @GetMapping("/profile")
    // public ModelAndView profileView(HttpServletRequest request) {
    //     User user = ControllerHelper.currentUser(request);
    //     ModelAndView model = new ModelAndView("profile");
    //     String avator = mapperUser.findAvatodByUserId(user.id);
    //     model.addObject("avator",avator);
    //     return model;
    //
    // }
    //
    // @PostMapping("/avator/add")
    // public ModelAndView avatorAdd(MultipartFile file, HttpServletRequest request) {
    //     log("filename %s size %s", file.getOriginalFilename(), file.getSize());
    //     Path path = Path.of("avator", file.getOriginalFilename());
    //     try {
    //         Files.write(path, file.getBytes());
    //     } catch (IOException e) {
    //         throw new RuntimeException(e);
    //     }
    //     User user = ControllerHelper.currentUser(request);
    //     mapperUser.updateUserFileName(file.getOriginalFilename(),user.id);
    //
    //     return new ModelAndView("redirect:/profile");
    // }
    //
    // @GetMapping("/avator")
    // public void download(HttpServletResponse response, String file) throws IOException {
    //     byte[] bytes = Files.readAllBytes(Path.of("avator", file));
    //     response.setContentType("image/jpeg");
    //     OutputStream out = response.getOutputStream();
    //     out.write(bytes);
    //     out.flush();
    //     //关闭响应输出流
    //     out.close();
    // }
    //
    //    public static String registerView(Request request) {
    //        HashMap<String, String> data = new HashMap<>();
    //        data.put("message", "请注册");
    //        String body = GuaTemplate.render(data, "register.ftlh");
    //        return Route.responseHTML(body);
    //    }
    //
    //    public static String register(Request request) {
    //        String message;
    //        String username = request.form.get("username");
    //        String password = request.form.get("password");
    //        boolean success = ServiceAuth.register(username, password);
    //        if (success) {
    //            message = String.format("注册成功 %s", username);
    //        } else {
    //            message = String.format("注册失败");
    //        }
    //        HashMap<String, String> data = new HashMap<>();
    //        data.put("message", message);
    //        String body = GuaTemplate.render(data, "register.ftlh");
    //        return Route.responseHTML(body);
    //    }
    //

}
