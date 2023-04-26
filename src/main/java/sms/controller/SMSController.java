package sms.controller;

import net.nurigo.sdk.NurigoApp;

import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Balance;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.model.StorageType;
import net.nurigo.sdk.message.request.MessageListRequest;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.MessageListResponse;
import net.nurigo.sdk.message.response.MultipleDetailMessageSentResponse;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.IOException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

@RequestMapping("member")
@RestController
public class SMSController {
    final DefaultMessageService messageService;

    public SMSController() {
        this.messageService = NurigoApp.INSTANCE.initialize("NCSIYHFHJYBACUZH", "NNDHTWLZ066U7KX9V7GNIUKMNDAVASGY", "https://api.coolsms.co.kr");
    }

    @PostMapping("send-one")
    public int sendOne(@RequestParam("phone") String phone) {
    	int certificationNumber = (int)(Math.random() * (99999 - 10000 + 1)) + 10000;
		
        Message message = new Message();
        message.setFrom("01064727555");
        message.setTo(phone);
        message.setText("[OhMyGoal] 아이디/비밀번호 찾기 인증번호는 " + certificationNumber + "입니다.");

        SingleMessageSentResponse response = this.messageService.sendOne(new SingleMessageSendingRequest(message));
        System.out.println("certificationNumber=" + certificationNumber + ", " + response);

        return certificationNumber;
    } 
}