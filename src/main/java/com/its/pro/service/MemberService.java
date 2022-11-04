package com.its.pro.service;

import com.its.pro.DTO.MemberDTO;
import com.its.pro.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;



@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public void save(MemberDTO memberDTO) throws IOException {
        if (!memberDTO.getMemberFile().isEmpty()) {
            System.out.println("파일있음");
            MultipartFile memberFile = memberDTO.getMemberFile();
            String originalFilename = memberFile.getOriginalFilename();
            String storedFileName = System.currentTimeMillis() + "-" + originalFilename;
            memberDTO.setOriginalFileName(originalFilename);
            memberDTO.setStoredFileName(storedFileName);
            String savePath = "D:\\spring_img\\" + storedFileName;
            memberFile.transferTo(new File(savePath));
            memberDTO.setMemberProfile(1);
            MemberDTO savedMember = memberRepository.save(memberDTO);
            memberRepository.saveFileName(savedMember);

        }else{
                System.out.println("파일없음");
                memberDTO.setMemberProfile(0);
                memberRepository.save(memberDTO);
            }

        }










    }








