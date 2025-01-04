// pool beállítása.
const pool = require('../utils/dbConnect');

// Könyvek megjelenítésére szolgáló oldal létrehozása és exportálása.
exports.getKonyvekFrontend = async (req, res) => {
    try {
        const books = await pool.query('SELECT * FROM books');

        return res.status(200).json({ books: books[0] });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};
