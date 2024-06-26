{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SpeechSynthesisEvent
       (js_getCharIndex, getCharIndex, js_getElapsedTime, getElapsedTime,
        js_getName, getName, SpeechSynthesisEvent(..),
        gTypeSpeechSynthesisEvent)
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
 
foreign import javascript unsafe "(($1) => { return $1[\"charIndex\"]; })"
        js_getCharIndex :: SpeechSynthesisEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.charIndex Mozilla SpeechSynthesisEvent.charIndex documentation> 
getCharIndex :: (MonadIO m) => SpeechSynthesisEvent -> m Word
getCharIndex self = liftIO (js_getCharIndex self)
 
foreign import javascript unsafe "(($1) => { return $1[\"elapsedTime\"]; })"
        js_getElapsedTime :: SpeechSynthesisEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.elapsedTime Mozilla SpeechSynthesisEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => SpeechSynthesisEvent -> m Float
getElapsedTime self = liftIO (js_getElapsedTime self)
 
foreign import javascript unsafe "(($1) => { return $1[\"name\"]; })" js_getName ::
        SpeechSynthesisEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent.name Mozilla SpeechSynthesisEvent.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          SpeechSynthesisEvent -> m result
getName self = liftIO (fromJSString <$> (js_getName self))