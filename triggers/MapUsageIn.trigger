trigger MapUsageIn on Contact (after insert, after Update) {
    accountIdwithContactFieldMap.methodMap(Trigger.new);
   
}