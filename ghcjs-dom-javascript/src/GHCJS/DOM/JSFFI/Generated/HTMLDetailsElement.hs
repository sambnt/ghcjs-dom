{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDetailsElement
       (js_setOpen, setOpen, js_getOpen, getOpen, HTMLDetailsElement(..),
        gTypeHTMLDetailsElement)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"open\"] = $2; })" js_setOpen ::
        HTMLDetailsElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
setOpen :: (MonadIO m) => HTMLDetailsElement -> Bool -> m ()
setOpen self val = liftIO (js_setOpen self val)
 
foreign import javascript unsafe "(($1) => { return ($1[\"open\"] ? 1 : 0); })"
        js_getOpen :: HTMLDetailsElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
getOpen :: (MonadIO m) => HTMLDetailsElement -> m Bool
getOpen self = liftIO (js_getOpen self)