{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPipelineState
       (js_setLabel, setLabel, js_getLabel, getLabel,
        WebGPURenderPipelineState(..), gTypeWebGPURenderPipelineState)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"label\"] = $2; })" js_setLabel
        :: WebGPURenderPipelineState -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineState.label Mozilla WebGPURenderPipelineState.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) =>
           WebGPURenderPipelineState -> val -> m ()
setLabel self val = liftIO (js_setLabel self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"label\"]; })" js_getLabel ::
        WebGPURenderPipelineState -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineState.label Mozilla WebGPURenderPipelineState.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) =>
           WebGPURenderPipelineState -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel self))