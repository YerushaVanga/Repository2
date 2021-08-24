public class map_1 {
  public map<string,list<string>>objmap{set;get;}
    public list<selectoption>objects{set;get;}
    public list<selectoption>fields{Set;get;}
    public string selected{Set;get;}
    public map_1(){
        objmap=new map<string,list<string>>();
        objects=new list<selectoption>();
        fields=new list<selectoption>();
        selectoption n=new selectoption('none','none');
        objects.add(n);
       fields.add(n) ;
        list<string>acfields=new list<string>{'name','phone','industry','rating'};
        list<string>confields=new list<string>{'firstname','lastname','phone','email'};
        list<string>optyfields=new list<string>{'name','stagename','closedate'};  
        objmap.put('Account',acfields);
         objmap.put('Contact',confields );
          objmap.put('opportunity',optyfields);
        set<string>objects1=objmap.keySet(); 
        for(string s:objects1){
            selectoption p=new selectoption(s,s);
            objects.add(p);
        }
      
    }
    public void search(){
        fields.clear();
        if(selected!='none') {
            system.debug('selected:'+selected);
  list<string>objf=objmap.get(selected);
           system.debug('fields:'+objf);
            for(string s:objf){
               selectoption p=new selectoption(s,s) ;
                 system.debug('options:'+p);
                fields.add(p);
                system.debug('fields:'+fields);
               
            }
}
        
    }
}