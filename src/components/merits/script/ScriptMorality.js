import React from "react";
import { render } from "react-dom";
import parse from "html-react-parser";

const html = 
`<p>Tiêu chuẩn bắt buộc <br>
- Điểm rèn luyện năm học 2020 - 2021 đạt từ 90 điểm trở lên. <br>
- Phân tích chất lượng Đoàn viên năm học 2020 - 2021: Xuất sắc. <br>
- Phân tích chất lượng Hội viên năm học 2020 - 2021: Xuất sắc. <br>
<b>Tiêu chuẩn khác</b>
- Đạt danh hiệu <b>“Thanh niên tiên tiến làm theo lời Bác năm học 2020 - 2021”</b> <br>
- Có hành động dũng cảm cứu người bị nạn, bắt cướp, giúp người neo đơn, người nghèo, người gặp khó khăn, hoạn nạn <br>
- Tham gia <b>Hiến máu Nhân đạo</b> trong năm học 2020 – 2021.
</p>`

const options = {
  replace: (domNode) => {
    if (domNode.attribs && domNode.attribs.class === "remove") {
      return <></>;
    }
  }
};

function ScriptMorality() {
  return parse(html, options);
}

render(<ScriptMorality />, document.getElementById("root"));
export default ScriptMorality;