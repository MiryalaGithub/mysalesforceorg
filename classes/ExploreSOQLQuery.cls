public class ExploreSOQLQuery {
    public List<Contact> cont{set; get;}
    public ExploreSOQLQuery(){
        cont = [SELECT Id , Name FROM Contact];
    }

}