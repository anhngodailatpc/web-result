import React from 'react'
import {Bar} from 'react-chartjs-2'

const Chart = () => {
    return (
        <div>
           <Bar
            data={{
                labels: ['Cấp Liên chi Hội', 'Cấp Trường', 'Cấp Đại học Quốc gia', 'Cấp Thành', 'Cấp Trung ương'],
                datasets: [{
                        label: 'Số Sinh viên',
                        data: [219, 103, 31, 5, 1],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                        ],
                        borderWidth: 1,
                    },
                ],
            }} 
            height={400}
            width={600}
            options={{
                maintainAspectRatio: false,
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: true
                            }
                        }
                    ]
                }
            }}
            />
        </div>
    )
}

export default Chart
