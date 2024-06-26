{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLBodyElement
       (js_setALink, setALink, js_getALink, getALink, js_setBackground,
        setBackground, js_getBackground, getBackground, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setLink, setLink,
        js_getLink, getLink, js_setText, setText, js_getText, getText,
        js_setVLink, setVLink, js_getVLink, getVLink, blur, error, focus,
        focusin, focusout, load, resize, scroll, webKitMouseForcechanged,
        webKitMouseForcedown, webKitMouseForcewillbegin,
        webKitMouseForceup, webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop, selectionchange,
        HTMLBodyElement(..), gTypeHTMLBodyElement)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"aLink\"] = $2; })" js_setALink
        :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
setALink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setALink self val = liftIO (js_setALink self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"aLink\"]; })" js_getALink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
getALink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getALink self = liftIO (fromJSString <$> (js_getALink self))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"background\"] = $2; })"
        js_setBackground :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
setBackground ::
              (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBackground self val
  = liftIO (js_setBackground self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"background\"]; })"
        js_getBackground :: HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
getBackground ::
              (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBackground self
  = liftIO (fromJSString <$> (js_getBackground self))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"bgColor\"] = $2; })"
        js_setBgColor :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBgColor self val = liftIO (js_setBgColor self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"bgColor\"]; })" js_getBgColor ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor self))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"link\"] = $2; })" js_setLink ::
        HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
setLink ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setLink self val = liftIO (js_setLink self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"link\"]; })" js_getLink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
getLink ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getLink self = liftIO (fromJSString <$> (js_getLink self))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"text\"] = $2; })" js_setText ::
        HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setText self val = liftIO (js_setText self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"text\"]; })" js_getText ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getText self = liftIO (fromJSString <$> (js_getText self))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"vLink\"] = $2; })" js_setVLink
        :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
setVLink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setVLink self val = liftIO (js_setVLink self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"vLink\"]; })" js_getVLink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
getVLink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getVLink self = liftIO (fromJSString <$> (js_getVLink self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onblur Mozilla HTMLBodyElement.onblur documentation> 
blur :: EventName HTMLBodyElement FocusEvent
blur = unsafeEventNameAsync (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onerror Mozilla HTMLBodyElement.onerror documentation> 
error :: EventName HTMLBodyElement UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocus Mozilla HTMLBodyElement.onfocus documentation> 
focus :: EventName HTMLBodyElement FocusEvent
focus = unsafeEventNameAsync (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocusin Mozilla HTMLBodyElement.onfocusin documentation> 
focusin :: EventName HTMLBodyElement onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocusout Mozilla HTMLBodyElement.onfocusout documentation> 
focusout :: EventName HTMLBodyElement onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onload Mozilla HTMLBodyElement.onload documentation> 
load :: EventName HTMLBodyElement UIEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onresize Mozilla HTMLBodyElement.onresize documentation> 
resize :: EventName HTMLBodyElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onscroll Mozilla HTMLBodyElement.onscroll documentation> 
scroll :: EventName HTMLBodyElement UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcechanged Mozilla HTMLBodyElement.onwebkitmouseforcechanged documentation> 
webKitMouseForcechanged ::
                          EventName HTMLBodyElement onwebkitmouseforcechanged
webKitMouseForcechanged
  = unsafeEventName (toJSString "webkitmouseforcechanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcedown Mozilla HTMLBodyElement.onwebkitmouseforcedown documentation> 
webKitMouseForcedown ::
                       EventName HTMLBodyElement onwebkitmouseforcedown
webKitMouseForcedown
  = unsafeEventName (toJSString "webkitmouseforcedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforcewillbegin Mozilla HTMLBodyElement.onwebkitmouseforcewillbegin documentation> 
webKitMouseForcewillbegin ::
                            EventName HTMLBodyElement onwebkitmouseforcewillbegin
webKitMouseForcewillbegin
  = unsafeEventName (toJSString "webkitmouseforcewillbegin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitmouseforceup Mozilla HTMLBodyElement.onwebkitmouseforceup documentation> 
webKitMouseForceup ::
                     EventName HTMLBodyElement onwebkitmouseforceup
webKitMouseForceup
  = unsafeEventName (toJSString "webkitmouseforceup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealbottom Mozilla HTMLBodyElement.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom :: EventName HTMLBodyElement Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealleft Mozilla HTMLBodyElement.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft :: EventName HTMLBodyElement Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealright Mozilla HTMLBodyElement.onwebkitwillrevealright documentation> 
webKitWillRevealRight :: EventName HTMLBodyElement Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onwebkitwillrevealtop Mozilla HTMLBodyElement.onwebkitwillrevealtop documentation> 
webKitWillRevealTop :: EventName HTMLBodyElement Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onselectionchange Mozilla HTMLBodyElement.onselectionchange documentation> 
selectionchange :: EventName HTMLBodyElement onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")