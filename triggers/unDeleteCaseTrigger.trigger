trigger unDeleteCaseTrigger on Case (After unDelete) {
    caseTriggerHandler handler = new caseTriggerHandler();
    handler.onDelete(trigger.newMap);

}