import React from "react";
import HorizontalTimeline from "react-horizontal-timeline";

const EXAMPLE = [
  {
    data: "2021-09-01",
    status: "status",
    statusB: "Đăng ký trực tuyến",
    statusE: "Admission Open"
  },
  {
    data: "2020-09-30",
    status: "status",
    statusB: "Hội thu hồ sơ vòng 1",
    statusE: "Open for Fillup"
  },
  {
    data: "2020-10-10",
    status: "status",
    statusB: "Hội thu bổ sung hồ sơ vòng 2",
    statusE: "process"
  },
  {
    data: "2020-10-30",
    status: "status",
    statusB: "Hội thu hồ sơ Sinh viên 5 tốt cấp Đại học Quốc gia",
    statusE: "Done"
  },
  {
    data: "2020-11-01",
    status: "status",
    statusB: "Công bố kết quả đạt chuẩn danh hiệu Sinh viên 5 tốt cấp trường",
    statusE: "Done"
  },
  {
    data: "2022-01-09",
    status: "status",
    statusB: "Lễ tuyên dương Sinh viên 5 tốt cấp Trường năm 2020",
    statusE: "Done"
  }
];

export default class Timeline extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      curIdx: 0,
      prevIdx: -1
    };
  }

  //state = { value: 0, previous: 0 };

  render() {
    const { curIdx, prevIdx } = this.state;
    const curStatus = EXAMPLE[curIdx].statusB;
    const prevStatus = prevIdx >= 0 ? EXAMPLE[prevIdx].statusB : "";

    return (
      <div>
        <div
          style={{
            width: "80%",
            height: "100px",
            margin: "0 auto",
            marginTop: "20px",
            fontSize: "15px"
          }}
        >
          <HorizontalTimeline
            styles={{
              background: "#f8f8f8",
              foreground: "#1A79AD",
              outline: "#dfdfdf"
            }}
            index={this.state.curIdx}
            indexClick={(index) => {
              const curIdx = this.state.curIdx;
              this.setState({ curIdx: index, prevIdx: curIdx });
            }}
            values={EXAMPLE.map((x) => x.data)}
          />
        </div>
        <div className="text-center">
          {curStatus}
        </div>
      </div>
    );
  }
}
