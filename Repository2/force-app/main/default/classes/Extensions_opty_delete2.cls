public class Extensions_opty_delete2 {
    public list<opportunity>optylist{Set;get;}
    public Extensions_opty_delete2(apexpages.StandardSetController controller){
        list<string>fields=new list<string>{'name','stagename','closedate'};
            controller.addFields(fields);
      optylist=(list<opportunity>)controller.getSelected();  
    }
    public pagereference massdelete(){
        database.delete(optylist,false) ;
        pagereference p=new pagereference('/001/o');
        return p;
    }
}