{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ValidityState
       (js_getValueMissing, getValueMissing, js_getTypeMismatch,
        getTypeMismatch, js_getPatternMismatch, getPatternMismatch,
        js_getTooShort, getTooShort, js_getTooLong, getTooLong,
        js_getRangeUnderflow, getRangeUnderflow, js_getRangeOverflow,
        getRangeOverflow, js_getStepMismatch, getStepMismatch,
        js_getBadInput, getBadInput, js_getCustomError, getCustomError,
        js_getValid, getValid, ValidityState(..), gTypeValidityState)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHC.JS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "(($1) => { return ($1[\"valueMissing\"] ? 1 : 0); })"
        js_getValueMissing :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valueMissing Mozilla ValidityState.valueMissing documentation> 
getValueMissing :: (MonadIO m) => ValidityState -> m Bool
getValueMissing self = liftIO (js_getValueMissing self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"typeMismatch\"] ? 1 : 0); })"
        js_getTypeMismatch :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.typeMismatch Mozilla ValidityState.typeMismatch documentation> 
getTypeMismatch :: (MonadIO m) => ValidityState -> m Bool
getTypeMismatch self = liftIO (js_getTypeMismatch self)
 
foreign import javascript unsafe
        "(($1) => { return ($1[\"patternMismatch\"] ? 1 : 0); })" js_getPatternMismatch ::
        ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.patternMismatch Mozilla ValidityState.patternMismatch documentation> 
getPatternMismatch :: (MonadIO m) => ValidityState -> m Bool
getPatternMismatch self = liftIO (js_getPatternMismatch self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"tooShort\"] ? 1 : 0); })"
        js_getTooShort :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.tooShort Mozilla ValidityState.tooShort documentation> 
getTooShort :: (MonadIO m) => ValidityState -> m Bool
getTooShort self = liftIO (js_getTooShort self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"tooLong\"] ? 1 : 0); })"
        js_getTooLong :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.tooLong Mozilla ValidityState.tooLong documentation> 
getTooLong :: (MonadIO m) => ValidityState -> m Bool
getTooLong self = liftIO (js_getTooLong self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"rangeUnderflow\"] ? 1 : 0); })"
        js_getRangeUnderflow :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeUnderflow Mozilla ValidityState.rangeUnderflow documentation> 
getRangeUnderflow :: (MonadIO m) => ValidityState -> m Bool
getRangeUnderflow self = liftIO (js_getRangeUnderflow self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"rangeOverflow\"] ? 1 : 0); })"
        js_getRangeOverflow :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeOverflow Mozilla ValidityState.rangeOverflow documentation> 
getRangeOverflow :: (MonadIO m) => ValidityState -> m Bool
getRangeOverflow self = liftIO (js_getRangeOverflow self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"stepMismatch\"] ? 1 : 0); })"
        js_getStepMismatch :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.stepMismatch Mozilla ValidityState.stepMismatch documentation> 
getStepMismatch :: (MonadIO m) => ValidityState -> m Bool
getStepMismatch self = liftIO (js_getStepMismatch self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"badInput\"] ? 1 : 0); })"
        js_getBadInput :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.badInput Mozilla ValidityState.badInput documentation> 
getBadInput :: (MonadIO m) => ValidityState -> m Bool
getBadInput self = liftIO (js_getBadInput self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"customError\"] ? 1 : 0); })"
        js_getCustomError :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.customError Mozilla ValidityState.customError documentation> 
getCustomError :: (MonadIO m) => ValidityState -> m Bool
getCustomError self = liftIO (js_getCustomError self)
 
foreign import javascript unsafe "(($1) => { return ($1[\"valid\"] ? 1 : 0); })"
        js_getValid :: ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valid Mozilla ValidityState.valid documentation> 
getValid :: (MonadIO m) => ValidityState -> m Bool
getValid self = liftIO (js_getValid self)