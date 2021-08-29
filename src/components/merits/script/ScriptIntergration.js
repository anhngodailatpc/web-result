import React from "react";
import { render } from "react-dom";
import parse from "html-react-parser";

const html = 
`<p> 
- Đạt trình độ tiếng Anh TOEIC 500 hoặc tương đương trở lên; TOEIC 400 hoặc tương đương trở lên (đối với sinh viên hệ VHVL); hoặc trình độ B1 với các ngoại ngữ khác. <br>
- Tham gia hoạt động giao lưu quốc tế, các chương trình gặp gỡ, giao lưu, hợp tác với thanh niên, sinh viên quốc tế tại nước ngoài. <br>

</p>`

const options = {
  replace: (domNode) => {
    if (domNode.attribs && domNode.attribs.class === "remove") {
      return <></>;
    }
  }
};

function ScriptIntergration() {
  return parse(html, options);
}

render(<ScriptIntergration />, document.getElementById("root"));
export default ScriptIntergration;