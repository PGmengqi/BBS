package web23.web20.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import web23.web20.model.Session;
import web23.web20.model.User;

import java.util.ArrayList;

@Mapper
@Repository
public interface MapperUser {

    ArrayList<User> getAllUsers();
    void insertIntoUser( @Param("username")String username, @Param("password")String password, @Param("role")String role, @Param("salt") String salt);
    ArrayList<Session> getAllSessions();
    void insertIntoSession(@Param("id") String id, @Param("username") String username);
}
