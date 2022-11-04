package com.its.pro.DTO;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class MemberDTO {
    private Long id;
    private String memberEmail;
    private String memberPassword;
    private String memberName;
    private int memberAge;
    private String memberMobile;
    private int memberType;
    private int memberProfile;
    private MultipartFile memberFile;
    private String originalFileName;
    private String storedFileName;
    private String memberAddress;
    private String memberGender;
}
