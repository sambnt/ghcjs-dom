{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TouchEvent
       (js_initTouchEvent, initTouchEvent, js_getTouches, getTouches,
        getTouchesUnsafe, getTouchesUnchecked, js_getTargetTouches,
        getTargetTouches, getTargetTouchesUnsafe,
        getTargetTouchesUnchecked, js_getChangedTouches, getChangedTouches,
        getChangedTouchesUnsafe, getChangedTouchesUnchecked, js_getCtrlKey,
        getCtrlKey, js_getShiftKey, getShiftKey, js_getAltKey, getAltKey,
        js_getMetaKey, getMetaKey, TouchEvent(..), gTypeTouchEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe
        "$1[\"initTouchEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14)"
        js_initTouchEvent ::
        TouchEvent ->
          Nullable TouchList ->
            Nullable TouchList ->
              Nullable TouchList ->
                JSString ->
                  Nullable Window ->
                    Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.initTouchEvent Mozilla TouchEvent.initTouchEvent documentation> 
initTouchEvent ::
               (MonadIO m, ToJSString type') =>
                 TouchEvent ->
                   Maybe TouchList ->
                     Maybe TouchList ->
                       Maybe TouchList ->
                         type' ->
                           Maybe Window ->
                             Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> m ()
initTouchEvent self touches targetTouches changedTouches type' view
  screenX screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftIO
      (js_initTouchEvent (self) (maybeToNullable touches)
         (maybeToNullable targetTouches)
         (maybeToNullable changedTouches)
         (toJSString type')
         (maybeToNullable view)
         screenX
         screenY
         clientX
         clientY
         ctrlKey
         altKey
         shiftKey
         metaKey)
 
foreign import javascript unsafe "$1[\"touches\"]" js_getTouches ::
        TouchEvent -> IO (Nullable TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouches :: (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getTouches self
  = liftIO (nullableToMaybe <$> (js_getTouches (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouchesUnsafe ::
                 (MonadIO m, HasCallStack) => TouchEvent -> m TouchList
getTouchesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTouches (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouchesUnchecked :: (MonadIO m) => TouchEvent -> m TouchList
getTouchesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTouches (self)))
 
foreign import javascript unsafe "$1[\"targetTouches\"]"
        js_getTargetTouches :: TouchEvent -> IO (Nullable TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouches ::
                 (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getTargetTouches self
  = liftIO (nullableToMaybe <$> (js_getTargetTouches (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouchesUnsafe ::
                       (MonadIO m, HasCallStack) => TouchEvent -> m TouchList
getTargetTouchesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTargetTouches (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouchesUnchecked ::
                          (MonadIO m) => TouchEvent -> m TouchList
getTargetTouchesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getTargetTouches (self)))
 
foreign import javascript unsafe "$1[\"changedTouches\"]"
        js_getChangedTouches :: TouchEvent -> IO (Nullable TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouches ::
                  (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getChangedTouches self
  = liftIO (nullableToMaybe <$> (js_getChangedTouches (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouchesUnsafe ::
                        (MonadIO m, HasCallStack) => TouchEvent -> m TouchList
getChangedTouchesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getChangedTouches (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouchesUnchecked ::
                           (MonadIO m) => TouchEvent -> m TouchList
getChangedTouchesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getChangedTouches (self)))
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.ctrlKey Mozilla TouchEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => TouchEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey (self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.shiftKey Mozilla TouchEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => TouchEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey (self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.altKey Mozilla TouchEvent.altKey documentation> 
getAltKey :: (MonadIO m) => TouchEvent -> m Bool
getAltKey self = liftIO (js_getAltKey (self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.metaKey Mozilla TouchEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => TouchEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey (self))