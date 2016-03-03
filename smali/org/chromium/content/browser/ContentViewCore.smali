.class public Lorg/chromium/content/browser/ContentViewCore;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;,
        Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# instance fields
.field private mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

.field private mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

.field private mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

.field private mContainerViewObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content/browser/ContainerViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContentSettings:Lorg/chromium/content/browser/ContentSettings;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchOffsetX:F

.field private mCurrentTouchOffsetY:F

.field private mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

.field private final mEditable:Landroid/text/Editable;

.field private mFakeMouseMoveRunnable:Ljava/lang/Runnable;

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mFocusedNodeEditable:Z

.field private mFullscreenRequiredForOrientationLock:Z

.field private final mGestureStateListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInsertion:Z

.field private mHasSelection:Z

.field private mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private final mJavaScriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSelectedText:Ljava/lang/String;

.field private mLastTapX:I

.field private mLastTapY:I

.field private mNativeAccessibilityAllowed:Z

.field private mNativeAccessibilityEnabled:Z

.field private mNativeContentViewCore:J

.field private mNativeSelectPopupSourceFrame:J

.field private mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

.field private mPhysicalBackingHeightPix:I

.field private mPhysicalBackingWidthPix:I

.field private mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

.field private mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mPotentiallyActiveFlingCount:I

.field private mPreserveSelectionOnNextLossOfFocus:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private final mRetainedJavaScriptObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

.field private mShouldSetAccessibilityFocusOnPageLoad:Z

.field private mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

.field private mSmartClipOffsetX:I

.field private mSmartClipOffsetY:I

.field private mTopControlsLayoutHeightPix:I

.field private mTouchExplorationEnabled:Z

.field private mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

.field private mTouchScrollInProgress:Z

.field private mUnselectAllOnActionModeDismiss:Z

.field private mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

.field private mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

.field private mViewportHeightPix:I

.field private mViewportWidthPix:I

.field private mWasPastePopupShowingOnInsertionDragStart:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

.field private mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    .line 115
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewCore$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    .line 389
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 397
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 399
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 469
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    .line 486
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 512
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 524
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    .line 526
    new-instance v2, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    invoke-direct {v2}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    .line 527
    new-instance v2, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 529
    new-instance v2, Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v2}, Lorg/chromium/content/browser/RenderCoordinates;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 530
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 531
    .local v0, "deviceScaleFactor":F
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "force-device-scale-factor"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "forceScaleFactor":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 534
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 536
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->setDeviceScaleFactor(F)V

    .line 537
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 539
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    .line 540
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    .line 542
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    .line 543
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 544
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    .line 545
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewCore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetGestureDetection()V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/ContentViewCore;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 102
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(JJFF)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 102
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(JJFF)V

    return-void
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearUserSelection()V

    return-void
.end method

.method static synthetic access$2500(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PositionObserver;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    return-void
.end method

.method private actionModeInvalidateWAR()V
    .locals 3

    .prologue
    .line 1905
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1908
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    :goto_0
    return-void

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "ContentViewCore"

    const-string v2, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static activityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Landroid/app/Activity;

    .line 374
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 370
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 371
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 372
    .restart local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 374
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 2410
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    goto :goto_0
.end method

.method private cancelRequestToScrollFocusedEditableNodeIntoView()V
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1560
    return-void
.end method

.method private clearUserSelection()V
    .locals 2

    .prologue
    .line 1367
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eqz v1, :cond_1

    .line 1368
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v1, :cond_0

    .line 1369
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1370
    .local v0, "selectionEnd":I
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v1, v0, v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setSelection(II)Z

    .line 1375
    .end local v0    # "selectionEnd":I
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    goto :goto_0
.end method

.method private createImeAdapter(Landroid/content/Context;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 634
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$2;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V

    return-object v0
.end method

.method private createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "src"    # Landroid/view/MotionEvent;

    .prologue
    .line 1698
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1699
    .local v0, "dst":Landroid/view/MotionEvent;
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1700
    return-object v0
.end method

.method private createPopupTouchHandleDrawable()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    if-nez v0, :cond_0

    .line 2338
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$8;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$8;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 2361
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 2884
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createTouchEventSynthesizer()Lorg/chromium/content/browser/TouchEventSynthesizer;
    .locals 1

    .prologue
    .line 2331
    new-instance v0, Lorg/chromium/content/browser/TouchEventSynthesizer;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TouchEventSynthesizer;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private dismissTextHandles()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2140
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2141
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2142
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeDismissTextHandles(J)V

    .line 2143
    :cond_0
    return-void
.end method

.method private filterTapOrPressEvent(III)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1233
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->offerLongPressToEmbedder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x1

    .line 1237
    :goto_0
    return v0

    .line 1236
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateForTapOrPress(IFF)V

    .line 1237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;
    .locals 3

    .prologue
    .line 2391
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v0, :cond_0

    .line 2392
    new-instance v0, Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$9;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$9;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/PastePopupMenu;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 2401
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    return-object v0
.end method

.method private hasFocus()Z
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2438
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    goto :goto_0
.end method

.method private hidePastePopup()V
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v0, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2073
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->hide()V

    goto :goto_0
.end method

.method private hidePopups()V
    .locals 2

    .prologue
    .line 1378
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    .line 1379
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1380
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectPopup()V

    .line 1381
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1382
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    .line 1383
    :cond_0
    return-void
.end method

.method private hidePopupsAndClearSelection()V
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1354
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1358
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearUserSelection()V

    .line 1359
    return-void
.end method

.method private hidePopupsAndPreserveSelection()V
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1363
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1364
    return-void
.end method

.method private hideSelectPopup()V
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup;->hide()V

    .line 2312
    :cond_0
    return-void
.end method

.method private isFullscreenRequiredForOrientationLock()Z
    .locals 1

    .prologue
    .line 3002
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    return v0
.end method

.method private static isValidTouchEventActionForNative(I)Z
    .locals 2
    .param p0, "eventAction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1135
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
.end method

.method private native nativeDismissTextHandles(J)V
.end method

.method private native nativeDoubleTap(JJFF)V
.end method

.method private native nativeExtractSmartClipData(JIIII)V
.end method

.method private native nativeFlingCancel(JJ)V
.end method

.method private native nativeFlingStart(JJFFFF)V
.end method

.method private native nativeGetCurrentRenderProcessId(J)I
.end method

.method private native nativeGetNativeImeAdapter(J)J
.end method

.method private native nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit(JJJLjava/util/HashSet;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method private native nativeLongPress(JJFF)V
.end method

.method private native nativeMoveCaret(JFF)V
.end method

.method private native nativeOnJavaContentViewCoreDestroyed(J)V
.end method

.method private native nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFIIIIZ)Z
.end method

.method private native nativePinchBegin(JJFF)V
.end method

.method private native nativePinchBy(JJFFF)V
.end method

.method private native nativePinchEnd(JJ)V
.end method

.method private native nativeRemoveJavascriptInterface(JLjava/lang/String;)V
.end method

.method private native nativeResetGestureDetection(J)V
.end method

.method private native nativeScrollBegin(JJFFFF)V
.end method

.method private native nativeScrollBy(JJFFFF)V
.end method

.method private native nativeScrollEnd(JJ)V
.end method

.method private native nativeSelectBetweenCoordinates(JFFFF)V
.end method

.method private native nativeSelectPopupMenuItems(JJ[I)V
.end method

.method private native nativeSendMouseMoveEvent(JJFF)I
.end method

.method private native nativeSendMouseWheelEvent(JJFFF)I
.end method

.method private native nativeSendOrientationChangeEvent(JI)V
.end method

.method private native nativeSetAccessibilityEnabled(JZ)V
.end method

.method private native nativeSetAllowJavascriptInterfacesInspection(JZ)V
.end method

.method private native nativeSetBackgroundOpaque(JZ)V
.end method

.method private native nativeSetDoubleTapSupportEnabled(JZ)V
.end method

.method private native nativeSetFocus(JZ)V
.end method

.method private native nativeSetMultiTouchZoomSupportEnabled(JZ)V
.end method

.method private native nativeSetTextHandlesTemporarilyHidden(JZ)V
.end method

.method private native nativeSingleTap(JJFF)V
.end method

.method private native nativeWasResized(J)V
.end method

.method private offerLongPressToEmbedder()Z
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method private onBackgroundColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 985
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onBackgroundColorChanged(I)V

    .line 986
    return-void
.end method

.method private onFlingCancelEventAck()V
    .locals 1

    .prologue
    .line 1176
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1177
    return-void
.end method

.method private onFlingStartEventConsumed(II)V
    .locals 3
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1155
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 1156
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1157
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingStartGesture(IIII)V

    goto :goto_0

    .line 1161
    :cond_0
    return-void
.end method

.method private onFlingStartEventHadNoConsumer(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1167
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1168
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onUnhandledFlingStartEvent(II)V

    goto :goto_0

    .line 1171
    :cond_0
    return-void
.end method

.method private onNativeFlingStopped()V
    .locals 1

    .prologue
    .line 2981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 2982
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-gtz v0, :cond_0

    .line 2985
    :goto_0
    return-void

    .line 2983
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 2984
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onPinchBeginEventAck()V
    .locals 1

    .prologue
    .line 1209
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1210
    return-void
.end method

.method private onPinchEndEventAck()V
    .locals 1

    .prologue
    .line 1215
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1216
    return-void
.end method

.method private onRenderProcessChange()V
    .locals 0

    .prologue
    .line 2418
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 2419
    return-void
.end method

.method private onScrollBeginEventAck()V
    .locals 1

    .prologue
    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1183
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1184
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1185
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1186
    return-void
.end method

.method private onScrollEndEventAck()V
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1202
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1203
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onScrollUpdateGestureConsumed()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1192
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1193
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollUpdateGestureConsumed()V

    goto :goto_0

    .line 1196
    :cond_0
    return-void
.end method

.method private onSelectionChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2367
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    .line 2368
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onSelectionChanged(Ljava/lang/String;)V

    .line 2369
    return-void
.end method

.method private onSelectionEvent(IFF)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "posXDip"    # F
    .param p3, "posYDip"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2078
    packed-switch p1, :pswitch_data_0

    .line 2132
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid selection event type."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2080
    :pswitch_0
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2081
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2084
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2085
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionBar()V

    .line 2135
    :cond_0
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 2136
    .local v0, "scale":F
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    mul-float v2, p2, v0

    mul-float v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lorg/chromium/content/browser/ContentViewClient;->onSelectionEvent(IFF)V

    .line 2137
    return-void

    .line 2089
    .end local v0    # "scale":F
    :pswitch_2
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2090
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2091
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    goto :goto_0

    .line 2101
    :pswitch_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    goto :goto_0

    .line 2105
    :pswitch_4
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v1, :cond_0

    .line 2106
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2109
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2114
    :pswitch_5
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v1, :cond_2

    .line 2115
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2117
    :cond_2
    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2121
    :pswitch_6
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2122
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2126
    :pswitch_7
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    .line 2128
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2126
    goto :goto_1

    .line 2078
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onSingleTapEventAck(ZII)V
    .locals 1
    .param p1, "consumed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1222
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->onSingleTap(ZII)V

    goto :goto_0

    .line 1225
    :cond_0
    return-void
.end method

.method private onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2919
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 2920
    .local v0, "deviceScale":F
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v1, v3

    .line 2921
    .local v1, "offsetXInDp":I
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 2922
    .local v2, "offsetYInDp":I
    neg-int v3, v1

    neg-int v4, v2

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2924
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    if-eqz v3, :cond_0

    .line 2925
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    invoke-interface {v3, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;->onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2927
    :cond_0
    return-void
.end method

.method private onTouchEventImpl(Landroid/view/MotionEvent;Z)Z
    .locals 33
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouchHandleEvent"    # Z

    .prologue
    .line 1085
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1087
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1089
    .local v8, "eventAction":I
    if-nez v8, :cond_0

    .line 1090
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1093
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-static {v8}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v8

    .line 1095
    :cond_1
    invoke-static {v8}, Lorg/chromium/content/browser/ContentViewCore;->isValidTouchEventActionForNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const/16 v31, 0x0

    .line 1127
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v31

    .line 1097
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/16 v31, 0x0

    .line 1127
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_3
    const/16 v32, 0x0

    .line 1101
    .local v32, "offset":Landroid/view/MotionEvent;
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 1102
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v32

    .line 1103
    move-object/from16 p1, v32

    .line 1106
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 1107
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/4 v2, 0x1

    if-le v9, v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    :goto_1
    const/4 v2, 0x1

    if-le v9, v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    const/4 v2, 0x1

    if-le v9, v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v18

    const/4 v2, 0x1

    if-le v9, v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v19

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v20

    const/4 v2, 0x1

    if-le v9, v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v21

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v22

    const/4 v2, 0x1

    if-le v9, v2, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v23

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v25

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v26

    const/4 v2, 0x1

    if-le v9, v2, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v27

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v29

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v30, p2

    invoke-direct/range {v2 .. v30}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFIIIIZ)Z

    move-result v31

    .line 1124
    .local v31, "consumed":Z
    if-eqz v32, :cond_6

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    :cond_6
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    .end local v31    # "consumed":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    :cond_9
    const/16 v17, -0x1

    goto :goto_3

    :cond_a
    const/16 v19, 0x0

    goto :goto_4

    :cond_b
    const/16 v21, 0x0

    goto :goto_5

    :cond_c
    const/16 v23, 0x0

    goto :goto_6

    :cond_d
    const/16 v27, 0x0

    goto :goto_7

    .line 1127
    .end local v8    # "eventAction":I
    .end local v9    # "pointerCount":I
    .end local v32    # "offset":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v2

    const-string v3, "onTouchEvent"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2
.end method

.method private resetGestureDetection()V
    .locals 4

    .prologue
    .line 1401
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeResetGestureDetection(J)V

    goto :goto_0
.end method

.method private resetScrollInProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2953
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 2956
    .local v1, "touchScrollInProgress":Z
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 2958
    .local v0, "potentiallyActiveFlingCount":I
    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 2959
    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 2961
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 2962
    :cond_2
    if-lez v0, :cond_0

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private restoreSelectionPopupsIfNecessary()V
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionBar()V

    .line 1387
    :cond_0
    return-void
.end method

.method private setTextHandlesTemporarilyHidden(Z)V
    .locals 4
    .param p1, "hide"    # Z

    .prologue
    .line 2146
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2148
    :goto_0
    return-void

    .line 2147
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextHandlesTemporarilyHidden(JZ)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2268
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onUpdateTitle(Ljava/lang/String;)V

    .line 2269
    return-void
.end method

.method private shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2974
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldBlockMediaRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showDisambiguationPopup(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "targetRect"    # Landroid/graphics/Rect;
    .param p2, "zoomedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2324
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/PopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2325
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->show(Landroid/graphics/Rect;)V

    .line 2326
    return-void
.end method

.method private showPastePopup(II)Z
    .locals 5
    .param p1, "xDip"    # I
    .param p2, "yDip"    # I

    .prologue
    .line 2382
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->canPaste()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2387
    :goto_0
    return v1

    .line 2383
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    .line 2384
    .local v0, "contentOffsetYPix":F
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    int-to-float v4, p2

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/input/PastePopupMenu;->showAt(II)V

    .line 2387
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showPastePopupWithFeedback(II)V
    .locals 2
    .param p1, "xDip"    # I
    .param p2, "yDip"    # I

    .prologue
    .line 2376
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2379
    :cond_0
    return-void
.end method

.method private showSelectActionBar()V
    .locals 5

    .prologue
    .line 1915
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1916
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->actionModeInvalidateWAR()V

    .line 2039
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    if-nez v0, :cond_1

    .line 1922
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$7;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    .line 2024
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 2026
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2027
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2028
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewClient;->getSelectActionModeCallback(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 2032
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2033
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    .line 2035
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    goto :goto_0

    .line 2037
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarShown()V

    goto :goto_0
.end method

.method private showSelectPopup(JLandroid/graphics/Rect;[Ljava/lang/String;[IZ[I)V
    .locals 7
    .param p1, "nativeSelectPopupSourceFrame"    # J
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "items"    # [Ljava/lang/String;
    .param p5, "enabled"    # [I
    .param p6, "multiple"    # Z
    .param p7, "selectedIndices"    # [I

    .prologue
    .line 2283
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2284
    :cond_0
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2285
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 2304
    :goto_0
    return-void

    .line 2289
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 2290
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Zombie popup did not clear the frame source"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2292
    :cond_2
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    array-length v2, p4

    array-length v3, p5

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2293
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2294
    .local v1, "popupItems":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/content/browser/input/SelectPopupItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 2295
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v3, p4, v0

    aget v4, p5, v0

    invoke-direct {v2, v3, v4}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2297
    :cond_4
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p6, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2298
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-direct {v2, p0, v1, p3, p7}, Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[I)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 2302
    :goto_2
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2303
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/SelectPopup;->show()V

    goto :goto_0

    .line 2300
    :cond_5
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDialog;

    invoke-direct {v2, p0, v1, p6, p7}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Z[I)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    goto :goto_2
.end method

.method private startContentIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 2648
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2649
    return-void
.end method

.method private unregisterAccessibilityContentObserver()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private updateAfterSizeChanged()V
    .locals 3

    .prologue
    .line 1538
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1542
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1543
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1544
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1545
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1547
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1548
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1549
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    .line 1551
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1554
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method private updateForTapOrPress(IFF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "xPix"    # F
    .param p3, "yPix"    # F

    .prologue
    .line 1814
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1823
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1826
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    .line 1828
    :cond_2
    float-to-int v0, p2

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapX:I

    .line 1829
    float-to-int v0, p3

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapY:I

    goto :goto_0
.end method

.method private updateFrameInfo(FFFFFFFFFFF)V
    .locals 21
    .param p1, "scrollOffsetX"    # F
    .param p2, "scrollOffsetY"    # F
    .param p3, "pageScaleFactor"    # F
    .param p4, "minPageScaleFactor"    # F
    .param p5, "maxPageScaleFactor"    # F
    .param p6, "contentWidth"    # F
    .param p7, "contentHeight"    # F
    .param p8, "viewportWidth"    # F
    .param p9, "viewportHeight"    # F
    .param p10, "controlsOffsetYCss"    # F
    .param p11, "contentOffsetYCss"    # F

    .prologue
    .line 2176
    const-string v1, "ContentViewCore:updateFrameInfo"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v15

    .line 2180
    .local v15, "deviceScale":F
    move-object/from16 v0, p0

    iget v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    int-to-float v1, v1

    mul-float v2, v15, p3

    div-float/2addr v1, v2

    move/from16 v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    .line 2182
    move-object/from16 v0, p0

    iget v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    int-to-float v1, v1

    mul-float v2, v15, p3

    div-float/2addr v1, v2

    move/from16 v0, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p7

    .line 2184
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v11

    .line 2186
    .local v11, "contentOffsetYPix":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v1

    cmpl-float v1, p6, v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v1

    cmpl-float v1, p7, v1

    if-eqz v1, :cond_8

    :cond_0
    const/4 v13, 0x1

    .line 2189
    .local v13, "contentSizeChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v1

    cmpl-float v1, p4, v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v1

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    .line 2192
    .local v19, "scaleLimitsChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_a

    const/16 v18, 0x1

    .line 2194
    .local v18, "pageScaleChanged":Z
    :goto_2
    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 2198
    .local v20, "scrollChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    cmpl-float v1, v11, v1

    if-eqz v1, :cond_c

    const/4 v12, 0x1

    .line 2201
    .local v12, "contentOffsetChanged":Z
    :goto_4
    if-nez v13, :cond_3

    if-eqz v20, :cond_d

    :cond_3
    const/16 v16, 0x1

    .line 2202
    .local v16, "needHidePopupZoomer":Z
    :goto_5
    if-nez v19, :cond_4

    if-eqz v20, :cond_e

    :cond_4
    const/16 v17, 0x1

    .line 2204
    .local v17, "needUpdateZoomControls":Z
    :goto_6
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 2206
    :cond_5
    if-eqz v20, :cond_6

    .line 2207
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->onScrollChanged(IIII)V

    .line 2214
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/content/browser/RenderCoordinates;->updateFrameInfo(FFFFFFFFFF)V

    .line 2221
    if-nez v20, :cond_7

    if-eqz v12, :cond_f

    .line 2222
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 2223
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    goto :goto_7

    .line 2186
    .end local v12    # "contentOffsetChanged":Z
    .end local v13    # "contentSizeChanged":Z
    .end local v16    # "needHidePopupZoomer":Z
    .end local v17    # "needUpdateZoomControls":Z
    .end local v18    # "pageScaleChanged":Z
    .end local v19    # "scaleLimitsChanged":Z
    .end local v20    # "scrollChanged":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2189
    .restart local v13    # "contentSizeChanged":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2192
    .restart local v19    # "scaleLimitsChanged":Z
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2194
    .restart local v18    # "pageScaleChanged":Z
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2198
    .restart local v20    # "scrollChanged":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 2201
    .restart local v12    # "contentOffsetChanged":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 2202
    .restart local v16    # "needHidePopupZoomer":Z
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2230
    .restart local v17    # "needUpdateZoomControls":Z
    :cond_f
    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->updateZoomControls()V

    .line 2233
    :cond_10
    mul-float v14, p10, v15

    .line 2235
    .local v14, "controlsOffsetPix":F
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v11, v2}, Lorg/chromium/content/browser/ContentViewClient;->onOffsetsForFullscreenChanged(FFF)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v1, :cond_11

    .line 2239
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 2241
    :cond_11
    const-string v1, "ContentViewCore:updateFrameInfo"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2242
    return-void
.end method

.method private updateImeAdapter(JIILjava/lang/String;IIIIZZ)V
    .locals 7
    .param p1, "nativeImeAdapterAndroid"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "selectionStart"    # I
    .param p7, "selectionEnd"    # I
    .param p8, "compositionStart"    # I
    .param p9, "compositionEnd"    # I
    .param p10, "showImeIfNeeded"    # Z
    .param p11, "isNonImeChange"    # Z

    .prologue
    .line 2249
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 2250
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputTypeNone()I

    move-result v0

    if-eq p3, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    .line 2251
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2253
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p10

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->updateKeyboardVisibility(JIIZ)V

    .line 2256
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_1

    .line 2257
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-object v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    move/from16 v5, p9

    move/from16 v6, p11

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateState(Ljava/lang/String;IIIIZ)V

    .line 2261
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->actionModeInvalidateWAR()V

    .line 2262
    :cond_2
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 2263
    return-void

    .line 2250
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 816
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method public addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content_public/browser/GestureStateListener;

    .prologue
    .line 1268
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 1269
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2572
    const-class v0, Lorg/chromium/content/browser/JavascriptInterface;

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2573
    return-void
.end method

.method public addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2619
    .local p3, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2620
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2623
    :cond_0
    return-void
.end method

.method public attachImeAdapter()V
    .locals 4

    .prologue
    .line 2425
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2428
    :cond_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method createContentViewAndroidDelegate()V
    .locals 2

    .prologue
    .line 770
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/ContentViewCore$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    .line 771
    return-void
.end method

.method createViewAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 775
    new-instance v0, Lorg/chromium/ui/base/ViewAndroid;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/base/ViewAndroid;-><init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    .line 776
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 910
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 911
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnJavaContentViewCoreDestroyed(J)V

    .line 913
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserver;->detachFromWebContents()V

    .line 914
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    .line 915
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    .line 916
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V

    .line 922
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 923
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 924
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroid;->destroy()V

    .line 925
    :cond_1
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 926
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    .line 927
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 928
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 929
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->unregisterAccessibilityContentObserver()V

    .line 930
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 931
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 932
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->clearListener()V

    .line 933
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 934
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1612
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return v0

    .line 1613
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1614
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1617
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1619
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public extractSmartClipData(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2888
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2889
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    add-int/2addr p1, v0

    .line 2890
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    add-int/2addr p2, v0

    .line 2891
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeExtractSmartClipData(JIIII)V

    .line 2893
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2711
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_0

    .line 2712
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2722
    :goto_0
    return-object v0

    .line 2715
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2718
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    .line 2719
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAccessibilityEnabled(JZ)V

    .line 2722
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentSettings()Lorg/chromium/content/browser/ContentSettings;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    return-object v0
.end method

.method getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 1

    .prologue
    .line 2969
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 980
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentRenderProcessId()I
    .locals 2

    .prologue
    .line 1329
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(J)I

    move-result v0

    return v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-object v0
.end method

.method public getJavascriptInterfaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2560
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    return-object v0
.end method

.method public getNativeContentViewCore()J
    .locals 2

    .prologue
    .line 959
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method public getPhysicalBackingHeightPix()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    return v0
.end method

.method public getPhysicalBackingWidthPix()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    return v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTopControlsLayoutHeightPix()I
    .locals 1

    .prologue
    .line 1036
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsLayoutHeightPix:I

    return v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    return-object v0
.end method

.method public getViewportHeightPix()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    return v0
.end method

.method public getViewportWidthPix()I
    .locals 1

    .prologue
    .line 993
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    return v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public hideImeIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2161
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 2165
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    .line 2166
    return-void
.end method

.method public hideSelectActionBar()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 1394
    :cond_0
    return-void
.end method

.method initPopupZoomer(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 840
    new-instance v1, Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 841
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$4;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V

    .line 873
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$5;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 895
    .local v0, "listener":Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V

    .line 896
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 9
    .param p1, "containerView"    # Landroid/view/ViewGroup;
    .param p2, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
    .param p3, "nativeWebContents"    # J
    .param p5, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    const-wide/16 v2, 0x0

    .line 701
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->createContentViewAndroidDelegate()V

    .line 702
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerView(Landroid/view/ViewGroup;)V

    .line 703
    invoke-virtual {p5}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v6

    .line 704
    .local v6, "windowNativePointer":J
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 705
    :cond_0
    invoke-virtual {p0, p5}, Lorg/chromium/content/browser/ContentViewCore;->createViewAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 707
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroid;->getNativePointer()J

    move-result-wide v4

    .line 708
    .local v4, "viewAndroidNativePointer":J
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 710
    :cond_1
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 712
    iget-object v8, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeInit(JJJLjava/util/HashSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 715
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 716
    new-instance v0, Lorg/chromium/content/browser/ContentSettings;

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {v0, p0, v2, v3}, Lorg/chromium/content/browser/ContentSettings;-><init>(Lorg/chromium/content/browser/ContentViewCore;J)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    .line 718
    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/ContentViewCore;->setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    .line 719
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    .line 720
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V

    .line 721
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter(Landroid/content/Context;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 722
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 724
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->newInstance(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    .line 726
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$3;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    .line 766
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 2538
    return-void
.end method

.method public isAlive()Z
    .locals 4

    .prologue
    .line 950
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceAccessibilityScriptInjectionEnabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2765
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v7

    const-string v8, "enable-accessibility-script-injection"

    invoke-virtual {v7, v8}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2806
    :cond_0
    :goto_0
    return v6

    .line 2771
    :cond_1
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentSettings;->getJavaScriptEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2775
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 2777
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 2781
    const-class v7, Landroid/provider/Settings$Secure;

    const-string v8, "ACCESSIBILITY_SCRIPT_INJECTION"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2782
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2783
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2784
    .local v0, "accessibilityScriptInjection":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2786
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    if-nez v7, :cond_2

    .line 2787
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$10;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v7}, Lorg/chromium/content/browser/ContentViewCore$10;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V

    .line 2793
    .local v1, "contentObserver":Landroid/database/ContentObserver;
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2797
    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    .line 2800
    .end local v1    # "contentObserver":Landroid/database/ContentObserver;
    :cond_2
    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 2803
    .end local v0    # "accessibilityScriptInjection":Ljava/lang/String;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2801
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 2820
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2653
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 2654
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1412
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1413
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/content/browser/ScreenOrientationListener;->addObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;Landroid/content/Context;)V

    .line 1414
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadList;->onAttachedToWindow(Landroid/content/Context;)V

    .line 1415
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1485
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 1487
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1488
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputTypeNone()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(JII)V

    .line 1492
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 1494
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1498
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1499
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 1500
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1452
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1458
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;->get(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 1460
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 1424
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1425
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->unregisterAccessibilityContentObserver()V

    .line 1427
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 1428
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->onDetachedFromWindow()V

    .line 1435
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1436
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1437
    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 4
    .param p1, "gainFocus"    # Z

    .prologue
    .line 1570
    if-eqz p1, :cond_1

    .line 1571
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1582
    :goto_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(JZ)V

    .line 1583
    :cond_0
    return-void

    .line 1573
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideImeIfNeeded()V

    .line 1574
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1575
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    if-eqz v0, :cond_2

    .line 1576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 1577
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    goto :goto_0

    .line 1579
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 1658
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    .line 1683
    :goto_0
    return v1

    .line 1659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1683
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1662
    :pswitch_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 1664
    :cond_2
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseWheelEvent(JJFFF)I

    .line 1668
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1671
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1672
    .local v0, "eventFakeMouseMove":Landroid/view/MotionEvent;
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/ContentViewCore$6;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 1679
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v9

    .line 1680
    goto :goto_0

    .line 1660
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 1336
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1337
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 1339
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onHide()V

    .line 1340
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 1629
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1630
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1632
    .local v0, "offset":Landroid/view/MotionEvent;
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->onHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1649
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1650
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 1638
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1649
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1650
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v1, v8

    goto :goto_0

    .line 1642
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1643
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1644
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseMoveEvent(JJFF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1649
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1650
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v1, v8

    goto :goto_0

    .line 1649
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1650
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x0

    .line 2738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2741
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2742
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2746
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxHorizontalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2747
    .local v0, "maxScrollXPix":I
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2748
    .local v1, "maxScrollYPix":I
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2751
    const/16 v2, 0xf

    .line 2752
    .local v2, "sdkVersionRequiredToSetScroll":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    .line 2753
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2754
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2756
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2730
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2731
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1589
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1590
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1593
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onNativeContentViewCoreDestroyed(J)V
    .locals 3
    .param p1, "nativeContentViewCore"    # J

    .prologue
    .line 825
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 826
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 827
    return-void
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I

    .prologue
    .line 1523
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    if-ne v0, p2, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    .line 1526
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    .line 1528
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1529
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 2989
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->sendOrientationChangeEvent(I)V

    .line 2990
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 1318
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onShow()V

    .line 1320
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1321
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1322
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I
    .param p3, "owPix"    # I
    .param p4, "ohPix"    # I

    .prologue
    .line 1507
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1509
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    .line 1510
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    .line 1511
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1512
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    .line 1515
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateAfterSizeChanged()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, "isTouchHandleEvent":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1566
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetGestureDetection()V

    .line 1567
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2676
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinchByDelta(F)Z
    .locals 10
    .param p1, "delta"    # F

    .prologue
    .line 2520
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2530
    :goto_0
    return v1

    .line 2522
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2523
    .local v4, "timeMs":J
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 2524
    .local v0, "xPix":I
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 2526
    .local v9, "yPix":I
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v9

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2527
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v9

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2528
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2530
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 820
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 821
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2631
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2633
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeRemoveJavascriptInterface(JLjava/lang/String;)V

    .line 2635
    :cond_0
    return-void
.end method

.method public selectPopupMenuItems([I)V
    .locals 10
    .param p1, "indices"    # [I

    .prologue
    const-wide/16 v8, 0x0

    .line 1865
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 1866
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    iget-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectPopupMenuItems(JJ[I)V

    .line 1869
    :cond_0
    iput-wide v8, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 1871
    return-void
.end method

.method sendOrientationChangeEvent(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1878
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1880
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(JI)V

    goto :goto_0
.end method

.method public setAccessibilityState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2830
    if-nez p1, :cond_0

    .line 2831
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 2832
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 2833
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    .line 2840
    :goto_0
    return-void

    .line 2835
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isDeviceAccessibilityScriptInjectionEnabled()Z

    move-result v0

    .line 2836
    .local v0, "useScriptInjection":Z
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 2837
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 2838
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    goto :goto_0
.end method

.method public setAllowJavascriptInterfacesInspection(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 2550
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAllowJavascriptInterfacesInspection(JZ)V

    .line 2551
    return-void
.end method

.method public setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .prologue
    .line 2690
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 2691
    return-void
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 798
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 799
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 800
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 801
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 804
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    .line 805
    new-instance v2, Lorg/chromium/content/browser/ViewPositionObserver;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ViewPositionObserver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 806
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 807
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 808
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->updateCurrentContainerView()V

    .line 809
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ContainerViewObserver;

    .line 810
    .local v1, "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContainerViewObserver;->onContainerViewChanged(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 812
    .end local v1    # "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 813
    return-void
.end method

.method public setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V
    .locals 0
    .param p1, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .prologue
    .line 835
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .line 836
    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2
    .param p1, "client"    # Lorg/chromium/content/browser/ContentViewClient;

    .prologue
    .line 963
    if-nez p1, :cond_0

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 967
    return-void
.end method

.method public setInjectedAccessibility(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2846
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    .line 2847
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->setScriptEnabled(Z)V

    .line 2848
    return-void
.end method

.method public setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .prologue
    .line 2930
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 2931
    return-void
.end method

.method public setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V
    .locals 1
    .param p1, "zoomControlsDelegate"    # Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .prologue
    .line 1847
    if-nez p1, :cond_0

    .line 1848
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 1852
    :goto_0
    return-void

    .line 1851
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    goto :goto_0
.end method

.method public shouldSetAccessibilityFocusOnPageLoad()Z
    .locals 1

    .prologue
    .line 2861
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    return v0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 2662
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method public updateDoubleTapSupport(Z)V
    .locals 4
    .param p1, "supportsDoubleTap"    # Z

    .prologue
    .line 1860
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1861
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetDoubleTapSupportEnabled(JZ)V

    goto :goto_0
.end method

.method updateGestureStateListener(I)V
    .locals 3
    .param p1, "gestureType"    # I

    .prologue
    .line 1280
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1281
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    .line 1283
    .local v0, "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1299
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollStarted(II)V

    goto :goto_0

    .line 1285
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchStarted()V

    goto :goto_0

    .line 1288
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchEnded()V

    goto :goto_0

    .line 1291
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingEndGesture(II)V

    goto :goto_0

    .line 1296
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingCancelGesture()V

    goto :goto_0

    .line 1304
    :pswitch_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollEnded(II)V

    goto :goto_0

    .line 1312
    .end local v0    # "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    :cond_0
    return-void

    .line 1283
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateMultiTouchZoomSupport(Z)V
    .locals 4
    .param p1, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1855
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1856
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetMultiTouchZoomSupportEnabled(JZ)V

    goto :goto_0
.end method
