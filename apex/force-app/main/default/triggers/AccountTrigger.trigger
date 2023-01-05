trigger AccountTrigger on Account (before delete) {
    public static final String NEW_YORK = 'New York';
    public static final String NY = 'NY';
    
    for(Account acct : trigger.old){
            if(acct.BillingState.equals(NY) || acct.BillingState.equals(NEW_YORK)){
                acct.adderror('An account with a person mailing state is NY can not be deleted');
            }
     }
}