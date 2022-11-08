package com.its.pro.DTO;
import lombok.*;
import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class CommentDTO {
    private Long id;
    private String commentWriter;
    private String commentPass;
    private String commentContents;
    private int commentHits = 0;
    private Timestamp commentCreatedDate;
    private Long boardId;

}
