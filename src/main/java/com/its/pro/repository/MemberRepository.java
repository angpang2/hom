package com.its.pro.repository;

import com.its.pro.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public MemberDTO save(MemberDTO memberDTO) {
        System.out.println("리파지토리까지 넘어옴");
        sql.insert("Member.save", memberDTO);
        return memberDTO;
    }


    public void saveFileName(MemberDTO memberDTO) {
        System.out.println("리파지토리까지 넘어옴");
        sql.insert("Member.saveFile", memberDTO);

    }


    public MemberDTO emailCheck(String memberEmail) {
        System.out.println("리파지토리까지 넘어옴");
        System.out.println("memberEmail = " + memberEmail);
       MemberDTO result = sql.selectOne("Member.emailCheck",memberEmail);
        System.out.println(result);
       return result;

    }







}