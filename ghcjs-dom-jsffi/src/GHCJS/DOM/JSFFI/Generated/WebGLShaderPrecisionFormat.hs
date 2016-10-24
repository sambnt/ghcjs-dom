{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGLShaderPrecisionFormat
       (js_getRangeMin, getRangeMin, js_getRangeMax, getRangeMax,
        js_getPrecision, getPrecision, WebGLShaderPrecisionFormat(..),
        gTypeWebGLShaderPrecisionFormat)
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
 
foreign import javascript unsafe "$1[\"rangeMin\"]" js_getRangeMin
        :: WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMin Mozilla WebGLShaderPrecisionFormat.rangeMin documentation> 
getRangeMin :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getRangeMin self = liftIO (js_getRangeMin (self))
 
foreign import javascript unsafe "$1[\"rangeMax\"]" js_getRangeMax
        :: WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMax Mozilla WebGLShaderPrecisionFormat.rangeMax documentation> 
getRangeMax :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getRangeMax self = liftIO (js_getRangeMax (self))
 
foreign import javascript unsafe "$1[\"precision\"]"
        js_getPrecision :: WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.precision Mozilla WebGLShaderPrecisionFormat.precision documentation> 
getPrecision :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getPrecision self = liftIO (js_getPrecision (self))