trigger FirstTrigger on Account (before insert, before update, after insert, after update) {
    /*if (Trigger.isBefore && Trigger.isInsert){
        system.debug('this all is before insert ' + Trigger.New[0]);
        system.debug('this all is before insert ' + Trigger.New[1]);
        system.debug('this all is before insert ' + Trigger.New[2]);
        system.debug('this all is before insert ' + Trigger.New[3]);
        system.debug('this all is before insert ' + Trigger.New[4]);
    }
    if(Trigger.isBefore  && Trigger.isUpdate){
        system.debug('yooouuuu you just made the update');
    }
    if (Trigger.isAfter  && Trigger.isInsert){
        system.debug('this all is after insert' + Trigger.New[0]);
        system.debug('this all is after insert' + Trigger.New[1]);
        system.debug('this all is after insert' + Trigger.New[2]);
        system.debug('this all is after insert' + Trigger.New[3]);
        system.debug('this all is after insert' + Trigger.New[4]);
    }
    if (Trigger.isAfter   && Trigger.isUpdate){
        system.debug('damn why u always showing me after an update ');
    }*/
    
    /*if (Trigger.isBefore  && Trigger.isUpdate){
        system.debug('this stores the old record value: ' + Trigger.old);
        system.debug('this one will store the new record vlue: ' + Trigger.new);
    } */
    
    if (Trigger.isAfter  && Trigger.isUpdate){
        system.debug('this will show old record id and recod value: ' + Trigger.oldMap);
        system.debug('this will show us new ones: ' + Trigger.newMap);
    }
    
}