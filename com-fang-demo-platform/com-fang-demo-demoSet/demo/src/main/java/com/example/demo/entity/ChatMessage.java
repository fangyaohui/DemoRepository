package com.example.demo.entity;

/**
 * @FileName ChatMessage
 * @Description
 * @Author yaoHui
 * @date 2024-09-20
 **/
public class ChatMessage {

    private String content;

    public ChatMessage() {}

    public ChatMessage(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
