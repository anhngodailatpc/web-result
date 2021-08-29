import React, {useState} from 'react'
import './Watch.css'
import Responsivevideo from './Responsivevideos'

const Watch = () => {
    const [watchComplete, setWatchComplete] = useState(false)

    const handleWatchComplete = ({played}) => {
        if(played >= 1.3  && !watchComplete) {
            setWatchComplete(true)
        }
    }

    return (
        <div>
            <Responsivevideo
            url = "https://www.youtube.com/watch?v=2BKNQW3woMk"
            onProgress={handleWatchComplete} />
            <div className={watchComplete ? "marker marker--is-complete" : "marker marker--not-complete"}>
            Đã xem
            </div>
        </div>
    )
}

export default Watch