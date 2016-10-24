{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DedicatedWorkerGlobalScope
       (js_postMessage, postMessage, message,
        DedicatedWorkerGlobalScope(..), gTypeDedicatedWorkerGlobalScope)
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
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        DedicatedWorkerGlobalScope -> JSVal -> Nullable Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.postMessage Mozilla DedicatedWorkerGlobalScope.postMessage documentation> 
postMessage ::
            (MonadIO m, IsArray messagePorts) =>
              DedicatedWorkerGlobalScope -> JSVal -> Maybe messagePorts -> m ()
postMessage self message messagePorts
  = liftIO
      (js_postMessage (self) message
         (maybeToNullable (fmap toArray messagePorts)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope.onmessage Mozilla DedicatedWorkerGlobalScope.onmessage documentation> 
message :: EventName DedicatedWorkerGlobalScope MessageEvent
message = unsafeEventName (toJSString "message")