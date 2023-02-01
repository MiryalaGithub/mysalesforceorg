public class Example {
    public List<SelectOption> options {set; get;}
    Public Example(){
        
        SelectOption op1 = new SelectOption('none','-None-');	
        SelectOption op2 = new SelectOption('Hyd','TG');
        SelectOption op3 = new SelectOption('Ban','KA');
        SelectOption op4 = new SelectOption('Chn','TN');
        Options = new List<SelectOption>();
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
        
    }
    

}