/////////////////////////////////////////////////////////////////////////////
//      
//      File      : QScrollBar_DhClass.cpp
//      Copyright : (c) David Harley 2010
//      Project   : qtHaskell
//      Version   : 1.1.4
//      Modified  : 2010-09-02 17:01:57
//      
//      Warning   : this file is machine generated - do not modify.
//      
/////////////////////////////////////////////////////////////////////////////

#include <gui/QScrollBar_DhClass.h>

void DhQScrollBar::userDefined(int x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSetud(x1,(void*&)ro_ptr,(void*&)rf_ptr,0)) (*(void(*)(void*))rf_ptr)(ro_ptr);
}

QVariant* DhQScrollBar::userDefinedVariant(int x1, QVariant* x2) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSetud(x1,(void*&)ro_ptr,(void*&)rf_ptr,1)) return (QVariant*)(*(void*(*)(void*,void*))rf_ptr)(ro_ptr, (void*)x2);
  return NULL
;}

void DhQScrollBar::contextMenuEvent(QContextMenuEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(0,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::contextMenuEvent(x1);
}

void DhQScrollBar::DhcontextMenuEvent(QContextMenuEvent* x1) {
  return QScrollBar::contextMenuEvent(x1);
}

void DhQScrollBar::DvhcontextMenuEvent(QContextMenuEvent* x1) {
  return contextMenuEvent(x1);
}

bool DhQScrollBar::event(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(1,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::event(x1);
}

bool DhQScrollBar::Dhevent(QEvent* x1) {
  return QScrollBar::event(x1);
}

bool DhQScrollBar::Dvhevent(QEvent* x1) {
  return event(x1);
}

void DhQScrollBar::hideEvent(QHideEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(2,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::hideEvent(x1);
}

void DhQScrollBar::DhhideEvent(QHideEvent* x1) {
  return QScrollBar::hideEvent(x1);
}

void DhQScrollBar::DvhhideEvent(QHideEvent* x1) {
  return hideEvent(x1);
}

void DhQScrollBar::initStyleOption(QStyleOptionSlider* x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(3,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::initStyleOption(x1);
}

void DhQScrollBar::DhinitStyleOption(QStyleOptionSlider* x1) const {
  return QScrollBar::initStyleOption(x1);
}

void DhQScrollBar::DvhinitStyleOption(QStyleOptionSlider* x1) const {
  return initStyleOption(x1);
}

void DhQScrollBar::mouseMoveEvent(QMouseEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(4,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::mouseMoveEvent(x1);
}

void DhQScrollBar::DhmouseMoveEvent(QMouseEvent* x1) {
  return QScrollBar::mouseMoveEvent(x1);
}

void DhQScrollBar::DvhmouseMoveEvent(QMouseEvent* x1) {
  return mouseMoveEvent(x1);
}

void DhQScrollBar::mousePressEvent(QMouseEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(5,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::mousePressEvent(x1);
}

void DhQScrollBar::DhmousePressEvent(QMouseEvent* x1) {
  return QScrollBar::mousePressEvent(x1);
}

void DhQScrollBar::DvhmousePressEvent(QMouseEvent* x1) {
  return mousePressEvent(x1);
}

void DhQScrollBar::mouseReleaseEvent(QMouseEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(6,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::mouseReleaseEvent(x1);
}

void DhQScrollBar::DhmouseReleaseEvent(QMouseEvent* x1) {
  return QScrollBar::mouseReleaseEvent(x1);
}

void DhQScrollBar::DvhmouseReleaseEvent(QMouseEvent* x1) {
  return mouseReleaseEvent(x1);
}

void DhQScrollBar::paintEvent(QPaintEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(7,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QScrollBar::paintEvent(x1);
}

void DhQScrollBar::DhpaintEvent(QPaintEvent* x1) {
  return QScrollBar::paintEvent(x1);
}

void DhQScrollBar::DvhpaintEvent(QPaintEvent* x1) {
  return paintEvent(x1);
}

QSize DhQScrollBar::sizeHint() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(8,(void*&)ro_ptr,(void*&)rf_ptr)) return *(QSize*)(*(void*(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QScrollBar::sizeHint();
}

QSize DhQScrollBar::DhsizeHint() const {
  return QScrollBar::sizeHint();
}

QSize DhQScrollBar::DvhsizeHint() const {
  return sizeHint();
}

void DhQScrollBar::sliderChange(QAbstractSlider::SliderChange x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(10,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,long))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1);
  return QScrollBar::sliderChange(x1);
}

void DhQScrollBar::DhsliderChange(long x1) {
  return QScrollBar::sliderChange((QAbstractSlider::SliderChange)x1);
}

void DhQScrollBar::DvhsliderChange(long x1) {
  return sliderChange((QAbstractSlider::SliderChange)x1);
}

void DhQScrollBar::changeEvent(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(11,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QAbstractSlider::changeEvent(x1);
}

void DhQScrollBar::DhchangeEvent(QEvent* x1) {
  return QAbstractSlider::changeEvent(x1);
}

void DhQScrollBar::DvhchangeEvent(QEvent* x1) {
  return changeEvent(x1);
}

void DhQScrollBar::keyPressEvent(QKeyEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(12,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QAbstractSlider::keyPressEvent(x1);
}

void DhQScrollBar::DhkeyPressEvent(QKeyEvent* x1) {
  return QAbstractSlider::keyPressEvent(x1);
}

void DhQScrollBar::DvhkeyPressEvent(QKeyEvent* x1) {
  return keyPressEvent(x1);
}

QAbstractSlider::SliderAction DhQScrollBar::repeatAction() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(13,(void*&)ro_ptr,(void*&)rf_ptr)) return (QAbstractSlider::SliderAction)(*(long(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QAbstractSlider::repeatAction();
}

QAbstractSlider::SliderAction DhQScrollBar::DhrepeatAction() const {
  return QAbstractSlider::repeatAction();
}

QAbstractSlider::SliderAction DhQScrollBar::DvhrepeatAction() const {
  return repeatAction();
}

void DhQScrollBar::setRepeatAction(QAbstractSlider::SliderAction x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(14,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,long))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1);
  return QAbstractSlider::setRepeatAction(x1);
}

void DhQScrollBar::DhsetRepeatAction(long x1) {
  return QAbstractSlider::setRepeatAction((QAbstractSlider::SliderAction)x1);
}

void DhQScrollBar::DvhsetRepeatAction(long x1) {
  return setRepeatAction((QAbstractSlider::SliderAction)x1);
}

void DhQScrollBar::setRepeatAction(QAbstractSlider::SliderAction x1, int x2) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(15,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,long,int))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1, x2);
  return QAbstractSlider::setRepeatAction(x1, x2);
}

void DhQScrollBar::DhsetRepeatAction(long x1, int x2) {
  return QAbstractSlider::setRepeatAction((QAbstractSlider::SliderAction)x1, x2);
}

void DhQScrollBar::DvhsetRepeatAction(long x1, int x2) {
  return setRepeatAction((QAbstractSlider::SliderAction)x1, x2);
}

void DhQScrollBar::setRepeatAction(QAbstractSlider::SliderAction x1, int x2, int x3) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(16,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,long,int,int))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1, x2, x3);
  return QAbstractSlider::setRepeatAction(x1, x2, x3);
}

void DhQScrollBar::DhsetRepeatAction(long x1, int x2, int x3) {
  return QAbstractSlider::setRepeatAction((QAbstractSlider::SliderAction)x1, x2, x3);
}

void DhQScrollBar::DvhsetRepeatAction(long x1, int x2, int x3) {
  return setRepeatAction((QAbstractSlider::SliderAction)x1, x2, x3);
}

void DhQScrollBar::timerEvent(QTimerEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(17,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QAbstractSlider::timerEvent(x1);
}

void DhQScrollBar::DhtimerEvent(QTimerEvent* x1) {
  return QAbstractSlider::timerEvent(x1);
}

void DhQScrollBar::DvhtimerEvent(QTimerEvent* x1) {
  return timerEvent(x1);
}

void DhQScrollBar::wheelEvent(QWheelEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(18,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QAbstractSlider::wheelEvent(x1);
}

void DhQScrollBar::DhwheelEvent(QWheelEvent* x1) {
  return QAbstractSlider::wheelEvent(x1);
}

void DhQScrollBar::DvhwheelEvent(QWheelEvent* x1) {
  return wheelEvent(x1);
}

void DhQScrollBar::actionEvent(QActionEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(19,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::actionEvent(x1);
}

void DhQScrollBar::DhactionEvent(QActionEvent* x1) {
  return QWidget::actionEvent(x1);
}

void DhQScrollBar::DvhactionEvent(QActionEvent* x1) {
  return actionEvent(x1);
}

void DhQScrollBar::closeEvent(QCloseEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(20,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::closeEvent(x1);
}

void DhQScrollBar::DhcloseEvent(QCloseEvent* x1) {
  return QWidget::closeEvent(x1);
}

void DhQScrollBar::DvhcloseEvent(QCloseEvent* x1) {
  return closeEvent(x1);
}

void DhQScrollBar::create() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(21,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::create();
}

void DhQScrollBar::Dhcreate() {
  return QWidget::create();
}

void DhQScrollBar::Dvhcreate() {
  return create();
}

void DhQScrollBar::create(WId x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(22,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::create(x1);
}

void DhQScrollBar::Dhcreate(WId x1) {
  return QWidget::create(x1);
}

void DhQScrollBar::Dvhcreate(WId x1) {
  return create(x1);
}

void DhQScrollBar::create(WId x1, bool x2) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(23,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1, x2);
  return QWidget::create(x1, x2);
}

void DhQScrollBar::Dhcreate(WId x1, bool x2) {
  return QWidget::create(x1, x2);
}

void DhQScrollBar::Dvhcreate(WId x1, bool x2) {
  return create(x1, x2);
}

void DhQScrollBar::create(WId x1, bool x2, bool x3) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(24,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*,bool,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1, x2, x3);
  return QWidget::create(x1, x2, x3);
}

void DhQScrollBar::Dhcreate(WId x1, bool x2, bool x3) {
  return QWidget::create(x1, x2, x3);
}

void DhQScrollBar::Dvhcreate(WId x1, bool x2, bool x3) {
  return create(x1, x2, x3);
}

void DhQScrollBar::destroy() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(25,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::destroy();
}

void DhQScrollBar::Dhdestroy() {
  return QWidget::destroy();
}

void DhQScrollBar::Dvhdestroy() {
  return destroy();
}

void DhQScrollBar::destroy(bool x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(26,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::destroy(x1);
}

void DhQScrollBar::Dhdestroy(bool x1) {
  return QWidget::destroy(x1);
}

void DhQScrollBar::Dvhdestroy(bool x1) {
  return destroy(x1);
}

void DhQScrollBar::destroy(bool x1, bool x2) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(27,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,bool,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1, x2);
  return QWidget::destroy(x1, x2);
}

void DhQScrollBar::Dhdestroy(bool x1, bool x2) {
  return QWidget::destroy(x1, x2);
}

void DhQScrollBar::Dvhdestroy(bool x1, bool x2) {
  return destroy(x1, x2);
}

int DhQScrollBar::devType() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(28,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(int(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::devType();
}

int DhQScrollBar::DhdevType() const {
  return QWidget::devType();
}

int DhQScrollBar::DvhdevType() const {
  return devType();
}

void DhQScrollBar::dragEnterEvent(QDragEnterEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(29,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::dragEnterEvent(x1);
}

void DhQScrollBar::DhdragEnterEvent(QDragEnterEvent* x1) {
  return QWidget::dragEnterEvent(x1);
}

void DhQScrollBar::DvhdragEnterEvent(QDragEnterEvent* x1) {
  return dragEnterEvent(x1);
}

void DhQScrollBar::dragLeaveEvent(QDragLeaveEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(30,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::dragLeaveEvent(x1);
}

void DhQScrollBar::DhdragLeaveEvent(QDragLeaveEvent* x1) {
  return QWidget::dragLeaveEvent(x1);
}

void DhQScrollBar::DvhdragLeaveEvent(QDragLeaveEvent* x1) {
  return dragLeaveEvent(x1);
}

void DhQScrollBar::dragMoveEvent(QDragMoveEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(31,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::dragMoveEvent(x1);
}

void DhQScrollBar::DhdragMoveEvent(QDragMoveEvent* x1) {
  return QWidget::dragMoveEvent(x1);
}

void DhQScrollBar::DvhdragMoveEvent(QDragMoveEvent* x1) {
  return dragMoveEvent(x1);
}

void DhQScrollBar::dropEvent(QDropEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(32,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::dropEvent(x1);
}

void DhQScrollBar::DhdropEvent(QDropEvent* x1) {
  return QWidget::dropEvent(x1);
}

void DhQScrollBar::DvhdropEvent(QDropEvent* x1) {
  return dropEvent(x1);
}

void DhQScrollBar::enabledChange(bool x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(33,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::enabledChange(x1);
}

void DhQScrollBar::DhenabledChange(bool x1) {
  return QWidget::enabledChange(x1);
}

void DhQScrollBar::DvhenabledChange(bool x1) {
  return enabledChange(x1);
}

void DhQScrollBar::enterEvent(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(34,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::enterEvent(x1);
}

void DhQScrollBar::DhenterEvent(QEvent* x1) {
  return QWidget::enterEvent(x1);
}

void DhQScrollBar::DvhenterEvent(QEvent* x1) {
  return enterEvent(x1);
}

void DhQScrollBar::focusInEvent(QFocusEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(35,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::focusInEvent(x1);
}

void DhQScrollBar::DhfocusInEvent(QFocusEvent* x1) {
  return QWidget::focusInEvent(x1);
}

void DhQScrollBar::DvhfocusInEvent(QFocusEvent* x1) {
  return focusInEvent(x1);
}

bool DhQScrollBar::focusNextChild() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(36,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::focusNextChild();
}

bool DhQScrollBar::DhfocusNextChild() {
  return QWidget::focusNextChild();
}

bool DhQScrollBar::DvhfocusNextChild() {
  return focusNextChild();
}

bool DhQScrollBar::focusNextPrevChild(bool x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(37,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::focusNextPrevChild(x1);
}

bool DhQScrollBar::DhfocusNextPrevChild(bool x1) {
  return QWidget::focusNextPrevChild(x1);
}

bool DhQScrollBar::DvhfocusNextPrevChild(bool x1) {
  return focusNextPrevChild(x1);
}

void DhQScrollBar::focusOutEvent(QFocusEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(38,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::focusOutEvent(x1);
}

void DhQScrollBar::DhfocusOutEvent(QFocusEvent* x1) {
  return QWidget::focusOutEvent(x1);
}

void DhQScrollBar::DvhfocusOutEvent(QFocusEvent* x1) {
  return focusOutEvent(x1);
}

bool DhQScrollBar::focusPreviousChild() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(39,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::focusPreviousChild();
}

bool DhQScrollBar::DhfocusPreviousChild() {
  return QWidget::focusPreviousChild();
}

bool DhQScrollBar::DvhfocusPreviousChild() {
  return focusPreviousChild();
}

void DhQScrollBar::fontChange(const QFont& x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(40,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)&x1);
  return QWidget::fontChange(x1);
}

void DhQScrollBar::DhfontChange(const QFont& x1) {
  return QWidget::fontChange(x1);
}

void DhQScrollBar::DvhfontChange(const QFont& x1) {
  return fontChange(x1);
}

int DhQScrollBar::heightForWidth(int x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(41,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(int(*)(void*,int))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::heightForWidth(x1);
}

int DhQScrollBar::DhheightForWidth(int x1) const {
  return QWidget::heightForWidth(x1);
}

int DhQScrollBar::DvhheightForWidth(int x1) const {
  return heightForWidth(x1);
}

void DhQScrollBar::inputMethodEvent(QInputMethodEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(42,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::inputMethodEvent(x1);
}

void DhQScrollBar::DhinputMethodEvent(QInputMethodEvent* x1) {
  return QWidget::inputMethodEvent(x1);
}

void DhQScrollBar::DvhinputMethodEvent(QInputMethodEvent* x1) {
  return inputMethodEvent(x1);
}

QVariant DhQScrollBar::inputMethodQuery(Qt::InputMethodQuery x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(43,(void*&)ro_ptr,(void*&)rf_ptr)) return *(QVariant*)(*(void*(*)(void*,long))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1);
  return QWidget::inputMethodQuery(x1);
}

QVariant DhQScrollBar::DhinputMethodQuery(long x1) const {
  return QWidget::inputMethodQuery((Qt::InputMethodQuery)x1);
}

QVariant DhQScrollBar::DvhinputMethodQuery(long x1) const {
  return inputMethodQuery((Qt::InputMethodQuery)x1);
}

void DhQScrollBar::keyReleaseEvent(QKeyEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(44,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::keyReleaseEvent(x1);
}

void DhQScrollBar::DhkeyReleaseEvent(QKeyEvent* x1) {
  return QWidget::keyReleaseEvent(x1);
}

void DhQScrollBar::DvhkeyReleaseEvent(QKeyEvent* x1) {
  return keyReleaseEvent(x1);
}

void DhQScrollBar::languageChange() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(45,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::languageChange();
}

void DhQScrollBar::DhlanguageChange() {
  return QWidget::languageChange();
}

void DhQScrollBar::DvhlanguageChange() {
  return languageChange();
}

void DhQScrollBar::leaveEvent(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(46,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::leaveEvent(x1);
}

void DhQScrollBar::DhleaveEvent(QEvent* x1) {
  return QWidget::leaveEvent(x1);
}

void DhQScrollBar::DvhleaveEvent(QEvent* x1) {
  return leaveEvent(x1);
}

int DhQScrollBar::metric(QPaintDevice::PaintDeviceMetric x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(47,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(int(*)(void*,long))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (long)x1);
  return QWidget::metric(x1);
}

int DhQScrollBar::Dhmetric(long x1) const {
  return QWidget::metric((QPaintDevice::PaintDeviceMetric)x1);
}

int DhQScrollBar::Dvhmetric(long x1) const {
  return metric((QPaintDevice::PaintDeviceMetric)x1);
}

QSize DhQScrollBar::minimumSizeHint() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(48,(void*&)ro_ptr,(void*&)rf_ptr)) return *(QSize*)(*(void*(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::minimumSizeHint();
}

QSize DhQScrollBar::DhminimumSizeHint() const {
  return QWidget::minimumSizeHint();
}

QSize DhQScrollBar::DvhminimumSizeHint() const {
  return minimumSizeHint();
}

void DhQScrollBar::mouseDoubleClickEvent(QMouseEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(50,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::mouseDoubleClickEvent(x1);
}

void DhQScrollBar::DhmouseDoubleClickEvent(QMouseEvent* x1) {
  return QWidget::mouseDoubleClickEvent(x1);
}

void DhQScrollBar::DvhmouseDoubleClickEvent(QMouseEvent* x1) {
  return mouseDoubleClickEvent(x1);
}

void DhQScrollBar::moveEvent(QMoveEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(51,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::moveEvent(x1);
}

void DhQScrollBar::DhmoveEvent(QMoveEvent* x1) {
  return QWidget::moveEvent(x1);
}

void DhQScrollBar::DvhmoveEvent(QMoveEvent* x1) {
  return moveEvent(x1);
}

QPaintEngine* DhQScrollBar::paintEngine() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(52,(void*&)ro_ptr,(void*&)rf_ptr)) return (QPaintEngine*)(*(void*(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::paintEngine();
}

QPaintEngine* DhQScrollBar::DhpaintEngine() const {
  return QWidget::paintEngine();
}

QPaintEngine* DhQScrollBar::DvhpaintEngine() const {
  return paintEngine();
}

void DhQScrollBar::paletteChange(const QPalette& x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(53,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)&x1);
  return QWidget::paletteChange(x1);
}

void DhQScrollBar::DhpaletteChange(const QPalette& x1) {
  return QWidget::paletteChange(x1);
}

void DhQScrollBar::DvhpaletteChange(const QPalette& x1) {
  return paletteChange(x1);
}

void DhQScrollBar::resetInputContext() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(54,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::resetInputContext();
}

void DhQScrollBar::DhresetInputContext() {
  return QWidget::resetInputContext();
}

void DhQScrollBar::DvhresetInputContext() {
  return resetInputContext();
}

void DhQScrollBar::resizeEvent(QResizeEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(55,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::resizeEvent(x1);
}

void DhQScrollBar::DhresizeEvent(QResizeEvent* x1) {
  return QWidget::resizeEvent(x1);
}

void DhQScrollBar::DvhresizeEvent(QResizeEvent* x1) {
  return resizeEvent(x1);
}

void DhQScrollBar::setVisible(bool x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(56,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::setVisible(x1);
}

void DhQScrollBar::DhsetVisible(bool x1) {
  return QWidget::setVisible(x1);
}

void DhQScrollBar::DvhsetVisible(bool x1) {
  return setVisible(x1);
}

void DhQScrollBar::showEvent(QShowEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(57,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::showEvent(x1);
}

void DhQScrollBar::DhshowEvent(QShowEvent* x1) {
  return QWidget::showEvent(x1);
}

void DhQScrollBar::DvhshowEvent(QShowEvent* x1) {
  return showEvent(x1);
}

void DhQScrollBar::tabletEvent(QTabletEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(58,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QWidget::tabletEvent(x1);
}

void DhQScrollBar::DhtabletEvent(QTabletEvent* x1) {
  return QWidget::tabletEvent(x1);
}

void DhQScrollBar::DvhtabletEvent(QTabletEvent* x1) {
  return tabletEvent(x1);
}

void DhQScrollBar::updateMicroFocus() {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(59,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))));
  return QWidget::updateMicroFocus();
}

void DhQScrollBar::DhupdateMicroFocus() {
  return QWidget::updateMicroFocus();
}

void DhQScrollBar::DvhupdateMicroFocus() {
  return updateMicroFocus();
}

void DhQScrollBar::windowActivationChange(bool x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(60,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,bool))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), x1);
  return QWidget::windowActivationChange(x1);
}

void DhQScrollBar::DhwindowActivationChange(bool x1) {
  return QWidget::windowActivationChange(x1);
}

void DhQScrollBar::DvhwindowActivationChange(bool x1) {
  return windowActivationChange(x1);
}

void DhQScrollBar::childEvent(QChildEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(61,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::childEvent(x1);
}

void DhQScrollBar::DhchildEvent(QChildEvent* x1) {
  return QObject::childEvent(x1);
}

void DhQScrollBar::DvhchildEvent(QChildEvent* x1) {
  return childEvent(x1);
}

void DhQScrollBar::connectNotify(const char* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(62,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::connectNotify(x1);
}

void DhQScrollBar::DhconnectNotify(const char* x1) {
  return QObject::connectNotify(x1);
}

void DhQScrollBar::DvhconnectNotify(const char* x1) {
  return connectNotify(x1);
}

void DhQScrollBar::customEvent(QEvent* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(63,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)x1);
  return QObject::customEvent(x1);
}

void DhQScrollBar::DhcustomEvent(QEvent* x1) {
  return QObject::customEvent(x1);
}

void DhQScrollBar::DvhcustomEvent(QEvent* x1) {
  return customEvent(x1);
}

void DhQScrollBar::disconnectNotify(const char* x1) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(64,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(void(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::disconnectNotify(x1);
}

void DhQScrollBar::DhdisconnectNotify(const char* x1) {
  return QObject::disconnectNotify(x1);
}

void DhQScrollBar::DvhdisconnectNotify(const char* x1) {
  return disconnectNotify(x1);
}

bool DhQScrollBar::eventFilter(QObject* x1, QEvent* x2) {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(65,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(bool(*)(void*,void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QPointer<QObject>((QObject*)x1)), (void*)x2);
  return QObject::eventFilter(x1, x2);
}

bool DhQScrollBar::DheventFilter(QObject* x1, QEvent* x2) {
  return QObject::eventFilter(x1, x2);
}

bool DhQScrollBar::DvheventFilter(QObject* x1, QEvent* x2) {
  return eventFilter(x1, x2);
}

int DhQScrollBar::receivers(const char* x1) const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(66,(void*&)ro_ptr,(void*&)rf_ptr)) return (*(int(*)(void*,void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr))), (void*)(new QString(x1)));
  return QObject::receivers(x1);
}

int DhQScrollBar::Dhreceivers(const char* x1) const {
  return QObject::receivers(x1);
}

int DhQScrollBar::Dvhreceivers(const char* x1) const {
  return receivers(x1);
}

QObject* DhQScrollBar::sender() const {
  void* ro_ptr;
  void* rf_ptr;
  if(handlerSet(67,(void*&)ro_ptr,(void*&)rf_ptr)) {
    QObject * tr = *((QPointer<QObject>*)(*(void*(*)(void*))rf_ptr)((void*)(new QPointer<QObject>(*((QPointer<QObject>*)ro_ptr)))));
    return (QObject*)tr;
  }
  return QObject::sender();
}

QObject* DhQScrollBar::Dhsender() const {
  return QObject::sender();
}

QObject* DhQScrollBar::Dvhsender() const {
  return sender();
}

QHash <QByteArray, int> DhQScrollBar::initXhHash() {
  QHash <QByteArray, int> txh;
  txh[QMetaObject::normalizedSignature("contextMenuEvent(QContextMenuEvent*)")] = 0;
  txh[QMetaObject::normalizedSignature("(bool)event(QEvent*)")] = 1;
  txh[QMetaObject::normalizedSignature("hideEvent(QHideEvent*)")] = 2;
  txh[QMetaObject::normalizedSignature("initStyleOption(QStyleOptionSlider*)")] = 3;
  txh[QMetaObject::normalizedSignature("mouseMoveEvent(QMouseEvent*)")] = 4;
  txh[QMetaObject::normalizedSignature("mousePressEvent(QMouseEvent*)")] = 5;
  txh[QMetaObject::normalizedSignature("mouseReleaseEvent(QMouseEvent*)")] = 6;
  txh[QMetaObject::normalizedSignature("paintEvent(QPaintEvent*)")] = 7;
  txh[QMetaObject::normalizedSignature("(QSize)sizeHint()")] = 8;
  txh[QMetaObject::normalizedSignature("sliderChange(QAbstractSlider::SliderChange)")] = 10;
  txh[QMetaObject::normalizedSignature("changeEvent(QEvent*)")] = 11;
  txh[QMetaObject::normalizedSignature("keyPressEvent(QKeyEvent*)")] = 12;
  txh[QMetaObject::normalizedSignature("(QAbstractSlider::SliderAction)repeatAction()")] = 13;
  txh[QMetaObject::normalizedSignature("setRepeatAction(QAbstractSlider::SliderAction)")] = 14;
  txh[QMetaObject::normalizedSignature("setRepeatAction(QAbstractSlider::SliderAction,int)")] = 15;
  txh[QMetaObject::normalizedSignature("setRepeatAction(QAbstractSlider::SliderAction,int,int)")] = 16;
  txh[QMetaObject::normalizedSignature("timerEvent(QTimerEvent*)")] = 17;
  txh[QMetaObject::normalizedSignature("wheelEvent(QWheelEvent*)")] = 18;
  txh[QMetaObject::normalizedSignature("actionEvent(QActionEvent*)")] = 19;
  txh[QMetaObject::normalizedSignature("closeEvent(QCloseEvent*)")] = 20;
  txh[QMetaObject::normalizedSignature("create()")] = 21;
  txh[QMetaObject::normalizedSignature("create(WId)")] = 22;
  txh[QMetaObject::normalizedSignature("create(WId,bool)")] = 23;
  txh[QMetaObject::normalizedSignature("create(WId,bool,bool)")] = 24;
  txh[QMetaObject::normalizedSignature("destroy()")] = 25;
  txh[QMetaObject::normalizedSignature("destroy(bool)")] = 26;
  txh[QMetaObject::normalizedSignature("destroy(bool,bool)")] = 27;
  txh[QMetaObject::normalizedSignature("(int)devType()")] = 28;
  txh[QMetaObject::normalizedSignature("dragEnterEvent(QDragEnterEvent*)")] = 29;
  txh[QMetaObject::normalizedSignature("dragLeaveEvent(QDragLeaveEvent*)")] = 30;
  txh[QMetaObject::normalizedSignature("dragMoveEvent(QDragMoveEvent*)")] = 31;
  txh[QMetaObject::normalizedSignature("dropEvent(QDropEvent*)")] = 32;
  txh[QMetaObject::normalizedSignature("enabledChange(bool)")] = 33;
  txh[QMetaObject::normalizedSignature("enterEvent(QEvent*)")] = 34;
  txh[QMetaObject::normalizedSignature("focusInEvent(QFocusEvent*)")] = 35;
  txh[QMetaObject::normalizedSignature("(bool)focusNextChild()")] = 36;
  txh[QMetaObject::normalizedSignature("(bool)focusNextPrevChild(bool)")] = 37;
  txh[QMetaObject::normalizedSignature("focusOutEvent(QFocusEvent*)")] = 38;
  txh[QMetaObject::normalizedSignature("(bool)focusPreviousChild()")] = 39;
  txh[QMetaObject::normalizedSignature("fontChange(const QFont&)")] = 40;
  txh[QMetaObject::normalizedSignature("(int)heightForWidth(int)")] = 41;
  txh[QMetaObject::normalizedSignature("inputMethodEvent(QInputMethodEvent*)")] = 42;
  txh[QMetaObject::normalizedSignature("(QVariant)inputMethodQuery(Qt::InputMethodQuery)")] = 43;
  txh[QMetaObject::normalizedSignature("keyReleaseEvent(QKeyEvent*)")] = 44;
  txh[QMetaObject::normalizedSignature("languageChange()")] = 45;
  txh[QMetaObject::normalizedSignature("leaveEvent(QEvent*)")] = 46;
  txh[QMetaObject::normalizedSignature("(int)metric(QPaintDevice::PaintDeviceMetric)")] = 47;
  txh[QMetaObject::normalizedSignature("(QSize)minimumSizeHint()")] = 48;
  txh[QMetaObject::normalizedSignature(")")] = 49;
  txh[QMetaObject::normalizedSignature("mouseDoubleClickEvent(QMouseEvent*)")] = 50;
  txh[QMetaObject::normalizedSignature("moveEvent(QMoveEvent*)")] = 51;
  txh[QMetaObject::normalizedSignature("(QPaintEngine*)paintEngine()")] = 52;
  txh[QMetaObject::normalizedSignature("paletteChange(const QPalette&)")] = 53;
  txh[QMetaObject::normalizedSignature("resetInputContext()")] = 54;
  txh[QMetaObject::normalizedSignature("resizeEvent(QResizeEvent*)")] = 55;
  txh[QMetaObject::normalizedSignature("setVisible(bool)")] = 56;
  txh[QMetaObject::normalizedSignature("showEvent(QShowEvent*)")] = 57;
  txh[QMetaObject::normalizedSignature("tabletEvent(QTabletEvent*)")] = 58;
  txh[QMetaObject::normalizedSignature("updateMicroFocus()")] = 59;
  txh[QMetaObject::normalizedSignature("windowActivationChange(bool)")] = 60;
  txh[QMetaObject::normalizedSignature("childEvent(QChildEvent*)")] = 61;
  txh[QMetaObject::normalizedSignature("connectNotify(const char*)")] = 62;
  txh[QMetaObject::normalizedSignature("customEvent(QEvent*)")] = 63;
  txh[QMetaObject::normalizedSignature("disconnectNotify(const char*)")] = 64;
  txh[QMetaObject::normalizedSignature("(bool)eventFilter(QObject*,QEvent*)")] = 65;
  txh[QMetaObject::normalizedSignature("(int)receivers(const char*)")] = 66;
  txh[QMetaObject::normalizedSignature("(QObject*)sender()")] = 67;
  return txh;
}

QHash <QByteArray, int> DhQScrollBar::xhHash = DhQScrollBar::initXhHash();

bool DhQScrollBar::setDynamicQHandler(void * ro_ptr, char * eventId, void * rf_ptr, void * st_ptr, void * df_ptr) {
  QByteArray theHandler = QMetaObject::normalizedSignature(eventId);
  if (xhHash.contains(theHandler)) {
    int thir = xhHash.value(theHandler);
    return isetDynamicQHandler(ro_ptr, thir, rf_ptr, st_ptr, df_ptr);
  }
  return false;
}

bool DhQScrollBar::setDynamicQHandlerud(int udtyp, void * ro_ptr, int eventId, void * rf_ptr, void * st_ptr, void * df_ptr) {
  if ((udtyp < 0) || (udtyp > 2)) {
    return false;
  }
  return isetDynamicQHandlerud(ro_ptr, eventId, rf_ptr, st_ptr, df_ptr, udtyp);
}

bool DhQScrollBar::unSetDynamicQHandler(char * eventId) {
  QByteArray theHandler = QMetaObject::normalizedSignature(eventId);
  if (xhHash.contains(theHandler)) {
    int thir = xhHash.value(theHandler);
    return iunSetDynamicQHandler(thir);
  }
  return false;
}

bool DhQScrollBar::unSetDynamicQHandlerud(int udtyp, int eventId) {
  if ((udtyp < 0) || (udtyp > 2)) {
    return false;
  }
  return iunSetDynamicQHandlerud(eventId, udtyp);
}

