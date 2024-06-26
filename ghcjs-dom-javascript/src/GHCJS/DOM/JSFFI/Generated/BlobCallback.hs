{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.BlobCallback
       (newBlobCallback, newBlobCallbackSync, newBlobCallbackAsync,
        BlobCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallback ::
                (MonadIO m) => (Maybe Blob -> IO ()) -> m BlobCallback
newBlobCallback callback
  = liftIO
      (BlobCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ blob -> fromJSValUnchecked blob >>= \ blob' -> callback blob'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallbackSync ::
                    (MonadIO m) => (Maybe Blob -> IO ()) -> m BlobCallback
newBlobCallbackSync callback
  = liftIO
      (BlobCallback <$>
         syncCallback1 ContinueAsync
           (\ blob -> fromJSValUnchecked blob >>= \ blob' -> callback blob'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BlobCallback Mozilla BlobCallback documentation> 
newBlobCallbackAsync ::
                     (MonadIO m) => (Maybe Blob -> IO ()) -> m BlobCallback
newBlobCallbackAsync callback
  = liftIO
      (BlobCallback <$>
         asyncCallback1
           (\ blob -> fromJSValUnchecked blob >>= \ blob' -> callback blob'))