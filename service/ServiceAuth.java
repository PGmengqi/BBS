package web23.web20.service;

import org.springframework.stereotype.Component;
import web23.web20.mapper.MapperUser;
import web23.web20.model.*;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.UUID;
@Component
public class ServiceAuth {

    private MapperUser mapperUser;
    public ServiceAuth(MapperUser mapperUser){
        this.mapperUser = mapperUser;
    }
    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }


    public static String hexFromBytes(byte[] bytes) {
        StringBuilder result = new StringBuilder();
        for (int i = 0, bytesLength = bytes.length; i < bytesLength; i++) {
            byte currentByte = bytes[i];
            // 02 代表不足两位补足两位 x代表用16进制表示
            // String.format("%02x", 0) = "00"
            result.append(String.format("%02x", currentByte));
        }
        return result.toString();
    }

    public static String SaltedPasswordHash(String password, String salt) {
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        String salted = salt + password;
        md.update(salted.getBytes(StandardCharsets.UTF_8));
        byte[] result = md.digest();
        return  hexFromBytes(result);
    }

    //重写1
    public  String login(String username, String password) {
        ArrayList<User> users = mapperUser.getAllUsers();
        for (int i = 0; i < users.size(); i++) {
            User currentUser = users.get(i);
            log("当前用户名:%s",currentUser.username);
            if (currentUser.username.equals(username)) {
                log("找到了当前用户");
                String salt = currentUser.salt;
                String saltedPassword = SaltedPasswordHash(password, salt);
                log("加密密码:%s",saltedPassword);
                if (currentUser.password.equals(saltedPassword)) {
                    log("密码也正确");
                    String sessionId = UUID.randomUUID().toString();
                    //session的id、username都是varchar类型的。
                    mapperUser.insertIntoSession(sessionId,username);
                    //
                    log("!!!!!!!!!!!!!!!!!!!!!");
                    log("写入session成功");
                    log("当前seesionid是： %s",sessionId);
                    return sessionId;
                }
            }
        }
        return "";
    }

    public static User guest() {
        User user = new User(0, "游客", "dadasds", "guest", "dasdas");
        return user;
    }

    //重写2
    public  String usernameFromSessionId(String sessionId) {
        log("usernameFromSessionId:在寻找所有的session");
        ArrayList<Session> sessions = mapperUser.getAllSessions();
        for (Session session : sessions) {

            if (session.id.equals(sessionId)) {
                log("当前session: id:%s username:%s",session.id,session.username);
                return session.username;
            }
        }
        return guest().username;
    }

    //重写3
    public User userFromUsername(String username) {
        ArrayList<User> users = mapperUser.getAllUsers();
        for (int i = 0; i < users.size(); i++) {
            User user = users.get(i);
            if (user.username.equals(username)) {
                return user;
            }
        }
        return guest();
    }

    //重写4
    public  boolean register(String username, String password) {

        ArrayList<User> users = mapperUser.getAllUsers();

        for (User user : users) {
            if(user.username.equals(username)){
                return false;
            }
        }
        String salt = UUID.randomUUID().toString();
        String saltedPassword = SaltedPasswordHash(password, salt);
        //这是User的格式
        //插入的时候，不需要插入id,因为id是自增的，username、password、role、salt都是varchar
        try {
            // model.UserStorage.add(user);
            mapperUser.insertIntoUser(username,saltedPassword,"normal",salt);

            return true;
        } catch (RuntimeException e) {
            log(e.toString());
            return false;
        }

    }


}
