-- -----------------------------------------------------
-- Cambié el ID pensando que era una errata, así que lo vuelvo a cambiar a como debería estar (duplicado) para luego eliminarlos.
-- -----------------------------------------------------


update Cars
set VIN = 'AM41UDN3CHU2WVF6'
where VIN = 'AM41UDN3CHU2WVF7'

delete from Cars
where model = 'V60'
