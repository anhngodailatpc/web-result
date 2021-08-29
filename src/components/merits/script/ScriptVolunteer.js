import React from "react";
import { render } from "react-dom";
import parse from "html-react-parser";

const html = 
`<p> Đạt 01 trong các tiêu chuẩn sau: <br>
- Là chiến sĩ thường trực tham gia một trong các chiến dịch, chương trình: Xuân Tình nguyện năm 2021, Tiếp sức Mùa thi 2021 <br>
- Tham gia ít nhất 02 hoạt động tình nguyện trong năm học 2020 - 2021 với số ngày CTXH tích lũy từ 5 ngày trở lên. <br>
- Được khen thưởng cấp trường và tương đương trở lên về hoạt động tình nguyện trong năm học 2020 - 2021. <br>

</p>`

const options = {
  replace: (domNode) => {
    if (domNode.attribs && domNode.attribs.class === "remove") {
      return <></>;
    }
  }
};

function ScriptVolunteer() {
  return parse(html, options);
}

render(<ScriptVolunteer />, document.getElementById("root"));
export default ScriptVolunteer;