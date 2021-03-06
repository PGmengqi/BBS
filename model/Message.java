package web23.web20.model;

public class Message {
    public String author;
    public String content;

    public Message(String author, String content) {
        this.author = author;
        this.content = content;
    }

    @Override
    public String toString() {
        String s = String.format(
                "(作者 author: %s, 内容 content: %s)",
                this.author,
                this.content
        );
        return s;
    }
}
