{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGScriptElement
       (js_setType, setType, js_getType, getType, SVGScriptElement(..),
        gTypeSVGScriptElement)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"type\"] = $2; })" js_setType ::
        SVGScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => SVGScriptElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"type\"]; })" js_getType ::
        SVGScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => SVGScriptElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))