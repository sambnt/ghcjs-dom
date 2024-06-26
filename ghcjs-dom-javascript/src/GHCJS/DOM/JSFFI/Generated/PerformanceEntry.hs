{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceEntry
       (js_getName, getName, js_getEntryType, getEntryType,
        js_getStartTime, getStartTime, js_getDuration, getDuration,
        PerformanceEntry(..), gTypePerformanceEntry, IsPerformanceEntry,
        toPerformanceEntry)
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
 
foreign import javascript unsafe "(($1) => { return $1[\"name\"]; })" js_getName ::
        PerformanceEntry -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.name Mozilla PerformanceEntry.name documentation> 
getName ::
        (MonadIO m, IsPerformanceEntry self, FromJSString result) =>
          self -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (toPerformanceEntry self)))
 
foreign import javascript unsafe "(($1) => { return $1[\"entryType\"]; })"
        js_getEntryType :: PerformanceEntry -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.entryType Mozilla PerformanceEntry.entryType documentation> 
getEntryType ::
             (MonadIO m, IsPerformanceEntry self, FromJSString result) =>
               self -> m result
getEntryType self
  = liftIO
      (fromJSString <$> (js_getEntryType (toPerformanceEntry self)))
 
foreign import javascript unsafe "(($1) => { return $1[\"startTime\"]; })"
        js_getStartTime :: PerformanceEntry -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.startTime Mozilla PerformanceEntry.startTime documentation> 
getStartTime ::
             (MonadIO m, IsPerformanceEntry self) =>
               self -> m DOMHighResTimeStamp
getStartTime self
  = liftIO (js_getStartTime (toPerformanceEntry self))
 
foreign import javascript unsafe "(($1) => { return $1[\"duration\"]; })" js_getDuration
        :: PerformanceEntry -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry.duration Mozilla PerformanceEntry.duration documentation> 
getDuration ::
            (MonadIO m, IsPerformanceEntry self) =>
              self -> m DOMHighResTimeStamp
getDuration self
  = liftIO (js_getDuration (toPerformanceEntry self))