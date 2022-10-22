pragma solidity ^0.5.0;

contract simplestorage {
   string public nombreCliente;
   string public DocumentoCliente;
   string public matriculaVehiculo;
   string public numeroPoliza;
   string public estadoPoliza;
   string public fechaVencimiento;
   

   event DataStored (
    string nombreCliente,
    string  DocumentoCliente,
    string  matriculaVehiculo,
    string  numeroPoliza,
    string  estadoPoliza,
    string  fechaVencimiento
   
   );

   constructor(string memory nombreC, string memory DocumentoC, string memory matriculaV, string memory numeroP, string memory estadoP,string memory fechaV ) public {
      nombreCliente = nombreC;
      DocumentoCliente =DocumentoC;
      matriculaVehiculo =matriculaV;
      numeroPoliza =numeroP;
      estadoPoliza = estadoP;
      fechaVencimiento = fechaV;
   }

   function set(string memory nombreC, string memory DocumentoC, string memory matriculaV, string memory numeroP, string memory estadoP,string memory fechaV ) public returns (string memory value) {
       nombreCliente = nombreC;
      emit DataStored(nombreC, DocumentoC, matriculaV, numeroP, estadoP, fechaV);

      return nombreCliente;
   }

   function getnombreCliente() public view returns (string memory retVal) {
      return nombreCliente;
   }

   function getDocumentoCliente() public view returns (string memory retVal) {
      return DocumentoCliente;
   }

   function getmatriculaVehiculo() public view returns (string memory retVal) {
      return matriculaVehiculo;
   }

   function getnumeroPoliza() public view returns (string memory retVal) {
      return numeroPoliza;
   }

   function getestadoPoliza() public view returns (string memory retVal) {
      return estadoPoliza;
   }

   function getfechaVencimiento() public view returns (string memory retVal) {
      return fechaVencimiento;
   }

   function query() public view returns (string memory retVal) {
      return numeroPoliza;
   }
}
