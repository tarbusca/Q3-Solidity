<<<<<<< HEAD
// -----------------------Assignment 1   --------------------

pragma solidity ^0.8.0;

// ----------------------- Step 1 -----------------------
contract ParentVehicle {      
    
    event Messages(string);
    
    function start() public returns(string memory) {
        
        emit Messages("The vehicle has just started");
        return("The vehicle has just started");
    }

    function stop() public returns(string memory) {
        
        emit Messages("The vehicle has just stoped");
        return("The vehicle has just stoped");
    }

    function accelerate() public returns(string memory) {
        
        emit Messages("The vehicle has just accelerated");
        return("The vehicle has just accelerated");
    }

    function service() virtual public returns(string memory) {
        
        emit Messages("The vehicle is being serviced");
        return("The vehicle is being serviced");
    }
}
    // ------------------ Step 2 ------------------------
contract car is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Car is being serviced");
        return("Car is being serviced");
    }
    
}

contract truck is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Truck is being serviced");
        return("Truck is being serviced");
    }
    
}

contract motorCycle is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Motorcycle is being serviced");
        return("Motorcycle is being serviced");
    }
    
}
//--------------------- Step 3 ---------------------

contract altoMehran is car {}

contract Hino is truck {}

contract Yamaha is motorCycle {}

//---------------------- Step 4 ----------------------

contract workshop {
    
    function serviceStationHino(Hino) public  returns (string memory) {
         truck veh = new Hino();
         return(veh.service());
    }
    
    function serviceStationYamaha(Yamaha) public  returns (string memory) {
         motorCycle veh = new Yamaha();
         return(veh.service());
    }
    
        function serviceStationAltomehran(altoMehran) public  returns (string memory) {
         car veh = new altoMehran();
         return(veh.service());
    }


}


=======
// -----------------------Assignment 1   --------------------

pragma solidity ^0.8.0;

// ----------------------- Step 1 -----------------------
contract ParentVehicle {      
    
    event Messages(string);
    
    function start() public returns(string memory) {
        
        emit Messages("The vehicle has just started");
        return("The vehicle has just started");
    }

    function stop() public returns(string memory) {
        
        emit Messages("The vehicle has just stoped");
        return("The vehicle has just stoped");
    }

    function accelerate() public returns(string memory) {
        
        emit Messages("The vehicle has just accelerated");
        return("The vehicle has just accelerated");
    }

    function service() virtual public returns(string memory) {
        
        emit Messages("The vehicle is being serviced");
        return("The vehicle is being serviced");
    }
}
    // ------------------ Step 2 ------------------------
contract car is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Car is being serviced");
        return("Car is being serviced");
    }
    
}

contract truck is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Truck is being serviced");
        return("Truck is being serviced");
    }
    
}

contract motorCycle is ParentVehicle {
    
    function service() public override returns(string memory) {
        
        emit Messages("Motorcycle is being serviced");
        return("Motorcycle is being serviced");
    }
    
}
//--------------------- Step 3 ---------------------

contract altoMehran is car {}

contract Hino is truck {}

contract Yamaha is motorCycle {}

//---------------------- Step 4 ----------------------

contract workshop {
    
    function serviceStationHino(Hino) public  returns (string memory) {
         truck veh = new Hino();
         return(veh.service());
    }
    
    function serviceStationYamaha(Yamaha) public  returns (string memory) {
         motorCycle veh = new Yamaha();
         return(veh.service());
    }
    
        function serviceStationAltomehran(altoMehran) public  returns (string memory) {
         car veh = new altoMehran();
         return(veh.service());
    }


}


>>>>>>> 6e1b223f08374331d2f9ac44631dfe6881144554
