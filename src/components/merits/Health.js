import React, { Component } from "react";
import ScriptHealth from './script/ScriptHealth'
class Health extends Component {
  render() {
    return (
      <div>
      <h2 align='center'>Tiêu chí Thể lực tốt</h2>
      <ScriptHealth />
      </div>
    )
  }
}
export default Health;


