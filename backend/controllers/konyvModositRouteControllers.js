// pool beállítása.
const pool = require('../utils/dbConnect');

// Egyedi könyv megjelenítésére szolgáló oldal létrehozása és exportálása.
exports.getKonyv = async (req, res) => {
    try {
        const { id } = req.params;
        const book = await pool.query('SELECT * FROM books WHERE bookid = ?', [
            id,
        ]);

        return res.status(200).render('konyvModosit.ejs', { book: book[0][0] });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};

// Egyedi könyv frissítése.
exports.updateKonyv = async (req, res) => {
    try {
        const { id } = req.params;
        const { cim, szerzo, ar, oldalszam, kep, tipus } = req.body;

        await pool.query(
            'UPDATE books SET cim = ?, szerzo = ?, ar = ?, oldalszam = ?, kep = ?, tipus = ? WHERE bookid = ?',
            [cim, szerzo, Number(ar), Number(oldalszam), kep, tipus, id]
        );

        return res.status(200).json({ msg: 'Sikeres frissítés!' });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};

// Egyedi könyv törlése.
exports.deleteKonyv = async (req, res) => {
    try {
        const { id } = req.params;
        await pool.query('DELETE FROM books WHERE bookid = ?', [id]);

        return res.status(200).json({ msg: 'Sikeres törlés!' });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};
