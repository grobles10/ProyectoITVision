// const express = require('express');
// const pool = require('../db');

// const router = express.Router();

// // Ruta para manejar la recepción de datos del formulario
// router.post('/', async (req, res) => {
//   const { numerobastidor, marca, modelo, combustible, normativaeuro, aniofabricacion, kilometraje, grupoInspeccion, subgrupos } = req.body;
//   try {
//     const client = await pool.connect();
    
//     // Inserta los datos en tu tabla de base de datos
//     const result = await client.query(
//       'INSERT INTO primeraFase (numerobastidor, km, subgrupos) VALUES ($1, $2, $3) RETURNING *',
//       [numerobastidor, marca, modelo, combustible, normativaeuro, aniofabricacion, kilometraje, grupoInspeccion, JSON.stringify(subgrupos)]
//     );
    
//     client.release();
//     res.status(201).json(result.rows[0]);
//   } catch (error) {
//     console.error('Error inserting data:', error);
//     res.status(500).json({ error: 'Internal Server Error' });
//   }
// });

// module.exports = router;
