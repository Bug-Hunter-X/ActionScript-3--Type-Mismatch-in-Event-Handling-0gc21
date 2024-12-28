function handleComplete(event:Event):void {
  // ... existing code ...

  if (someCondition) {
    trace("Condition met!");
    // Corrected code: Check the type of event.target before casting
    if (event.target is MyClass) {
      var myObject:MyClass = event.target as MyClass;
      myObject.someMethod();
    } else {
      trace("event.target is not a MyClass object. Event target type:", event.target);
      // Handle the error appropriately: log, fallback, etc.
    }
  }
}