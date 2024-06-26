{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRect
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setWidth, setWidth, js_getWidth, getWidth, js_setHeight,
        setHeight, js_getHeight, getHeight, SVGRect(..), gTypeSVGRect)
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
 
foreign import javascript safe "(($1, $2) => { $1[\"x\"] = $2; })" js_setX ::
        SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
setX :: (MonadIO m) => SVGRect -> Float -> m ()
setX self val = liftIO (js_setX self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"x\"]; })" js_getX ::
        SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
getX :: (MonadIO m) => SVGRect -> m Float
getX self = liftIO (js_getX self)
 
foreign import javascript safe "(($1, $2) => { $1[\"y\"] = $2; })" js_setY ::
        SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
setY :: (MonadIO m) => SVGRect -> Float -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"y\"]; })" js_getY ::
        SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
getY :: (MonadIO m) => SVGRect -> m Float
getY self = liftIO (js_getY self)
 
foreign import javascript safe "(($1, $2) => { $1[\"width\"] = $2; })" js_setWidth ::
        SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
setWidth :: (MonadIO m) => SVGRect -> Float -> m ()
setWidth self val = liftIO (js_setWidth self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"width\"]; })" js_getWidth ::
        SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
getWidth :: (MonadIO m) => SVGRect -> m Float
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript safe "(($1, $2) => { $1[\"height\"] = $2; })" js_setHeight
        :: SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
setHeight :: (MonadIO m) => SVGRect -> Float -> m ()
setHeight self val = liftIO (js_setHeight self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"height\"]; })" js_getHeight ::
        SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
getHeight :: (MonadIO m) => SVGRect -> m Float
getHeight self = liftIO (js_getHeight self)