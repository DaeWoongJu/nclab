package ju.dae.woong.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString

public class GongiVo {
	private int num;
	private String id;
	private String images;
	private String title;
	private String content;
	private Date regdate;
}
