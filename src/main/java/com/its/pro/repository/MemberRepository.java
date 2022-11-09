package com.its.pro.repository;

import com.its.pro.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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


    public MemberDTO loginCheck(MemberDTO memberDTO) {
        System.out.println("리파지토리까지 넘어옴");
        System.out.println("memberDTO = " + memberDTO);
        MemberDTO result = sql.selectOne("Member.loginCheck",memberDTO);
        Long id = result.getId();
        MemberDTO file = sql.selectOne("Member.file",id);
        if(file != null){
            result.setStoredFileName(file.getStoredFileName());
            result.setOriginalFileName(file.getOriginalFileName());
        }


        return result;

        }

    public void update(MemberDTO memberDTO) {
        sql.update("Member.update",memberDTO);
    }

    public List<MemberDTO> memberList() {
       return sql.selectList("Member.memberList");
    }
}
