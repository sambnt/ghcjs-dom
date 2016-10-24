{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StyleMedia
       (js_matchMedium, matchMedium, matchMedium_, js_getType, getType,
        StyleMedia(..), gTypeStyleMedia)
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
        "($1[\"matchMedium\"]($2) ? 1 : 0)" js_matchMedium ::
        StyleMedia -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium ::
            (MonadIO m, ToJSString mediaquery) =>
              StyleMedia -> mediaquery -> m Bool
matchMedium self mediaquery
  = liftIO (js_matchMedium (self) (toJSString mediaquery))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium_ ::
             (MonadIO m, ToJSString mediaquery) =>
               StyleMedia -> mediaquery -> m ()
matchMedium_ self mediaquery
  = liftIO (void (js_matchMedium (self) (toJSString mediaquery)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        StyleMedia -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.type Mozilla StyleMedia.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => StyleMedia -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))