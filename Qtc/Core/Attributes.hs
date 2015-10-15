{-# OPTIONS -fglasgow-exts -XOverlappingInstances -XUndecidableInstances#-}
{-# LANGUAGE AllowAmbiguousTypes #-}
-----------------------------------------------------------------------------
{-| Module    : Attributes.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.Attributes (
  Qst(..), Qstt(..), Qsignal(..), Qsig(..), Qsignalf(..)
  ,QSlot, QSlotP, slot, slotP, Qslot(..)
  ,signalString, slotString, sigString, signalStringf, signalObjectf
  ,Prop(..)
  ,Attr, WriteAttr, SigCon, SigConf, SltCon, SltConf
  ,makeAttr, newAttr, writeAttr, sigCon, sigConf, sltCon, sltConf
  ,get, set, swap
  ,signal
  ,QsigClicked(..)
  ,st_sltConf_nt_p, st_sltConf_nt
  ,on_sltConf_nt_p, on_sltConf_nt
  ,sltConf_nt_p, sltConf_nt
  ,fmYes, fmCancel, emCancel, emOk, edOk
  ,sortFilterProxyModel' 
  ,vBoxLayout' 
  ,hBoxLayout' 
  ,standardItem_nf' 
  ,settings' 
  ,QsaSignalValueChanged_nt_f(..)
  ,QsaSignalTriggered_nt_f(..)
  ,QsaSignalToggled_nt_f(..)
  ,QsaSignalExpanded_nt_f(..)
  ,QsaSignalCollapsed_nt_f(..)
  ,QsaSignalActivated_nt_f(..)
  ,QsaSignalDoubleClicked_nt_f(..)
  ,QsaSignalCurrentChanged_nt_f(..)
  ,QsaSignalCustomContextMenuRequested_nt_f(..)
  ,QsaSignalCurrentIndexChanged_nt_f(..)
  ,QsaSignalItemChanged_nt_f(..)
  ,QsaSignalRowsRemoved_nt_f(..)
  ,QsaSignalTextChanged_nt_f(..)
  ,QsaSignalClicked_nt_f(..)
  ,QsaSlotReject(..)
  ,QsaSignalRejected_nt_f(..)
  ,QsaSignalAccepted_nt_f(..)
  ,QsaOnSignalClicked_nt_f(..)
  ,QsaOnSignalRejected_nt_f(..)
  ,QsaConnectSlot_nt_f(..)
  ,($>)
  ,QsaConnectSignal(..)
  ,QsaConnectSlot(..)
  ,QsaConnectSlot_nt(..)
  ,QaParent(..)
  ,QaText(..)
  ,QaIcon(..)
  ,QaAutoRaise(..)
  ,QaToolButtonStyle(..)
  ,QaFilterKeyColumn(..)
  ,QaDynamicSortFilter(..)
  ,QaSourceModel(..)
  ,QafilterRole(..)
  ,QafilterRegExp(..)
  ,QaVisible(..)
  ,QaModel(..)
  ,QaDragEnabled(..)
  ,QaAcceptDrops(..)
  ,QaAutoExpandDelay(..)
  ,QaShowDropIndicator(..)
  ,QaContextMenuPolicy(..)
  ,QaMargin(..)
  ,QaEditable(..)
  ,QaCheckable(..)
  ,QaSelectable(..)
  ,QwaOnEventFilter(..)
  ,QwaOnFocusInEvent(..)
  ,QaValue(..)
  ,QaWindowModality(..)
  ,QwaDataUserRole(..)
  ,QwaShow(..)
  ,QwaAddWidget(..)
  ,QwaAddLayout(..)
  ,QwaAddItem(..)
  ,QwaAddItems(..)
  ,QwaBlockSignals(..)
  ,QwaClear(..)
  ,QaCurrentIndex(..)
  ,getSettingsValue
  ,_isValid
  ,userRole
  ,displayRole
  ,QdataRole(..)
  ,QdataUserRole(..)
  ,QdataDisplayRole(..)
  ,QsetDataUserRole(..)
  ,(~~), (~>=)
  ,Qfp(..)
  ,Qfpn(..)
  ,Qnfpn(..)
  ,Qems(..)
  ,Qbps(..)
  ,Qbp(..)
  ,Qbpe(..)
  ,Qbpd(..)
  ,Qbpde(..)
  ,(>:), (>>:), Qslf(..), (-:)
  ,switch, switch_
  ) where

import Foreign.C.Types
import Qtc.ClassTypes.Core
import Qtc.Core.Base
import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core
import Qtc.Enums.Core.Qt
import Qtc.Core.QVariant
import Qtc.Core.QRegExp
import Qtc.Enums.Core.QRegExp
import Qtc.Core.QFile
import Qtc.Enums.Core.QIODevice
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Gui.QApplication
import Qtc.Gui.QStyle
import Qtc.Enums.Gui.QStyle
import Qtc.Gui.QVBoxLayout
import Qtc.Gui.QHBoxLayout
import Qtc.Gui.QBoxLayout
import Qtc.Gui.QIcon
import Qtc.Gui.QSpacerItem
import Qtc.Enums.Gui.QSizePolicy
import Qtc.Gui.QLayout
import Qtc.Gui.QLabel
import Qtc.Gui.QAbstractButton
import Qtc.Gui.QPushButton
import Qtc.Gui.QDialog
import Qtc.Gui.QDialog_h
import Qtc.Gui.QDialogButtonBox
import Qtc.Enums.Gui.QDialogButtonBox
import Qtc.Gui.QWidget
import Qtc.Gui.QWidget_h
import Qtc.Gui.QAbstractScrollArea
import Qtc.Gui.QAbstractItemView
import Qtc.Gui.QTreeView
import Qtc.Gui.QHeaderView
import Qtc.Gui.QLineEdit
import Qtc.Gui.QToolButton
import Qtc.Gui.QStandardItem
import Qtc.Gui.QStandardItemModel
import Qtc.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Gui.QItemSelection
import Qtc.Core.QModelIndex
import Qtc.Gui.QSortFilterProxyModel
import Qtc.Gui.QComboBox
import Qtc.Gui.QMenu
import Qtc.Gui.QMessageBox
import Qtc.Enums.Gui.QMessageBox
import Qtc.Gui.QAction
import Qtc.Core.QAbstractItemModel
import Qtc.Gui.QAbstractProxyModel
import Qtc.Gui.QProgressDialog
import Qtc.Core.QPoint
import Qtc.ClassTypes.Tools
import Qtc.Tools.QUiLoader
import Qtc.Core.QSettings
import Qth.Core.Size
import Qth.Core.Point

import Data.IORef

class Qst a where
  qstobj :: a -> QObject ()

class Qstt a b where
  qsttobj :: a -> b

data Qsignal x f = Qsignal String

signalString :: Qsignal x f -> String
signalString (Qsignal s) = s

data Qsig f = Qsig String

data Qsignalf f = Qsignalf (Qsig f) (QObject ())

sigString :: Qsig f -> String
sigString (Qsig s) = s

signalStringf :: Qsignalf f -> String
signalStringf (Qsignalf (Qsig s) _) = s

signalObjectf :: Qsignalf f -> QObject ()
signalObjectf (Qsignalf _ x) = x

type QSlot a = Qslot a (a -> IO ())
type QSlotP a p = Qslot a (a -> p -> IO ())

slot :: String -> QSlot a
slot s = Qslot s

slotP :: String -> QSlotP a p
slotP s = Qslot s

data Qslot x f = Qslot String

slotString :: Qslot x f -> String
slotString (Qslot s) = s

infixr 0 :=,:~,::=,::~,:-,:<,:<-,::-,:=<,:-<,:->,:=>

data Prop w     = forall a. Attr w a := a
                | forall a. Attr w a :~ (a -> a)
                | forall a. Attr w a ::= (w -> a)
                | forall a. Attr w a ::~ (w -> a -> a)
                | forall a. WriteAttr w a :- a
                | forall a. WriteAttr w a ::- (w -> a)
                | forall a. Attr w a :< IO a
                | forall a. WriteAttr w a :<- IO a
                | SigConf w w :=< Qsignalf w
                | forall a. SigConf w a :-< Qsignalf a
                | forall a. SltCon w a () :~> String
                | forall a. SltConf w a :=> (Qslot w a, a)
                | forall a. SltConf w a :-> (Qslot w a, a)

data Attr w a = Attr (w -> IO a) (w -> a -> IO ()) (w -> (a -> a) -> IO a) 

data WriteAttr w a   = WriteAttr (w -> a -> IO ()) 

data SigCon w a = SigCon (w -> a -> String -> IO ()) 

data SigConf w a = SigConf (w -> Qsignalf a -> Bool -> IO ()) 

data SltCon w a b = SltCon (w -> String -> b -> IO ()) 

data SltConf w a = SltConf (w -> Qslot w a -> a -> Bool -> IO ()) 

makeAttr :: (w -> IO a) -> (w -> a -> IO ()) -> (w -> (a -> a) -> IO a) -> Attr w a
makeAttr getter setter updater
  = Attr getter setter updater 

newAttr :: (w -> IO a) -> (w -> a -> IO ()) -> Attr w a
newAttr getter setter
  = makeAttr getter setter updater 
  where
    updater w f = do x <- getter w; setter w (f x); return x

writeAttr :: (w -> a -> IO ()) -> WriteAttr w a
writeAttr setter
  = WriteAttr setter 

sigCon :: (w -> a -> String -> IO ()) -> SigCon w a
sigCon consig
  = SigCon consig 

sigConf :: (w -> Qsignalf a -> Bool -> IO ()) -> SigConf w a
sigConf consigf
  = SigConf consigf 

sltCon :: (w -> String -> b -> IO ()) -> SltCon w a b
sltCon conslt
  = SltCon conslt 

sltConf :: (w -> Qslot w a -> a -> Bool -> IO ()) -> SltConf w a
sltConf consltf
  = SltConf consltf 

get :: w -> Attr w a -> IO a
get w (Attr getter setter updater)
  = getter w

set :: w -> [Prop w] -> IO ()
set w props
  = mapM_ setprop props
  where
    setprop ((Attr getter setter updater) := x)
      = setter w x
    setprop ((Attr getter setter updater) :~ f)
      = do updater w f; return ()
    setprop ((Attr getter setter updater) ::= f)
      = setter w (f w)
    setprop ((Attr getter setter updater) ::~ f)
      = do updater w (f w); return ()
    setprop ((WriteAttr setter) :- x)
      = setter w x
    setprop ((WriteAttr setter) ::- f)
      = setter w (f w)
    setprop ((Attr getter setter updater) :< x)
      = do setter w =<< x
    setprop ((WriteAttr setter) :<- x)
      = do setter w =<< x
    setprop ((SigConf sigconf) :=< sltslt)
      = sigconf w sltslt True
    setprop ((SigConf sigconf) :-< sltslt)
      = sigconf w sltslt False
    setprop ((SltConf sltconf) :=> (sltslt, sltSlt))
      = sltconf w sltslt sltSlt True
    setprop ((SltCon sltcon) :~> sltStr)
      = sltcon w sltStr ()
    setprop ((SltConf sltconf) :-> (sltslt, sltSlt))
      = sltconf w sltslt sltSlt False

swap :: w -> Attr w a -> a -> IO a
swap w (Attr getter setter updater) x
  = updater w (const x)

signal :: Qsig a -> Qsignalf a
signal s = Qsignalf s $ objectNull

class QsigClicked p | -> p where
  sigClicked :: Qsig p
  clicked :: Qsignalf p

instance QsigClicked (QModelIndex () -> IO ()) where
  sigClicked = Qsig "clicked(QModelIndex)" :: Qsig (QModelIndex () -> IO ())
  clicked = signal sigClicked

st_sltConf_nt_p :: (Qst a, Qst d, Qcsn (b -> IO c)) => a -> Qsig (b -> IO c) -> SltConf d (d -> b -> IO c)
st_sltConf_nt_p sigObj sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt (qstobj sigObj) (sigString sig) (qstobj w) (slotString sltslt) (f w)

st_sltConf_nt :: (Qst a, Qst b) => a -> Qsig (IO ()) -> SltConf b (b -> IO ())
st_sltConf_nt sigObj sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt (qstobj sigObj) (sigString sig) (qstobj w) (slotString sltslt) (f w)

sltConf_nt_p :: (Qcsn (b -> IO c)) => QObject a -> Qsig (b -> IO c) -> SltConf (QObject d) (QObject d -> b -> IO c)
sltConf_nt_p sigObj sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (sigString sig) w (slotString sltslt) (f w)

on_sltConf_nt :: Qsig (IO ()) -> SltConf (QObject b) (QObject b -> IO ())
on_sltConf_nt sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt w (sigString sig) w (slotString sltslt) (f w)

on_sltConf_nt_p :: (Qcsn (b -> IO c)) => Qsig (b -> IO c) -> SltConf (QObject d) (QObject d -> b -> IO c)
on_sltConf_nt_p sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt w (sigString sig) w (slotString sltslt) (f w)

sltConf_nt :: QObject a -> Qsig (IO ()) -> SltConf (QObject b) (QObject b -> IO ())
sltConf_nt sigObj sig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (sigString sig) w (slotString sltslt) (f w)

fmYes = fYes :: QMessageBoxStandardButtons

fmCancel = fCancel :: QMessageBoxStandardButtons

emCancel = eCancel :: QMessageBoxStandardButton

emOk = eOk :: QMessageBoxStandardButton

edOk = eOk :: QDialogButtonBoxStandardButton

sortFilterProxyModel' p al 
  = qSortFilterProxyModel p >>= \pm -> set pm al >> return pm

vBoxLayout' w al 
  = qVBoxLayout w >>= \vb -> set vb al >> return vb

hBoxLayout' al 
  = qHBoxLayout () >>= \hb -> set hb al >> return hb

standardItem_nf' t al 
  = qStandardItem_nf t >>= \si -> set si al >> return si

settings' t al 
  = qSettings t >>= \si -> set si al >> return si

infixr 1 $>

($>) x y = (x, y)

class QsaConnectSignal w x where
  signal' :: String -> SigCon w x

instance QsaConnectSignal (QObject a) (QObject b) where
  signal' sigStr = sigCon sigcon
    where
      sigcon w x sltstr = connectSignal w sigStr x sltstr

class QsaConnectSlot w x f where
  slotp' :: x -> String -> SltCon w x f

instance QsaConnectSlot (QObject a) (QObject b) (()) where
  slotp' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot sigObj sigStr w sltstr f

instance QsaConnectSlot (QObject a) (QObject b) (QObject a -> IO ()) where
  slotp' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot sigObj sigStr w sltstr f

instance QsaConnectSlot (QObject a) (QObject b) (QObject a -> String -> IO ()) where
  slotp' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot sigObj sigStr w sltstr f

instance QsaConnectSlot (QObject a) (QObject b) (QObject a -> Object c -> IO ()) where
  slotp' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot sigObj sigStr w sltstr f

class QsaSignalExpanded_nt_f w x f where
  signalExpanded', expanded' :: x -> SltConf w f

instance (Qst a) => QsaSignalExpanded_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  signalExpanded' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "expanded(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  expanded' = signalExpanded'

class QsaSignalCollapsed_nt_f w x f where
  signalCollapsed', collapsed' :: x -> SltConf w f

instance (Qst a) => QsaSignalCollapsed_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  signalCollapsed' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "collapsed(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  collapsed' = signalCollapsed'

class QsaSignalActivated_nt_f w x f where
  signalActivated', activated' :: x -> SltConf w f

instance (Qst a) => QsaSignalActivated_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  signalActivated' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "activated(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  activated' = signalActivated'

class QsaSignalDoubleClicked_nt_f w x f where
  signalDoubleClicked', doubleClicked' :: x -> SltConf w f

instance (Qst a) => QsaSignalDoubleClicked_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  signalDoubleClicked' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "doubleClicked(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  doubleClicked' = signalDoubleClicked'

class QsaSignalValueChanged_nt_f w x f where
  signalValueChanged', valueChanged' :: x -> SltConf w f

instance (Qst a) => QsaSignalValueChanged_nt_f a (QAbstractSlider b) (a -> Int -> IO ()) where
  signalValueChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "valueChanged(int)" (qstobj w) (slotString sltslt) (f w)
  valueChanged' = signalValueChanged'

class QsaSignalToggled_nt_f w x f where
  signalToggled', toggled' :: x -> SltConf w f

instance (Qst a) => QsaSignalToggled_nt_f a (QAction b) (a -> Bool -> IO ()) where
  signalToggled' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "toggled(bool)" (qstobj w) (slotString sltslt) (f w)
  toggled' = signalToggled'

class QsaSignalTriggered_nt_f w x f where
  signalTriggered', triggered' :: x -> SltConf w f

instance (Qst a) => QsaSignalTriggered_nt_f a (QAction b) (a -> IO ()) where
  signalTriggered' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "triggered()" (qstobj w) (slotString sltslt) (f w)
  triggered' = signalTriggered'

instance (Qst a) => QsaSignalTriggered_nt_f a (QMenu b) (a -> QAction () -> IO ()) where
  signalTriggered' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "triggered(QAction*)" (qstobj w) (slotString sltslt) (f w)
  triggered' = signalTriggered'

class QsaSignalCurrentChanged_nt_f w x f where
  signalCurrentChanged', currentChanged' :: x -> SltConf w f

instance (Qst a) => QsaSignalCurrentChanged_nt_f a (QItemSelectionModel b) (a -> QModelIndex () -> IO ()) where
  signalCurrentChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "currentChanged(QModelIndex,QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  currentChanged' = signalCurrentChanged'

class QsaSignalCustomContextMenuRequested_nt_f w x f where
  signalCustomContextMenuRequested', customContextMenuRequested' :: x -> SltConf w f

instance (Qst a) => QsaSignalCustomContextMenuRequested_nt_f a (QWidget b) (a -> QPoint () -> IO ()) where
  signalCustomContextMenuRequested' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "customContextMenuRequested(QPoint)" (qstobj w) (slotString sltslt) (f w)
  customContextMenuRequested' = signalCustomContextMenuRequested'

class QsaSignalCurrentIndexChanged_nt_f w x f where
  signalCurrentIndexChanged', currentIndexChanged' :: x -> SltConf w f

instance (Qst a) => QsaSignalCurrentIndexChanged_nt_f a (QComboBox b) (a -> String -> IO ()) where
  signalCurrentIndexChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "currentIndexChanged(QString)" (qstobj w) (slotString sltslt) (f w)
  currentIndexChanged' = signalCurrentIndexChanged'

class QsaSignalItemChanged_nt_f r w x f where
  signalItemChanged', itemChanged' :: x -> r w f

instance (Qst a) => QsaSignalItemChanged_nt_f SltConf a (QStandardItemModel b) (a -> QStandardItem () -> IO ()) where
  signalItemChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "itemChanged(QStandardItem*)" (qstobj w) (slotString sltslt) (f w)
  itemChanged' = signalItemChanged'

instance (Qst a) => QsaSignalItemChanged_nt_f SigConf a (QStandardItemModel b) (IO ()) where
  signalItemChanged' sigObj = sigConf sigcon
    where
      sigcon w sltslt _ = connectSignal sigObj "itemChanged(QStandardItem*)" (qstobj w) (signalStringf sltslt)
  itemChanged' = signalItemChanged'

class QsaSignalRowsRemoved_nt_f r w x f where
  signalRowsRemoved', rowsRemoved' :: x -> r w f

instance (Qst a) => QsaSignalRowsRemoved_nt_f SigConf a (QStandardItemModel b) (IO ()) where
  signalRowsRemoved' sigObj = sigConf sigcon
    where
      sigcon w sltslt _ = connectSignal sigObj "rowsRemoved(QModelIndex,int,int)" (qstobj w) (signalStringf sltslt)
  rowsRemoved' = signalRowsRemoved'

class QsaSignalTextChanged_nt_f w x f where
  signalTextChanged', textChanged' :: x -> SltConf w f

instance (Qst a) => QsaSignalTextChanged_nt_f a (QLineEdit b) (a -> String -> IO ()) where
  signalTextChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "textChanged(QString)" (qstobj w) (slotString sltslt) (f w)
  textChanged' = signalTextChanged'

instance (Qst a) => QsaSignalTextChanged_nt_f a (QLineEdit b) (a -> IO ()) where
  signalTextChanged' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "textChanged(QString)" (qstobj w) (slotString sltslt) (f w)
  textChanged' = signalTextChanged'

class QsaSignalClicked_nt_f w x f where
  signalClicked', clicked' :: x -> SltConf w f

instance (Qst a) => QsaSignalClicked_nt_f a (QAbstractButton b) (a -> IO ()) where
  signalClicked' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "clicked()" (qstobj w) (slotString sltslt) (f w)
  clicked' = signalClicked'

instance (Qst a) => QsaSignalClicked_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  signalClicked' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "clicked(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  clicked' = signalClicked'

instance (Qst a) => QsaSignalClicked_nt_f a (QTreeView ()) (a -> QModelIndex () -> IO ()) where
  signalClicked' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "clicked(QModelIndex)" (qstobj w) (slotString sltslt) (f w)
  clicked' = signalClicked'

class QsaSignalAccepted_nt_f w x f where
  signalAccepted', accepted' :: x -> SltConf w f

instance (Qst a) => QsaSignalAccepted_nt_f a (QDialogButtonBox b) (a -> IO ()) where
  signalAccepted' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj "accepted()" (qstobj w) (slotString sltslt) (f w)
  accepted' = signalAccepted'

class QsaSlotReject w where
  slotReject', reject' ::  (Qslot w (w -> ()), (w -> ()))

instance (Qstt a (QDialogSc b)) => QsaSlotReject (a) where
  slotReject' = (Qslot "reject()", \_ -> ())
  reject' = (Qslot "reject()", \_ -> ())

class QsaSignalRejected_nt_f w x f where
  signalRejected', rejected' :: x -> SltConf w f

instance (Qst a) => QsaSignalRejected_nt_f a (QDialogButtonBox b) (a -> ()) where
  signalRejected' sigObj = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot sigObj "rejected()" (qstobj w) (slotString sltslt) (f w)
  rejected' = signalRejected'

class QsaOnSignalClicked_nt_f w where
  onSignalClicked', onClicked' :: SigConf w (IO ())

instance QsaOnSignalClicked_nt_f (QToolButtonSc a) where
  onSignalClicked' = sigConf sigcon
    where
      sigcon w sltslt False = connectSignal w "clicked()" (signalObjectf sltslt) (signalStringf sltslt)
      sigcon w sltslt True = connectSignal w "clicked()" w (signalStringf sltslt)
  onClicked' = onSignalClicked'

class QsaOnSignalRejected_nt_f w where
  onSignalRejected' :: SigConf w (IO ())

instance (Qst a, Qstt a (QDialogSc b)) => QsaOnSignalRejected_nt_f a where
  onSignalRejected' = sigConf sigcon
    where
      sigcon w sltslt False = connectSignal (qstobj w) "rejected()" (signalObjectf sltslt) (signalStringf sltslt)
      sigcon w sltslt True = connectSignal (qstobj w) "rejected()" (qstobj w) (signalStringf sltslt)

instance (Qst a) => QsaConnectSlot_nt_f a (QItemSelectionModel b) (a -> QModelIndex () -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QComboBox b) (a -> String -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QStandardItemModel b) (a -> QStandardItem () -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QLineEdit b) (a -> String -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QDialogButtonBox b) (a -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QDialogButtonBox b) (a -> ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QTreeViewSc b) (a -> QModelIndex () -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QWidget b) (a -> QPoint () -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

instance (Qst a) => QsaConnectSlot_nt_f a (QAbstractButton b) (a -> IO ()) where
  slot' sigObj sigsig = sltConf sltcon
    where
      sltcon w sltslt f _ = connectSlot_nt sigObj (signalString sigsig) (qstobj w) (slotString sltslt) (f w)

class QsaConnectSlot_nt w x f where
  slotf' :: x -> String -> SltCon w x f

instance QsaConnectSlot_nt (QObject a) (QObject b) (()) where
  slotf' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot sigObj sigStr w sltstr f

instance QsaConnectSlot_nt (QObject a) (QObject b) (IO ()) where
  slotf' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot_nt sigObj sigStr w sltstr f

instance QsaConnectSlot_nt (QObject a) (QObject b) (() -> IO ()) where
  slotf' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot_nt sigObj sigStr w sltstr f

instance QsaConnectSlot_nt (QObject a) (QObject b) (String -> IO ()) where
  slotf' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot_nt sigObj sigStr w sltstr f

instance QsaConnectSlot_nt (QObject a) (QObject b) (Object c -> IO ()) where
  slotf' sigObj sigStr = sltCon sltcon
    where
      sltcon w sltstr f = connectSlot_nt sigObj sigStr w sltstr f

class QaParent w x where
  parent' :: Attr w x

class QaWindowModality w x where
  windowModality' :: Attr w x

instance QaWindowModality (QProgressDialog a) WindowModality where
  windowModality' = newAttr getter setter
    where
      getter w = windowModality w ()
      setter w = setWindowModality w :: WindowModality -> IO ()

class QsaConnectSlot_nt_f w x f where
  slot' :: x -> (Qsignal x f) -> SltConf w f

instance QaParent (QObject a) (QObject b) where
  parent' = newAttr getter setter
    where
      getter w = do qObjectParent w >>= \p -> return $ objectCast p
      setter w = qObjectSetParent w :: (QObject b) -> IO ()

class QaText w where
  text' :: Attr w String

instance QaText (QAbstractButton a) where
  text' = newAttr getter setter
    where
      getter w = (uncurry text) (w, ())
      setter w = setText w :: (String) -> IO ()

class QaIcon w where
  icon' :: Attr w (QIcon ())

instance QaIcon (QStandardItem a) where
  icon' = newAttr getter setter
    where
      getter w = (uncurry icon) (w, ())
      setter w = setIcon w :: (QIcon ()) -> IO ()

instance QaIcon (QAbstractButton a) where
  icon' = newAttr getter setter
    where
      getter w = (uncurry icon) (w, ())
      setter w = setIcon w :: (QIcon ()) -> IO ()

class QaAutoRaise w where
  autoRaise' :: Attr w Bool

instance QaAutoRaise (QToolButton a) where
  autoRaise' = newAttr getter setter
    where
      getter w = (uncurry autoRaise) (w, ())
      setter w = setAutoRaise w :: Bool -> IO ()

class QaToolButtonStyle w where
  toolButtonStyle' :: Attr w ToolButtonStyle

instance QaToolButtonStyle (QToolButton a) where
  toolButtonStyle' = newAttr getter setter
    where
      getter w = (uncurry toolButtonStyle) (w, ())
      setter w = setToolButtonStyle w :: ToolButtonStyle -> IO ()

class QaFilterKeyColumn w where
  filterKeyColumn' :: Attr w Int

instance QaFilterKeyColumn (QSortFilterProxyModel a) where
  filterKeyColumn' = newAttr getter setter
    where
      getter w = (uncurry filterKeyColumn) (w, ())
      setter w = setFilterKeyColumn w :: Int -> IO ()

class QaDynamicSortFilter w where
  dynamicSortFilter' :: Attr w Bool

instance QaDynamicSortFilter (QSortFilterProxyModel a) where
  dynamicSortFilter' = newAttr getter setter
    where
      getter w = (uncurry dynamicSortFilter) (w, ())
      setter w = setDynamicSortFilter w :: Bool -> IO ()

class QaSourceModel w where
  sourceModel' :: Attr w (QAbstractItemModel a)

instance QaSourceModel (QAbstractProxyModel ()) where
  sourceModel' = newAttr getter setter
    where
      getter w = do sourceModel w () >>= \m -> return $ objectCast m
      setter w = setSourceModel (w::QAbstractProxyModel ()) :: (QAbstractItemModel a) -> IO ()

instance QaSourceModel (QSortFilterProxyModel ()) where
  sourceModel' = newAttr getter setter
    where
      getter w = do sourceModel w () >>= \m -> return $ objectCast m
      setter w = setSourceModel (w::QSortFilterProxyModel ()) :: (QAbstractItemModel a) -> IO ()

class QafilterRole w where
  filterRole' :: Attr w Int

instance QafilterRole (QSortFilterProxyModel ()) where
  filterRole' = newAttr getter setter
    where
      getter w = (uncurry filterRole) (w, ())
      setter w = setFilterRole w :: Int -> IO ()

class QafilterRegExp w where
  filterRegExp' :: Attr w (QRegExp ())

instance QafilterRegExp (QSortFilterProxyModel ()) where
  filterRegExp' = newAttr getter setter
    where
      getter w = (uncurry filterRegExp) (w, ())
      setter w = setFilterRegExp w :: (QRegExp ()) -> IO ()

class QaVisible w where
  visible' :: Attr w Bool

instance QaVisible (QTreeView ()) where
  visible' = newAttr getter setter
    where
      getter w = (uncurry isVisible) (w, ())
      setter w = setVisible (w::QTreeView ()) :: Bool -> IO ()

class QaModel w where
  model' :: Attr w (QAbstractItemModel a)

instance QaModel (QTreeViewSc a) where
  model' = newAttr getter setter
    where
      getter w = do model w () >>= \m -> return $ objectCast m
      setter w = setModel (w::QTreeViewSc a) :: (QAbstractItemModel b) -> IO ()

instance QaModel (QTreeView ()) where
  model' = newAttr getter setter
    where
      getter w = do model w () >>= \m -> return $ objectCast m
      setter w = setModel (w::QTreeView ()) :: (QAbstractItemModel a) -> IO ()

instance QaModel (QAbstractItemView ()) where
  model' = newAttr getter setter
    where
      getter w = do model w () >>= \m -> return $ objectCast m
      setter w = setModel (w::QAbstractItemView ()) :: (QAbstractItemModel a) -> IO ()

class QaDragEnabled w where
  dragEnabled' :: Attr w Bool

instance QaDragEnabled (QAbstractItemView a) where
  dragEnabled' = newAttr getter setter
    where
      getter w = (uncurry dragEnabled) (w, ())
      setter w = setDragEnabled w :: Bool -> IO ()

class QaAcceptDrops w where
  acceptDrops' :: Attr w Bool

instance QaAcceptDrops (QWidget a) where
  acceptDrops' = newAttr getter setter
    where
      getter w = (uncurry acceptDrops) (w, ())
      setter w = setAcceptDrops w :: Bool -> IO ()

class QaAutoExpandDelay w where
  autoExpandDelay' :: Attr w Int

instance QaAutoExpandDelay (QTreeView a) where
  autoExpandDelay' = newAttr getter setter
    where
      getter w = (uncurry autoExpandDelay) (w, ())
      setter w = setAutoExpandDelay w :: Int -> IO ()

class QaShowDropIndicator w where
  showDropIndicator' :: Attr w Bool

instance QaShowDropIndicator (QAbstractItemView a) where
  showDropIndicator' = newAttr getter setter
    where
      getter w = (uncurry showDropIndicator) (w, ())
      setter w = setDropIndicatorShown w :: Bool -> IO ()

class QaContextMenuPolicy w where
  contextMenuPolicy' :: Attr w ContextMenuPolicy

instance QaContextMenuPolicy (QWidget a) where
  contextMenuPolicy' = newAttr getter setter
    where
      getter w = (uncurry contextMenuPolicy) (w, ())
      setter w = setContextMenuPolicy w :: ContextMenuPolicy -> IO ()

class QaMargin w where
  margin' :: Attr w Int

instance QaMargin (QLayout a) where
  margin' = newAttr getter setter
    where
      getter w = (uncurry margin) (w, ())
      setter w = setMargin w :: Int -> IO ()

class QaEditable w where
  editable' :: Attr w Bool

instance QaEditable (QStandardItem a) where
  editable' = newAttr getter setter
    where
      getter w = (uncurry isEditable) (w, ())
      setter w = setEditable w :: Bool -> IO ()

class QaSelectable w where
  selectable' :: Attr w Bool

instance QaSelectable (QStandardItem a) where
  selectable' = newAttr getter setter
    where
      getter w = (uncurry isSelectable) (w, ())
      setter w = setSelectable w :: Bool -> IO ()

class QaCheckable w where
  checkable' :: Attr w Bool

instance QaCheckable (QStandardItem a) where
  checkable' = newAttr getter setter
    where
      getter w = (uncurry isCheckable) (w, ())
      setter w = setCheckable w :: Bool -> IO ()

class QwaOnEventFilter w x where
  onEventFilter' :: WriteAttr w x

instance (Qstt w (QDialogSc a)) => QwaOnEventFilter w (w -> QDialog b -> QObject t1 -> QEvent t2 -> IO Bool) where
  onEventFilter' = writeAttr sethandler
    where
      sethandler w f = setHandler ((qsttobj w)::QDialogSc a) "(bool)eventFilter(QObject*,QEvent*)" (f w)

instance (Qstt w (QWidgetSc a)) => QwaOnEventFilter w (w -> QWidget b -> QObject t1 -> QEvent t2 -> IO Bool) where
  onEventFilter' = writeAttr sethandler
    where
      sethandler w f = setHandler ((qsttobj w)::QWidgetSc a) "(bool)eventFilter(QObject*,QEvent*)" (f w)

class QwaOnFocusInEvent w x where
  onFocusInEvent' :: WriteAttr w x

instance (Qstt w (QWidgetSc a)) => QwaOnFocusInEvent w (w -> QWidget b -> QFocusEvent t -> IO ()) where
  onFocusInEvent' = writeAttr sethandler
    where
      sethandler w f = setHandler ((qsttobj w)::QWidgetSc a) "focusInEvent(QFocusEvent*)" (f w)

class QaValue w x where
  value' :: Attr w x

instance QaValue (QSettings ()) (String, IO (QByteArray ())) where
  value' = newAttr getter setter
    where
      setter w (k, f) = f >>= \b -> qVariant b >>= \v -> setValue w ((k::String), v)
      getter w = return ("", return $ objectCast $ objectNull)

instance QaValue (QProgressDialog a) Int where
  value' = newAttr getter setter
    where
      getter w = value w ()
      setter w = setValue w :: Int -> IO () 

class QwaDataUserRole w x where
  dataUserRole' :: WriteAttr w (x, Int)

instance QwaDataUserRole (QStandardItem ()) String where
  dataUserRole' = writeAttr setter
    where
      setter w (x, i) = setDataUserRole w (x::String) i

instance QwaDataUserRole (QStandardItem ()) Bool where
  dataUserRole' = writeAttr setter
    where
      setter w (x, i) = setDataUserRole w (x::Bool) i

instance QwaDataUserRole (QStandardItem ()) Int where
  dataUserRole' = writeAttr setter
    where
      setter w (x, i) = setDataUserRole w (x::Int) i

class QwaShow w where
  show' :: WriteAttr w ()

instance QwaShow (QWidget a) where
  show' = writeAttr setter
    where
      setter w = qshow (w :: QWidget a) :: () -> IO ()

class QwaAddWidget w where
  addWidget' :: WriteAttr w (QWidget a)

instance QwaAddWidget (QVBoxLayout ()) where
  addWidget' = writeAttr setter
    where
      setter w = addWidget (w :: QVBoxLayout ()) :: (QWidget a) -> IO ()

class QwaAddLayout w where
  addLayout' :: WriteAttr w (QLayout a)

instance QwaAddLayout (QHBoxLayout a) where
  addLayout' = writeAttr setter
    where
      setter w = addLayout (w :: QHBoxLayout a) :: (QLayout b) -> IO ()

class QwaAddItem w where
  addItem' :: WriteAttr w (QLayoutItem a)

instance QwaAddItem (QHBoxLayout ()) where
  addItem' = writeAttr setter
    where
      setter w = addItem (w :: QHBoxLayout ()) :: (QLayoutItem a) -> IO ()

class QwaAddItems w x where
  addItems' :: WriteAttr w x

instance QwaAddItems (QComboBox a) [String] where
  addItems' = writeAttr setter
    where
      setter w = addItems (w :: QComboBox a) :: [String] -> IO ()

class QwaBlockSignals w where
  blockSignals' :: WriteAttr w Bool

instance QwaBlockSignals (QObject a) where
  blockSignals' = writeAttr setter
    where
      setter w x = do blockSignals w x; return ()

class QwaClear w where
  clear' :: WriteAttr w ()

instance QwaClear (QComboBox a) where
  clear' = writeAttr setter
    where
      setter w = clear (w :: QComboBox a) :: () -> IO ()

class QaCurrentIndex w where
  currentIndex' :: Attr w Int

instance QaCurrentIndex (QComboBox a) where
  currentIndex' = newAttr getter setter
    where
      getter w = currentIndex w ()
      setter w = setCurrentIndex (w :: QComboBox a) :: Int -> IO ()

getSettingsValue :: QSettings () -> String -> IO (Maybe (QByteArray ()))
getSettingsValue settings key
  = settings ~> value ~~ key ~>= qVariant_toByteArray ~>= \ba ->
      ba >~ qByteArray_isEmpty ~>= \baie ->
      return $
        if (not baie)
          then (Just ba)
          else Nothing

_isValid :: (QqisValid a ()) => a -> Bool
_isValid o = unsafePerformIO $ qisValid o ()

userRole :: Int -> Int
userRole i
  = (qEnum_toInt eUserRole) + i

displayRole :: Int -> Int
displayRole i
  = (qEnum_toInt eDisplayRole) + i

class QdataRole x where
  dataRoleS :: x -> IO String
  dataRoleB :: x -> IO Bool

instance QdataRole (QStandardItem ()) where
  dataRoleS ix = ix>~qdata~>=qVariant_toString
  dataRoleB ix = ix>~qdata~>=qVariant_toBool

instance QdataRole (QModelIndex ()) where
  dataRoleS ix = ix>~qdata~>=qVariant_toString
  dataRoleB ix = ix>~qdata~>=qVariant_toBool

class QdataUserRole x where
  dataUserS :: x -> IO String
  dataUserRoleS :: x -> Int -> IO String
  dataUserB :: x -> IO Bool
  dataUserRoleB :: x -> Int -> IO Bool
  dataUserI :: x -> IO Int
  dataUserRoleI :: x -> Int -> IO Int

instance QdataUserRole (QStandardItem ()) where
  dataUserS ix = ix~>qdata~~userRole 0~>=qVariant_toString
  dataUserRoleS ix i = ix~>qdata~~userRole i~>=qVariant_toString
  dataUserB ix = ix~>qdata~~userRole 0~>=qVariant_toBool
  dataUserRoleB ix i = ix~>qdata~~userRole i~>=qVariant_toBool
  dataUserI ix = ix~>qdata~~userRole 0~>=qVariant_toInt
  dataUserRoleI ix i = ix~>qdata~~userRole i~>=qVariant_toInt

instance QdataUserRole (QModelIndex ()) where
  dataUserS ix = ix~>qdata~~userRole 0~>=qVariant_toString
  dataUserRoleS ix i = ix~>qdata~~userRole i~>=qVariant_toString
  dataUserB ix = ix~>qdata~~userRole 0~>=qVariant_toBool
  dataUserRoleB ix i = ix~>qdata~~userRole i~>=qVariant_toBool
  dataUserI ix = ix~>qdata~~userRole 0~>=qVariant_toInt
  dataUserRoleI ix i = ix~>qdata~~userRole i~>=qVariant_toInt

class QdataDisplayRole x where
  dataDisplayS :: x -> IO String
  dataDisplayRoleS :: x -> Int -> IO String
  dataDisplayB :: x -> IO Bool
  dataDisplayRoleB :: x -> Int -> IO Bool

instance QdataDisplayRole (QStandardItem ()) where
  dataDisplayS ix = ix~>qdata~~displayRole 0~>=qVariant_toString
  dataDisplayRoleS ix i = ix~>qdata~~displayRole i~>=qVariant_toString
  dataDisplayB ix = ix~>qdata~~displayRole 0~>=qVariant_toBool
  dataDisplayRoleB ix i = ix~>qdata~~displayRole i~>=qVariant_toBool

instance QdataDisplayRole (QModelIndex ()) where
  dataDisplayS ix = ix~>qdata~~displayRole 0~>=qVariant_toString
  dataDisplayRoleS ix i = ix~>qdata~~displayRole i~>=qVariant_toString
  dataDisplayB ix = ix~>qdata~~displayRole 0~>=qVariant_toBool
  dataDisplayRoleB ix i = ix~>qdata~~displayRole i~>=qVariant_toBool

class QsetDataUserRole a b where
  setDataUserRole :: a -> b -> Int -> IO ()

instance QsetDataUserRole (QStandardItem ()) String where
  setDataUserRole ix s i = ix~>setData/<~(qVariant s, userRole i)

instance QsetDataUserRole (QStandardItem ()) Bool where
  setDataUserRole ix b i = ix~>setData/<~(qVariant b, userRole i)

instance QsetDataUserRole (QStandardItem ()) Int where
  setDataUserRole ix n i = ix~>setData/<~(qVariant n, userRole i)

infixl 4 ~~
infixl 4 ~>
infixl 4 >~
infixl 4 ~>~
infixl 1 ~>=
infixr 3 <~
infixr 2 <$
infixr 1 =<~
infixr 1 /<~

(~~) :: (a -> b) -> a -> b
(~~) f a = f a

class Qfp x y | x -> y where
  (~>) :: x -> (y -> b -> IO c) -> b -> IO c

instance Qfp (Object a) (Object a) where
  (~>) o f t = f o t

instance Qfp (IO (Object a)) (Object a) where
  (~>) f1 f2 t = f1 >>= \o -> f2 o t

class Qfpn x y | x -> y where
  (>~) :: x -> (y -> () -> IO c) -> IO c

instance Qfpn (Object a) (Object a) where
  (>~) o f = f o ()

instance Qfpn (IO (Object a)) (Object a) where
  (>~) f1 f2  = f1 >>= \o -> f2 o ()

class Qnfpn x y | x -> y where
  (~>~) :: x -> (y -> IO c) -> IO c

instance Qnfpn (Object a) (Object a) where
  (~>~) o f = f o

instance Qnfpn (IO (Object a)) (Object a) where
  (~>~) f1 f2  = f1 >>= \o -> f2 o

class Qems b c | c -> b where
  (~<) :: (Object a) -> ((Object a) -> String -> c -> IO ()) -> Qsignalf b -> c -> IO ()

instance Qems (IO ()) () where
  (~<) o f b c = f o (signalStringf b) c

instance Qems (Int -> IO ()) Int where
  (~<) o f b c = f o (signalStringf b) c

instance Qems (String -> IO ()) String where
  (~<) o f b c = f o (signalStringf b) c

instance Qems (QModelIndex () -> IO ()) (QModelIndex ()) where
  (~<) o f b c = f o (signalStringf b) c

(~>=) :: IO a -> (a -> IO b) -> IO b
(~>=) f1 f2 = f1 >>= \t -> f2 t

class Qbps a ia | ia -> a where
  (<$) :: (a -> b -> IO c) -> ia -> b -> IO c

instance Qbps a (IO a) where
  (<$) f2 f1 t = f1 >>= \a -> f2 a t

class Qbp a ia | ia -> a where
  (<~) :: (a -> IO b) -> ia -> IO b

instance Qbp a (IO a) where
  (<~) f2 f1 = f1 >>= \a -> f2 a

instance Qbp (a, b) (a, IO b) where
  (<~) f2 (a, f1b) = f1b >>= \b -> f2 (a, b)

instance Qbp (a, b, c) (a, b, IO c) where
  (<~) f2 (a, b, f1c) = f1c >>= \c -> f2 (a, b, c)

class Qbpe a ia | ia -> a where
  (=<~) :: (a -> IO b) -> ia -> IO b

instance Qbpe (a, b) (IO a, IO b) where
  (=<~) f2 (f1a, f1b) = f1a >>= \a -> f1b >>= \b -> f2 (a, b)

instance Qbpe (a, b, c) (IO a, IO b, IO c) where
  (=<~) f2 (f1a, f1b, f1c) = f1a >>= \a -> f1b >>= \b -> f1c >>= \c -> f2 (a, b, c)

class Qbpd a ia | ia -> a where
  (/<~) :: (a -> IO b) -> ia -> IO b

instance Qbpd (a, b) (IO a, b) where
  (/<~) f2 (f1a, b) = f1a >>= \a -> f2 (a, b)

instance Qbpd (a, b, c) (IO a, b, c) where
  (/<~) f2 (f1a, b, c) = f1a >>= \a -> f2 (a, b, c)

class Qbpde a ia | ia -> a where
  (=/<~) :: (a -> IO b) -> ia -> IO b

instance Qbpde (a, b, c) (IO a, b, IO c) where
  (=/<~) f2 (f1a, b, f1c) = f1a >>= \a -> f1c >>= \c -> f2 (a, b, c)

infixr 0 >:
infixr 0 >>:
infixl 1 ~:

(>:) c f = (\x -> if (x == c) then do f; return True else return False)

(>>:) cl f = (\x -> if (x == head cl) then do f; return True else return False)

class Qslf a b where
  (~:) :: a -> b -> [b]

instance (Eq a) => Qslf a a where
 (~:) e1 e2 = [e1, e2]

instance (Eq a) => Qslf [a] a where
 (~:) l e = reverse (e:l)

(-:) s d = s d

switch :: Eq a => a -> [a -> IO (Bool)] -> IO ()
switch c l = switch_ c l -: return ()

switch_ :: Eq a => a -> [a -> IO (Bool)] -> (IO ()) -> IO ()
switch_ c l d
  = do
    bl <- mapM (\x -> x c) l
    if (not $ and bl)
      then d
      else return ()

