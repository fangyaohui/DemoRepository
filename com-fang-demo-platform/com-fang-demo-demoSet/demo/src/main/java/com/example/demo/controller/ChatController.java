//package com.example.demo.controller;
//
//import com.example.demo.entity.ChatMessage;
//import org.springframework.messaging.handler.annotation.MessageMapping;
//import org.springframework.messaging.handler.annotation.SendTo;
//import org.springframework.stereotype.Controller;
//
///**
// * @FileName ChatController
// * @Description
// * @Author yaoHui
// * @date 2024-09-20
// **/
//@Controller
//public class ChatController {
//
//    // 处理客户端发送到 "/app/sendMessage" 的消息，并将返回值广播到 "/topic/messages"
//    @MessageMapping("/sendMessage")
//    @SendTo("/topic/messages")
//    public ChatMessage sendMessage(ChatMessage message) throws Exception {
//        // 模拟消息处理
//        System.out.println("fangyaohui");
//        return new ChatMessage("服务器: " + message.getContent());
//    }
//}
