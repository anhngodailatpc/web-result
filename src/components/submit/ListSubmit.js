import React, { Fragment, useEffect, useState } from "react";


const ListSubmit = () => {
  const [submit, setSubmit] = useState([]);


  const deleteSubmit = async id => {
    try {
      const deleteSubmit = await fetch(`http://localhost:5000/submit/${id}`, {
        method: "DELETE"
      });

      setSubmit(submit.filter(student_submit => student_submit.id !== id));
    } catch (err) {
      console.error(err.message);
    }
  };

  const getSubmit = async () => {
    try {
      const response = await fetch("http://localhost:5000/submit");
      const jsonData = await response.json();

      setSubmit(jsonData);
    } catch (err) {
      console.error(err.message);
    }
  };

  useEffect(() => {
    getSubmit();
  }, []);

  console.log(submit);

  return (
    <Fragment>
      {" "}
      <table class="table mt-5 text-center">
        <thead>
          <tr>
            <th>Họ và tên</th>
            <th>Xoá</th>
          </tr>
        </thead>
        <tbody>
          {submit.map(student_submit => (
            <tr key={student_submit.id}>
              <td>{student_submit.name}</td>
              <td>
                <button
                  className="btn btn-danger"
                  onClick={() => deleteSubmit(student_submit.id)}
                >
                  Xoá
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </Fragment>
  );
};

export default ListSubmit;