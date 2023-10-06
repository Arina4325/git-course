-- izmenenie dannih v tablice (naprimer izmenit vse znacheniya NULL ):

UPDATE Clients
SET Adress = 'Ne ukazan'
WHERE Adress is null