// pool beállítása.
const pool = require('../utils/dbConnect');

// Egyedi könyv megjelenítésére szolgáló oldal létrehozása és exportálása.
exports.getEgyediFrontendKonyv = async (req, res) => {
    try {
        const { id } = req.params;
        const book = await pool.query('SELECT * FROM books WHERE bookid = ?', [
            id,
        ]);

        return res.status(200).json({ book: book[0][0] });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};
