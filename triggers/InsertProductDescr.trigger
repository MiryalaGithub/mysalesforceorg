trigger InsertProductDescr on Product2 (before insert) {
    for(Product2 prod: trigger.new){
        if(prod.description == null|| prod.description == ''  ){
            
             prod.description= prod.Name;
    }
        }
           

}