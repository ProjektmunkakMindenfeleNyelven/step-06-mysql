// pool beállítása.
const pool = require('../utils/dbConnect');

// Felhasználok megjelenítésére szolgáló oldal létrehozása és exportálása.
exports.getFelhasznalok = async (req, res) => {
    try {
        const users = await pool.query('SELECT * FROM users');

        return res.status(200).render('felhasznalok.ejs', { users: users[0] });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};

// Egyedi felhasználó törlése.
exports.deleteFelhasznalo = async (req, res) => {
    try {
        const { id } = req.params;
        await pool.query('DELETE FROM users WHERE userid = ?', [id]);

        return res.status(200).json({ msg: 'Sikeres törlés!' });
    } catch (error) {
        return res.status(500).json({ msg: error.message });
    }
};
