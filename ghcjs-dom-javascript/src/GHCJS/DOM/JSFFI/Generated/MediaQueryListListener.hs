{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaQueryListListener
       (newMediaQueryListListener, newMediaQueryListListenerSync,
        newMediaQueryListListenerAsync, MediaQueryListListener)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListener ::
                          (MonadIO m) =>
                            (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListener callback
  = liftIO
      (MediaQueryListListener <$>
         syncCallback1 ThrowWouldBlock
           (\ list -> fromJSValUnchecked list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerSync ::
                              (MonadIO m) =>
                                (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListenerSync callback
  = liftIO
      (MediaQueryListListener <$>
         syncCallback1 ContinueAsync
           (\ list -> fromJSValUnchecked list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerAsync ::
                               (MonadIO m) =>
                                 (Maybe MediaQueryList -> IO ()) -> m MediaQueryListListener
newMediaQueryListListenerAsync callback
  = liftIO
      (MediaQueryListListener <$>
         asyncCallback1
           (\ list -> fromJSValUnchecked list >>= \ list' -> callback list'))