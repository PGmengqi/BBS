package web23.web20.model;

import java.util.ArrayList;

public class
Weibo {
    private int id;
    private String content;
    private int userId;
    private ArrayList<Comment> oldComments;
    private String createTime;
    private int likes;

    public int getCommentSize() {
        return commentSize;
    }

    public void setCommentSize(int commentSize) {
        this.commentSize = commentSize;
    }

    private int commentSize;

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Weibo(int id, String content, int userId) {
        this.id = id;
        this.content = content;
        this.userId = userId;

    }

    public Weibo() {}

    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }

    @Override
    public String toString() {
        String s = String.format(
                "(id: %s, 内容: %s, user_id: %s)",
                this.getId(),
                this.getContent(),
                this.getUserId()
        );
        return s;
    }

    public int getId() {
        log("访问了 id");
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserId() {
        return userId;
    }

    public ArrayList<Comment> getOldComments() {
        return oldComments;
    }

    public void setOldComments(ArrayList<Comment> oldComments) {
        this.oldComments = oldComments;
    }

}
