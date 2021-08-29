import React from 'react';
import ReactPlayer from 'react-player';
import '../HeroSection';
import './Videos.css'


const Responsivevideo = ({url, onProgress}) => {
    return (
        <div className='player-wrapper'>
            <ReactPlayer
                className='react-player'
                url={url}
                width="100%"
                height="100%"
                controls={true}
                onProgress={onProgress}
            />
        </div>
    )
}

export default Responsivevideo
