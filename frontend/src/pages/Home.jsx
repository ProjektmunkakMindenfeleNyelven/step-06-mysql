import React from 'react';
import Navbar from '../components/Navbar';
import { toast } from 'react-toastify';

const Home = () => {
	let isLoggedIn = localStorage.getItem('isLoggedIn');
    let toasty = localStorage.getItem('toasty');

    useEffect(() => {
        console.log(Number(toasty) && Number(isLoggedIn));

        if (Number(toasty) && Number(isLoggedIn)) {
            localStorage.setItem('toasty', 0);
            toast.success('Sikeres belépés!');
        }
        localStorage.setItem('toasty', 0);
    }, []);
	
    return (
        <>
            <Navbar />
            <div className="home-kontener">
                <h1>Könyvek Áruháza</h1>
            </div>
        </>
    );
};

export default Home;
