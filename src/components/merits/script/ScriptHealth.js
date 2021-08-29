import React from "react";
import { render } from "react-dom";
import parse from "html-react-parser";

const html = 
`<p>Đạt <b>01</b> trong các tiêu chuẩn sau: <br>
- Đạt danh hiệu “Sinh viên khỏe” năm học 2020 - 2021. <br>
- Đạt giải trong hội thao cấp khoa trở lên trong năm học 2020 - 2021. <br>
- Là thành viên đội tuyển trường tham gia thi đấu các môn thể dục thể thao.

</p>`

const options = {
  replace: (domNode) => {
    if (domNode.attribs && domNode.attribs.class === "remove") {
      return <></>;
    }
  }
};

function ScriptHealth() {
  return parse(html, options);
}

render(<ScriptHealth />, document.getElementById("root"));
export default ScriptHealth;