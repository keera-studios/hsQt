/////////////////////////////////////////////////////////////////////////////
//      
//      File      : QUndoGroup_DhClass.cpp
//      Copyright : (c) David Harley 2010
//      Project   : qtHaskell
//      Version   : 1.1.4
//      Modified  : 2010-09-02 17:02:11
//      
//      Warning   : this file is machine generated - do not modify.
//      
/////////////////////////////////////////////////////////////////////////////

#include <gui/QUndoGroup_DhClass.h>

void DhQUndoGroup::userDefined(int x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSetud(x1,(void*&)ro_ptr,(void*&)rf_ptr,0)) (*(void(*)(void*))rf_ptr)(ro_ptr);
}

QVariant* DhQUndoGroup::userDefinedVariant(int x1, QVariant* x2) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSetud(x1,(void*&)ro_ptr,(void*&)rf_ptr,1)) return (QVariant*)(*(void*(*)(void*,void*))rf_ptr)(ro_ptr, (void*)x2);
  return NULL
;}

void DhQUndoGroup::childEvent(QChildEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(0,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::childEvent(x1);
}

void DhQUndoGroup::DhchildEvent(QChildEvent* x1) {
  return QObject::childEvent(x1);
}

void DhQUndoGroup::DvhchildEvent(QChildEvent* x1) {
  return childEvent(x1);
}

void DhQUndoGroup::connectNotify(const char* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(1,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::connectNotify(x1);
}

void DhQUndoGroup::DhconnectNotify(const char* x1) {
  return QObject::connectNotify(x1);
}

void DhQUndoGroup::DvhconnectNotify(const char* x1) {
  return connectNotify(x1);
}

void DhQUndoGroup::customEvent(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(2,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::customEvent(x1);
}

void DhQUndoGroup::DhcustomEvent(QEvent* x1) {
  return QObject::customEvent(x1);
}

void DhQUndoGroup::DvhcustomEvent(QEvent* x1) {
  return customEvent(x1);
}

void DhQUndoGroup::disconnectNotify(const char* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(3,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::disconnectNotify(x1);
}

void DhQUndoGroup::DhdisconnectNotify(const char* x1) {
  return QObject::disconnectNotify(x1);
}

void DhQUndoGroup::DvhdisconnectNotify(const char* x1) {
  return disconnectNotify(x1);
}

bool DhQUndoGroup::event(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(4,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::event(x1);
}

bool DhQUndoGroup::Dhevent(QEvent* x1) {
  return QObject::event(x1);
}

bool DhQUndoGroup::Dvhevent(QEvent* x1) {
  return event(x1);
}

bool DhQUndoGroup::eventFilter(QObject* x1, QEvent* x2) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(5,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*,void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QPointer<QObject>((QObject*)x1)), (void*)x2);
  return QObject::eventFilter(x1, x2);
}

bool DhQUndoGroup::DheventFilter(QObject* x1, QEvent* x2) {
  return QObject::eventFilter(x1, x2);
}

bool DhQUndoGroup::DvheventFilter(QObject* x1, QEvent* x2) {
  return eventFilter(x1, x2);
}

int DhQUndoGroup::receivers(const char* x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(6,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(int(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::receivers(x1);
}

int DhQUndoGroup::Dhreceivers(const char* x1) const {
  return QObject::receivers(x1);
}

int DhQUndoGroup::Dvhreceivers(const char* x1) const {
  return receivers(x1);
}

QObject* DhQUndoGroup::sender() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(7,(void*&)ro_ptr,(void*&)rf_ptr)) {
    QObject * tr = *((QPointer<QObject>*)(*(void*(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr)))));
    return (QObject*)tr;
  }
  return QObject::sender();
}

QObject* DhQUndoGroup::Dhsender() const {
  return QObject::sender();
}

QObject* DhQUndoGroup::Dvhsender() const {
  return sender();
}

void DhQUndoGroup::timerEvent(QTimerEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(8,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::timerEvent(x1);
}

void DhQUndoGroup::DhtimerEvent(QTimerEvent* x1) {
  return QObject::timerEvent(x1);
}

void DhQUndoGroup::DvhtimerEvent(QTimerEvent* x1) {
  return timerEvent(x1);
}

QHash <QByteArray, int> DhQUndoGroup::initXhHash() {
  QHash <QByteArray, int> txh;
  txh[QMetaObject::normalizedSignature("childEvent(QChildEvent*)")] = 0;
  txh[QMetaObject::normalizedSignature("connectNotify(const char*)")] = 1;
  txh[QMetaObject::normalizedSignature("customEvent(QEvent*)")] = 2;
  txh[QMetaObject::normalizedSignature("disconnectNotify(const char*)")] = 3;
  txh[QMetaObject::normalizedSignature("(bool)event(QEvent*)")] = 4;
  txh[QMetaObject::normalizedSignature("(bool)eventFilter(QObject*,QEvent*)")] = 5;
  txh[QMetaObject::normalizedSignature("(int)receivers(const char*)")] = 6;
  txh[QMetaObject::normalizedSignature("(QObject*)sender()")] = 7;
  txh[QMetaObject::normalizedSignature("timerEvent(QTimerEvent*)")] = 8;
  return txh;
}

QHash <QByteArray, int> DhQUndoGroup::xhHash = DhQUndoGroup::initXhHash();

bool DhQUndoGroup::setDynamicQHandler(void * ro_ptr, char * eventId, void * rf_ptr, void * st_ptr, void * df_ptr) {
  QByteArray theHandler = QMetaObject::normalizedSignature(eventId);
  if (xhHash.contains(theHandler)) {
    int thir = xhHash.value(theHandler);
    return isetDynamicQHandler(ro_ptr, thir, rf_ptr, st_ptr, df_ptr);
  }
  return false;
}

bool DhQUndoGroup::setDynamicQHandlerud(int udtyp, void * ro_ptr, int eventId, void * rf_ptr, void * st_ptr, void * df_ptr) {
  if ((udtyp < 0) || (udtyp > 2)) {
    return false;
  }
  return isetDynamicQHandlerud(ro_ptr, eventId, rf_ptr, st_ptr, df_ptr, udtyp);
}

bool DhQUndoGroup::unSetDynamicQHandler(char * eventId) {
  QByteArray theHandler = QMetaObject::normalizedSignature(eventId);
  if (xhHash.contains(theHandler)) {
    int thir = xhHash.value(theHandler);
    return iunSetDynamicQHandler(thir);
  }
  return false;
}

bool DhQUndoGroup::unSetDynamicQHandlerud(int udtyp, int eventId) {
  if ((udtyp < 0) || (udtyp > 2)) {
    return false;
  }
  return iunSetDynamicQHandlerud(eventId, udtyp);
}
