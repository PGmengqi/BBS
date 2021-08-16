package web23.web20.controller;

import org.springframework.stereotype.Component;
import web23.web20.model.User;
import web23.web20.service.ServiceAuth;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
@Component
public class ControllerHelper {
    private ServiceAuth serviceAuth;
    public ControllerHelper(ServiceAuth serviceAuth){
        this.serviceAuth = serviceAuth;
    }
    public  User currentUser(HttpServletRequest request) {
        String username;
        Cookie[] cookies = request.getCookies();
        boolean found = false;
        String session_id = "";
        if (cookies != null) {
            System.out.println("!!!!!!!!!!!!!!!!");
            System.out.println("输出所有cookie");
            for (Cookie cookie : cookies) {

                String cookieinfo = String.format(" cookie的name =%s, cookie的value= %s",  cookie.getName(), cookie.getValue());
                System.out.println(cookieinfo);
                if (cookie.getName().equals("session_id")) {
                    session_id = cookie.getValue();
                    found = true;
                }
            }
        }
        if (found) {
            System.out.println("!!!!!!!!");
            System.out.println("currnetUser找到了 cookie");
            username = serviceAuth.usernameFromSessionId(session_id);
        } else {
            System.out.println("currnetUser没找到 cookie");
            username = "游客";
        }

        User user = serviceAuth.userFromUsername(username);
        return user;
    }
}
