.class public Lorg/chromium/android_webview/AwContents;
.super Ljava/lang/Object;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwContents$AwViewMethodsImpl;,
        Lorg/chromium/android_webview/AwContents$AwGeolocationCallback;,
        Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;,
        Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;,
        Lorg/chromium/android_webview/AwContents$AwGestureStateListener;,
        Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;,
        Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;,
        Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;,
        Lorg/chromium/android_webview/AwContents$IoThreadClientImpl;,
        Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;,
        Lorg/chromium/android_webview/AwContents$DestroyRunnable;,
        Lorg/chromium/android_webview/AwContents$DependencyFactory;,
        Lorg/chromium/android_webview/AwContents$NativeGLDelegate;,
        Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;,
        Lorg/chromium/android_webview/AwContents$HitTestData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SUPPORTS_ON_ANIMATION:Z

.field private static final sLocalGlobalVisibleRect:Landroid/graphics/Rect;


# instance fields
.field private mAwAutofillClient:Lorg/chromium/android_webview/AwAutofillClient;

.field private mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

.field private mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

.field private mBaseBackgroundColor:I

.field private final mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

.field private mCleanupReference:Lorg/chromium/content/common/CleanupReference;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewFocused:Z

.field private mContentHeightDip:F

.field private final mContentViewClient:Lorg/chromium/android_webview/AwContentViewClient;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContentWidthDip:F

.field private final mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

.field private final mContentsClientBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

.field private final mContext:Landroid/content/Context;

.field private final mDIPScale:D

.field private final mDefaultVideoPosterRequestHandler:Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;

.field private mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z

.field private mDidAttemptLoad:Z

.field private mFavicon:Landroid/graphics/Bitmap;

.field private final mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

.field private mHasRequestedVisitedHistoryFromClient:Z

.field private final mInterceptNavigationDelegate:Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;

.field private mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

.field private final mIoThreadClient:Lorg/chromium/android_webview/AwContentsIoThreadClient;

.field private mIsAttachedToWindow:Z

.field private mIsDestroyed:Z

.field private mIsPaused:Z

.field private mIsViewVisible:Z

.field private mIsWindowVisible:Z

.field private final mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

.field private final mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

.field private mMaxPageScaleFactor:F

.field private mMinPageScaleFactor:F

.field private mNativeAwContents:J

.field private final mNativeGLDelegate:Lorg/chromium/android_webview/AwContents$NativeGLDelegate;

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mPageScaleFactor:F

.field private mPictureListenerContentProvider:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

.field private final mScrollAccessibilityHelper:Lorg/chromium/android_webview/ScrollAccessibilityHelper;

.field private final mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

.field private final mSettings:Lorg/chromium/android_webview/AwSettings;

.field private mTemporarilyDetached:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private final mWebContentsDelegate:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

.field private mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

.field private mWindowFocused:Z

.field private final mZoomControls:Lorg/chromium/android_webview/AwZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const-class v0, Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    .line 1043
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/chromium/android_webview/AwContents;->sLocalGlobalVisibleRect:Landroid/graphics/Rect;

    .line 2138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lorg/chromium/android_webview/AwContents;->SUPPORTS_ON_ANIMATION:Z

    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2138
    goto :goto_1
.end method

.method public constructor <init>(Lorg/chromium/android_webview/AwBrowserContext;Landroid/view/ViewGroup;Landroid/content/Context;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Lorg/chromium/android_webview/AwContents$NativeGLDelegate;Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/android_webview/AwSettings;)V
    .locals 9
    .param p1, "browserContext"    # Lorg/chromium/android_webview/AwBrowserContext;
    .param p2, "containerView"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "internalAccessAdapter"    # Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p5, "nativeGLDelegate"    # Lorg/chromium/android_webview/AwContents$NativeGLDelegate;
    .param p6, "contentsClient"    # Lorg/chromium/android_webview/AwContentsClient;
    .param p7, "awSettings"    # Lorg/chromium/android_webview/AwSettings;

    .prologue
    .line 566
    new-instance v8, Lorg/chromium/android_webview/AwContents$DependencyFactory;

    invoke-direct {v8}, Lorg/chromium/android_webview/AwContents$DependencyFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/android_webview/AwContents;-><init>(Lorg/chromium/android_webview/AwBrowserContext;Landroid/view/ViewGroup;Landroid/content/Context;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Lorg/chromium/android_webview/AwContents$NativeGLDelegate;Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/android_webview/AwSettings;Lorg/chromium/android_webview/AwContents$DependencyFactory;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Lorg/chromium/android_webview/AwBrowserContext;Landroid/view/ViewGroup;Landroid/content/Context;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Lorg/chromium/android_webview/AwContents$NativeGLDelegate;Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/android_webview/AwSettings;Lorg/chromium/android_webview/AwContents$DependencyFactory;)V
    .locals 7
    .param p1, "browserContext"    # Lorg/chromium/android_webview/AwBrowserContext;
    .param p2, "containerView"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "internalAccessAdapter"    # Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p5, "nativeGLDelegate"    # Lorg/chromium/android_webview/AwContents$NativeGLDelegate;
    .param p6, "contentsClient"    # Lorg/chromium/android_webview/AwContentsClient;
    .param p7, "settings"    # Lorg/chromium/android_webview/AwSettings;
    .param p8, "dependencyFactory"    # Lorg/chromium/android_webview/AwContents$DependencyFactory;

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mBaseBackgroundColor:I

    .line 222
    new-instance v0, Lorg/chromium/android_webview/AwContents$HitTestData;

    invoke-direct {v0}, Lorg/chromium/android_webview/AwContents$HitTestData;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mMinPageScaleFactor:F

    .line 237
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mMaxPageScaleFactor:F

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsDestroyed:Z

    .line 1294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayHorizontalScrollbar:Z

    .line 1295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayVerticalScrollbar:Z

    .line 581
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    .line 586
    iput-object p2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    .line 587
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 589
    iput-object p3, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    .line 590
    iput-object p4, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    .line 591
    iput-object p5, p0, Lorg/chromium/android_webview/AwContents;->mNativeGLDelegate:Lorg/chromium/android_webview/AwContents$NativeGLDelegate;

    .line 592
    iput-object p6, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    .line 593
    new-instance v0, Lorg/chromium/android_webview/AwContents$AwViewMethodsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwContents$AwViewMethodsImpl;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    .line 594
    new-instance v0, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;-><init>(Landroid/view/ViewGroup;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Lorg/chromium/android_webview/AwViewMethods;Lorg/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .line 596
    new-instance v0, Lorg/chromium/android_webview/AwContentViewClient;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-direct {v0, p6, p7, p0, v1}, Lorg/chromium/android_webview/AwContentViewClient;-><init>(Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/android_webview/AwSettings;Lorg/chromium/android_webview/AwContents;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewClient:Lorg/chromium/android_webview/AwContentViewClient;

    .line 597
    invoke-virtual {p8}, Lorg/chromium/android_webview/AwContents$DependencyFactory;->createLayoutSizer()Lorg/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    .line 598
    iput-object p7, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    .line 599
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    .line 600
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    new-instance v1, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwLayoutSizer;->setDelegate(Lorg/chromium/android_webview/AwLayoutSizer$Delegate;)V

    .line 601
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    invoke-virtual {v0, v2, v3}, Lorg/chromium/android_webview/AwLayoutSizer;->setDIPScale(D)V

    .line 602
    new-instance v0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mContentViewClient:Lorg/chromium/android_webview/AwContentViewClient;

    iget-object v4, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    move-object v1, p0

    move-object v2, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/android_webview/AwContentViewClient;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsDelegate:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    .line 604
    new-instance v0, Lorg/chromium/android_webview/AwContentsClientBridge;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwBrowserContext;->getKeyStore()Lorg/chromium/net/DefaultAndroidKeyStore;

    move-result-object v1

    invoke-static {}, Lorg/chromium/android_webview/AwContentsStatics;->getClientCertLookupTable()Lorg/chromium/android_webview/ClientCertLookupTable;

    move-result-object v2

    invoke-direct {v0, p6, v1, v2}, Lorg/chromium/android_webview/AwContentsClientBridge;-><init>(Lorg/chromium/android_webview/AwContentsClient;Lorg/chromium/net/DefaultAndroidKeyStore;Lorg/chromium/android_webview/ClientCertLookupTable;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClientBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

    .line 606
    new-instance v0, Lorg/chromium/android_webview/AwZoomControls;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwZoomControls;-><init>(Lorg/chromium/android_webview/AwContents;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mZoomControls:Lorg/chromium/android_webview/AwZoomControls;

    .line 607
    new-instance v0, Lorg/chromium/android_webview/AwContents$IoThreadClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwContents$IoThreadClientImpl;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mIoThreadClient:Lorg/chromium/android_webview/AwContentsIoThreadClient;

    .line 608
    new-instance v0, Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mInterceptNavigationDelegate:Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;

    .line 610
    new-instance v6, Lorg/chromium/android_webview/AwContents$1;

    invoke-direct {v6, p0}, Lorg/chromium/android_webview/AwContents$1;-><init>(Lorg/chromium/android_webview/AwContents;)V

    .line 621
    .local v6, "zoomListener":Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    invoke-virtual {v0, v6}, Lorg/chromium/android_webview/AwSettings;->setZoomListener(Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;)V

    .line 622
    new-instance v0, Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-direct {v0, v1}, Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;-><init>(Lorg/chromium/android_webview/AwContentsClient;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mDefaultVideoPosterRequestHandler:Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;

    .line 623
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mDefaultVideoPosterRequestHandler:Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;

    invoke-virtual {v1}, Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;->getDefaultVideoPosterURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwSettings;->setDefaultVideoPosterURL(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    invoke-virtual {v0, v2, v3}, Lorg/chromium/android_webview/AwSettings;->setDIPScale(D)V

    .line 626
    new-instance v0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p8, v0, v1}, Lorg/chromium/android_webview/AwContents$DependencyFactory;->createScrollOffsetManager(Lorg/chromium/android_webview/AwScrollOffsetManager$Delegate;Landroid/widget/OverScroller;)Lorg/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    .line 628
    new-instance v0, Lorg/chromium/android_webview/ScrollAccessibilityHelper;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lorg/chromium/android_webview/ScrollAccessibilityHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollAccessibilityHelper:Lorg/chromium/android_webview/ScrollAccessibilityHelper;

    .line 630
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwContents;->setOverScrollMode(I)V

    .line 631
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;->super_getScrollBarStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwContents;->setScrollBarStyle(I)V

    .line 632
    new-instance v0, Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    .line 633
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 635
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->nativeInit(Lorg/chromium/android_webview/AwBrowserContext;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->setNewAwContents(J)V

    .line 637
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->onContainerViewChanged()V

    .line 638
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 84
    invoke-static {p0, p1}, Lorg/chromium/android_webview/AwContents;->nativeDestroy(J)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwSettings;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/android_webview/AwContents;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwLayoutSizer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwScrollOffsetManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/ScrollAccessibilityHelper;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollAccessibilityHelper:Lorg/chromium/android_webview/ScrollAccessibilityHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/android_webview/AwContents;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/android_webview/AwContents;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsViewVisible:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/chromium/android_webview/AwContents;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsWindowVisible:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/chromium/android_webview/AwContents;JIZ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwContents;->nativeTrimMemory(JIZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mDefaultVideoPosterRequestHandler:Lorg/chromium/android_webview/DefaultVideoPosterRequestHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContentsClient;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/chromium/android_webview/AwContents;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->destroyNatives()V

    return-void
.end method

.method static synthetic access$3700(Lorg/chromium/android_webview/AwContents;J[Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/android_webview/AwContents;->nativeAddVisitedLinks(J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lorg/chromium/android_webview/AwContents;->generateArchiveAutoNamePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lorg/chromium/android_webview/AwContents;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwContents;->saveWebArchiveInternal(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/android_webview/AwContents;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z

    return v0
.end method

.method static synthetic access$4000(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwBrowserContext;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/android_webview/AwContents;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/chromium/android_webview/AwContents;JZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwContents;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/chromium/android_webview/AwContents;JLandroid/graphics/Canvas;ZIIIIII)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/graphics/Canvas;
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I

    .prologue
    .line 84
    invoke-direct/range {p0 .. p10}, Lorg/chromium/android_webview/AwContents;->nativeOnDraw(JLandroid/graphics/Canvas;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContents$NativeGLDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeGLDelegate:Lorg/chromium/android_webview/AwContents$NativeGLDelegate;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/OverScrollGlow;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/chromium/android_webview/AwContents;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwContents;->nativeFocusFirstNode(J)V

    return-void
.end method

.method static synthetic access$4700(Lorg/chromium/android_webview/AwContents;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$4702(Lorg/chromium/android_webview/AwContents;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/chromium/android_webview/AwContents;)D
    .locals 2
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    return-wide v0
.end method

.method static synthetic access$4900(Lorg/chromium/android_webview/AwContents;JII)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwContents;->nativeRequestNewHitTestDataAt(JII)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/chromium/android_webview/AwContents;JII)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwContents;->nativeOnAttachedToWindow(JII)V

    return-void
.end method

.method static synthetic access$5200(Lorg/chromium/android_webview/AwContents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 84
    invoke-static {p0, p1}, Lorg/chromium/android_webview/AwContents;->nativeOnDetachedFromWindow(J)V

    return-void
.end method

.method static synthetic access$5402(Lorg/chromium/android_webview/AwContents;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mWindowFocused:Z

    return p1
.end method

.method static synthetic access$5502(Lorg/chromium/android_webview/AwContents;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mContainerViewFocused:Z

    return p1
.end method

.method static synthetic access$5600(Lorg/chromium/android_webview/AwContents;JIIII)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Lorg/chromium/android_webview/AwContents;->nativeOnSizeChanged(JIIII)V

    return-void
.end method

.method static synthetic access$5700(Lorg/chromium/android_webview/AwContents;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents;->setViewVisibilityInternal(Z)V

    return-void
.end method

.method static synthetic access$5800(Lorg/chromium/android_webview/AwContents;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents;->setWindowVisibilityInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/android_webview/AwContents;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/android_webview/AwContents;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/chromium/android_webview/AwContents;JII)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwContents;->nativeScrollTo(JII)V

    return-void
.end method

.method private static createAndInitializeContentViewCore(Landroid/view/ViewGroup;Landroid/content/Context;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;JLorg/chromium/content_public/browser/GestureStateListener;Lorg/chromium/content/browser/ContentViewClient;Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 7
    .param p0, "containerView"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "internalDispatcher"    # Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p3, "nativeWebContents"    # J
    .param p5, "gestureStateListener"    # Lorg/chromium/content_public/browser/GestureStateListener;
    .param p6, "contentViewClient"    # Lorg/chromium/content/browser/ContentViewClient;
    .param p7, "zoomControlsDelegate"    # Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;
    .param p8, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 646
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    .local v1, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p8

    .line 647
    invoke-virtual/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;JLorg/chromium/ui/base/WindowAndroid;)V

    .line 649
    invoke-virtual {v1, p5}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 650
    invoke-virtual {v1, p6}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 651
    invoke-virtual {v1, p7}, Lorg/chromium/content/browser/ContentViewCore;->setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V

    .line 652
    return-object v1
.end method

.method private destroyNatives()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 936
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    if-eqz v0, :cond_1

    .line 937
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwWebContentsObserver;->detachFromWebContents()V

    .line 940
    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    .line 941
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 942
    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 943
    iput-wide v4, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    .line 944
    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 945
    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 947
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    invoke-virtual {v0}, Lorg/chromium/content/common/CleanupReference;->cleanupNow()V

    .line 948
    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 951
    :cond_1
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 952
    :cond_2
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 953
    :cond_3
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 954
    :cond_4
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 955
    :cond_5
    return-void
.end method

.method private didOverscroll(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 2206
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 2210
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;->overScrollBy(II)V

    .line 2212
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    invoke-virtual {v0}, Lorg/chromium/android_webview/OverScrollGlow;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->postInvalidateOnAnimation()V

    .line 2215
    :cond_1
    return-void
.end method

.method private static generateArchiveAutoNamePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "originalUrl"    # Ljava/lang/String;
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 2257
    const/4 v2, 0x0

    .line 2258
    .local v2, "name":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2260
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2261
    .local v3, "path":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2262
    .local v1, "lastSlash":I
    if-lez v1, :cond_2

    .line 2263
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2272
    .end local v1    # "lastSlash":I
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "index"

    .line 2274
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mht"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2275
    .local v4, "testName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v4

    .line 2283
    :goto_1
    return-object v5

    .line 2265
    .end local v4    # "testName":Ljava/lang/String;
    .restart local v1    # "lastSlash":I
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 2277
    .end local v1    # "lastSlash":I
    .end local v3    # "path":Ljava/lang/String;
    .restart local v4    # "testName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    const/16 v5, 0x64

    if-ge v0, v5, :cond_5

    .line 2278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mht"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2279
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v4

    goto :goto_1

    .line 2277
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2282
    :cond_5
    const-string v5, "AwContents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to auto generate archive name for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/4 v5, 0x0

    goto :goto_1

    .line 2267
    .end local v0    # "i":I
    .end local v4    # "testName":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static generateMHTMLCallback(Ljava/lang/String;JLandroid/webkit/ValueCallback;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2044
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 2046
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 2045
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {p3, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAwDrawGLFunction()J
    .locals 2

    .prologue
    .line 1005
    invoke-static {}, Lorg/chromium/android_webview/AwContents;->nativeGetAwDrawGLFunction()J

    move-result-wide v0

    return-wide v0
.end method

.method private getGlobalVisibleRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    sget-object v1, Lorg/chromium/android_webview/AwContents;->sLocalGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    sget-object v0, Lorg/chromium/android_webview/AwContents;->sLocalGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1049
    :cond_0
    sget-object v0, Lorg/chromium/android_webview/AwContents;->sLocalGlobalVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getLocationOnScreen()[I
    .locals 2

    .prologue
    .line 2160
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2161
    .local v0, "result":[I
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2162
    return-object v0
.end method

.method private installWebContentsObserver()V
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwWebContentsObserver;->detachFromWebContents()V

    .line 836
    :cond_0
    new-instance v0, Lorg/chromium/android_webview/AwWebContentsObserver;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-direct {v0, v1, p0, v2}, Lorg/chromium/android_webview/AwWebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContentsClient;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    .line 837
    return-void
.end method

.method private invalidateOnFunctorDestroy()V
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeGLDelegate:Lorg/chromium/android_webview/AwContents$NativeGLDelegate;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwContents$NativeGLDelegate;->detachGLFunctor()V

    .line 2155
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2156
    return-void
.end method

.method private isDestroyed()Z
    .locals 4

    .prologue
    .line 958
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsDestroyed:Z

    if-nez v0, :cond_3

    .line 959
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 960
    :cond_0
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 961
    :cond_1
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 962
    :cond_2
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 964
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsDestroyed:Z

    return v0
.end method

.method private isFlingActive()Z
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwScrollOffsetManager;->isFlingActive()Z

    move-result v0

    return v0
.end method

.method private native nativeAddVisitedLinks(J[Ljava/lang/String;)V
.end method

.method private native nativeCapturePicture(JII)J
.end method

.method private native nativeClearCache(JZ)V
.end method

.method private native nativeClearMatches(J)V
.end method

.method private native nativeClearView(J)V
.end method

.method private native nativeCreatePdfExporter(JLorg/chromium/android_webview/AwPdfExporter;)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeDocumentHasImages(JLandroid/os/Message;)V
.end method

.method private native nativeEnableOnNewPicture(JZ)V
.end method

.method private native nativeFindAllAsync(JLjava/lang/String;)V
.end method

.method private native nativeFindNext(JZ)V
.end method

.method private native nativeFocusFirstNode(J)V
.end method

.method private native nativeGenerateMHTML(JLjava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetAwDrawGLFunction()J
.end method

.method private native nativeGetAwDrawGLViewContext(J)J
.end method

.method private native nativeGetCertificate(J)[B
.end method

.method private static native nativeGetNativeInstanceCount()I
.end method

.method private native nativeGetOpaqueState(J)[B
.end method

.method private native nativeGetWebContents(J)J
.end method

.method private static native nativeInit(Lorg/chromium/android_webview/AwBrowserContext;)J
.end method

.method private native nativeInvokeGeolocationCallback(JZLjava/lang/String;)V
.end method

.method private native nativeOnAttachedToWindow(JII)V
.end method

.method private static native nativeOnDetachedFromWindow(J)V
.end method

.method private native nativeOnDraw(JLandroid/graphics/Canvas;ZIIIIII)Z
.end method

.method private native nativeOnSizeChanged(JIIII)V
.end method

.method private native nativePreauthorizePermission(JLjava/lang/String;J)V
.end method

.method private native nativeReleasePopupAwContents(J)J
.end method

.method private native nativeRequestNewHitTestDataAt(JII)V
.end method

.method private native nativeRestoreFromOpaqueState(J[B)Z
.end method

.method private native nativeScrollTo(JII)V
.end method

.method private static native nativeSetAwDrawGLFunctionTable(J)V
.end method

.method private static native nativeSetAwDrawSWFunctionTable(J)V
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetDipScale(JF)V
.end method

.method private native nativeSetExtraHeadersForUrl(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetIsPaused(JZ)V
.end method

.method private native nativeSetJavaPeers(JLorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwWebContentsDelegate;Lorg/chromium/android_webview/AwContentsClientBridge;Lorg/chromium/android_webview/AwContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetJsOnlineProperty(JZ)V
.end method

.method private static native nativeSetShouldDownloadFavicons()V
.end method

.method private native nativeSetViewVisibility(JZ)V
.end method

.method private native nativeSetWindowVisibility(JZ)V
.end method

.method private native nativeTrimMemory(JIZ)V
.end method

.method private native nativeUpdateLastHitTestData(J)V
.end method

.method private onContainerViewChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 769
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialAwViewMethods()Lorg/chromium/android_webview/AwViewMethods;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$2800(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lorg/chromium/android_webview/AwViewMethods;

    move-result-object v0

    .line 770
    .local v0, "awViewMethodsImpl":Lorg/chromium/android_webview/AwViewMethods;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/android_webview/AwViewMethods;->onVisibilityChanged(Landroid/view/View;I)V

    .line 771
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/android_webview/AwViewMethods;->onWindowVisibilityChanged(I)V

    .line 775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    :cond_0
    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->onAttachedToWindow()V

    .line 781
    :goto_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2, v3, v3}, Lorg/chromium/android_webview/AwViewMethods;->onSizeChanged(IIII)V

    .line 783
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/android_webview/AwViewMethods;->onWindowFocusChanged(Z)V

    .line 784
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/chromium/android_webview/AwViewMethods;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 785
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 786
    return-void

    .line 779
    :cond_1
    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->onDetachedFromWindow()V

    goto :goto_0
.end method

.method private static onDocumentHasImagesResponse(ZLandroid/os/Message;)V
    .locals 1
    .param p0, "result"    # Z
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2025
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 2026
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2027
    return-void

    .line 2025
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClient;->onGeolocationPermissionsHidePrompt()V

    .line 2096
    return-void
.end method

.method private onGeolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 2076
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2091
    :goto_0
    return-void

    .line 2077
    :cond_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwBrowserContext;->getGeolocationPermissions()Lorg/chromium/android_webview/AwGeolocationPermissions;

    move-result-object v0

    .line 2079
    .local v0, "permissions":Lorg/chromium/android_webview/AwGeolocationPermissions;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwSettings;->getGeolocationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2080
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 2084
    :cond_1
    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwGeolocationPermissions;->hasOrigin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2085
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwGeolocationPermissions;->isOriginAllowed(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 2089
    :cond_2
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    new-instance v2, Lorg/chromium/android_webview/AwContents$AwGeolocationCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/chromium/android_webview/AwContents$AwGeolocationCallback;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    invoke-virtual {v1, p1, v2}, Lorg/chromium/android_webview/AwContentsClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method private onPermissionRequest(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 1
    .param p1, "awPermissionRequest"    # Lorg/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 2100
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwContentsClient;->onPermissionRequest(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V

    .line 2101
    return-void
.end method

.method private onPermissionRequestCanceled(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 1
    .param p1, "awPermissionRequest"    # Lorg/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 2105
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwContentsClient;->onPermissionRequestCanceled(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V

    .line 2106
    return-void
.end method

.method private onReceivedHttpAuthRequest(Lorg/chromium/android_webview/AwHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/chromium/android_webview/AwHttpAuthHandler;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 2050
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedHttpAuthRequest(Lorg/chromium/android_webview/AwHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    return-void
.end method

.method private onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2036
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 2037
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents;->mFavicon:Landroid/graphics/Bitmap;

    .line 2038
    return-void
.end method

.method private onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 2032
    return-void
.end method

.method private onWebLayoutContentsSizeChanged(II)V
    .locals 1
    .param p1, "widthCss"    # I
    .param p2, "heightCss"    # I

    .prologue
    .line 2174
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwLayoutSizer;->onContentSizeChanged(II)V

    .line 2175
    return-void
.end method

.method private onWebLayoutPageScaleFactorChanged(F)V
    .locals 1
    .param p1, "webLayoutPageScaleFactor"    # F

    .prologue
    .line 2168
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwLayoutSizer;->onPageScaleChanged(F)V

    .line 2169
    return-void
.end method

.method private postInvalidateOnAnimation()V
    .locals 1

    .prologue
    .line 2143
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->SUPPORTS_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->isInsideVSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 2148
    :goto_0
    return-void

    .line 2146
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method private receivePopupContents(J)V
    .locals 15
    .param p1, "popupNativeAwContents"    # J

    .prologue
    .line 861
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/chromium/android_webview/AwContents;->mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z

    .line 863
    iget-boolean v4, p0, Lorg/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z

    .line 864
    .local v4, "wasAttached":Z
    iget-boolean v7, p0, Lorg/chromium/android_webview/AwContents;->mIsViewVisible:Z

    .line 865
    .local v7, "wasViewVisible":Z
    iget-boolean v9, p0, Lorg/chromium/android_webview/AwContents;->mIsWindowVisible:Z

    .line 866
    .local v9, "wasWindowVisible":Z
    iget-boolean v6, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    .line 867
    .local v6, "wasPaused":Z
    iget-boolean v5, p0, Lorg/chromium/android_webview/AwContents;->mContainerViewFocused:Z

    .line 868
    .local v5, "wasFocused":Z
    iget-boolean v8, p0, Lorg/chromium/android_webview/AwContents;->mWindowFocused:Z

    .line 871
    .local v8, "wasWindowFocused":Z
    if-eqz v5, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/chromium/android_webview/AwContents;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 872
    :cond_0
    if-eqz v8, :cond_1

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/chromium/android_webview/AwContents;->onWindowFocusChanged(Z)V

    .line 873
    :cond_1
    if-eqz v7, :cond_2

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/chromium/android_webview/AwContents;->setViewVisibilityInternal(Z)V

    .line 874
    :cond_2
    if-eqz v9, :cond_3

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/chromium/android_webview/AwContents;->setWindowVisibilityInternal(Z)V

    .line 875
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->onDetachedFromWindow()V

    .line 876
    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->onPause()V

    .line 879
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 881
    .local v2, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class;>;>;"
    iget-object v10, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v10, :cond_6

    .line 882
    iget-object v10, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v10}, Lorg/chromium/content/browser/ContentViewCore;->getJavascriptInterfaces()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 885
    :cond_6
    invoke-direct/range {p0 .. p2}, Lorg/chromium/android_webview/AwContents;->setNewAwContents(J)V

    .line 888
    if-nez v6, :cond_7

    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->onResume()V

    .line 889
    :cond_7
    if-eqz v4, :cond_8

    .line 890
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->onAttachedToWindow()V

    .line 891
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->postInvalidateOnAnimation()V

    .line 893
    :cond_8
    iget-object v10, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lorg/chromium/android_webview/AwContents;->onSizeChanged(IIII)V

    .line 894
    if-eqz v9, :cond_9

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/chromium/android_webview/AwContents;->setWindowVisibilityInternal(Z)V

    .line 895
    :cond_9
    if-eqz v7, :cond_a

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/chromium/android_webview/AwContents;->setViewVisibilityInternal(Z)V

    .line 896
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {p0, v8}, Lorg/chromium/android_webview/AwContents;->onWindowFocusChanged(Z)V

    .line 897
    :cond_b
    if-eqz v5, :cond_c

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/chromium/android_webview/AwContents;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 900
    :cond_c
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    .line 903
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 905
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    .line 906
    .local v3, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v11, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v12, v10, v3}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 911
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class;>;>;"
    .end local v3    # "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_d
    return-void
.end method

.method private requestDrawGL(Z)Z
    .locals 3
    .param p1, "waitForCompletion"    # Z

    .prologue
    .line 2135
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeGLDelegate:Lorg/chromium/android_webview/AwContents$NativeGLDelegate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1, v2}, Lorg/chromium/android_webview/AwContents$NativeGLDelegate;->requestDrawGL(Landroid/graphics/Canvas;ZLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private requestVisitedHistoryFromClient()V
    .locals 2

    .prologue
    .line 1128
    new-instance v0, Lorg/chromium/android_webview/AwContents$4;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwContents$4;-><init>(Lorg/chromium/android_webview/AwContents;)V

    .line 1139
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, v0}, Lorg/chromium/android_webview/AwContentsClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1140
    return-void
.end method

.method private saveWebArchiveInternal(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2240
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2241
    :cond_0
    new-instance v0, Lorg/chromium/android_webview/AwContents$7;

    invoke-direct {v0, p0, p2}, Lorg/chromium/android_webview/AwContents$7;-><init>(Lorg/chromium/android_webview/AwContents;Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2250
    :goto_0
    return-void

    .line 2248
    :cond_1
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/android_webview/AwContents;->nativeGenerateMHTML(JLjava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private scrollContainerViewTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2179
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;->scrollContainerViewTo(II)V

    .line 2180
    return-void
.end method

.method private setAwAutofillClient(Lorg/chromium/android_webview/AwAutofillClient;)V
    .locals 1
    .param p1, "client"    # Lorg/chromium/android_webview/AwAutofillClient;

    .prologue
    .line 2200
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents;->mAwAutofillClient:Lorg/chromium/android_webview/AwAutofillClient;

    .line 2201
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {p1, v0}, Lorg/chromium/android_webview/AwAutofillClient;->init(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2202
    return-void
.end method

.method public static setAwDrawGLFunctionTable(J)V
    .locals 0
    .param p0, "functionTablePointer"    # J

    .prologue
    .line 1001
    invoke-static {p0, p1}, Lorg/chromium/android_webview/AwContents;->nativeSetAwDrawGLFunctionTable(J)V

    .line 1002
    return-void
.end method

.method public static setAwDrawSWFunctionTable(J)V
    .locals 0
    .param p0, "functionTablePointer"    # J

    .prologue
    .line 997
    invoke-static {p0, p1}, Lorg/chromium/android_webview/AwContents;->nativeSetAwDrawSWFunctionTable(J)V

    .line 998
    return-void
.end method

.method private setContainerView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "newContainerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 749
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    .line 750
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 752
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerView(Landroid/view/ViewGroup;)V

    .line 753
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwPdfExporter;->setContainerView(Landroid/view/ViewGroup;)V

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsDelegate:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;->setContainerView(Landroid/view/View;)V

    .line 758
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->onContainerViewChanged()V

    .line 759
    return-void
.end method

.method private setInternalAccessAdapter(Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;)V
    .locals 2
    .param p1, "internalAccessAdapter"    # Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    .prologue
    .line 741
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    .line 742
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    .line 743
    return-void
.end method

.method private setNewAwContents(J)V
    .locals 19
    .param p1, "newAwContentsPtr"    # J

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 796
    invoke-direct/range {p0 .. p0}, Lorg/chromium/android_webview/AwContents;->destroyNatives()V

    .line 797
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 798
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 799
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 802
    :cond_0
    sget-boolean v5, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 804
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    .line 811
    new-instance v5, Lorg/chromium/content/common/CleanupReference;

    new-instance v6, Lorg/chromium/android_webview/AwContents$DestroyRunnable;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    const/4 v7, 0x0

    invoke-direct {v6, v10, v11, v7}, Lorg/chromium/android_webview/AwContents$DestroyRunnable;-><init>(JLorg/chromium/android_webview/AwContents$1;)V

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lorg/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 813
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/chromium/android_webview/AwContents;->nativeGetWebContents(J)J

    move-result-wide v8

    .line 815
    .local v8, "nativeWebContents":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/chromium/content/browser/ContentViewCore;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 816
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_3

    new-instance v5, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {v5, v4}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/app/Activity;)V

    :goto_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 819
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    new-instance v10, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/android_webview/AwContents;->mContentViewClient:Lorg/chromium/android_webview/AwContentViewClient;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/android_webview/AwContents;->mZoomControls:Lorg/chromium/android_webview/AwZoomControls;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/android_webview/AwContents;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static/range {v5 .. v13}, Lorg/chromium/android_webview/AwContents;->createAndInitializeContentViewCore(Landroid/view/ViewGroup;Landroid/content/Context;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;JLorg/chromium/content_public/browser/GestureStateListener;Lorg/chromium/content/browser/ContentViewClient;Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 822
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/android_webview/AwContents;->mWebContentsDelegate:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/android_webview/AwContents;->mContentsClientBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/android_webview/AwContents;->mIoThreadClient:Lorg/chromium/android_webview/AwContentsIoThreadClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/android_webview/AwContents;->mInterceptNavigationDelegate:Lorg/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;

    move-object/from16 v18, v0

    move-object/from16 v11, p0

    move-object/from16 v14, p0

    invoke-direct/range {v11 .. v18}, Lorg/chromium/android_webview/AwContents;->nativeSetJavaPeers(JLorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwWebContentsDelegate;Lorg/chromium/android_webview/AwContentsClientBridge;Lorg/chromium/android_webview/AwContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 825
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v5}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 826
    invoke-direct/range {p0 .. p0}, Lorg/chromium/android_webview/AwContents;->installWebContentsObserver()V

    .line 827
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    invoke-virtual {v5, v8, v9}, Lorg/chromium/android_webview/AwSettings;->setWebContents(J)V

    .line 828
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    double-to-float v5, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lorg/chromium/android_webview/AwContents;->nativeSetDipScale(JF)V

    .line 829
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 830
    return-void

    .line 816
    :cond_3
    new-instance v5, Lorg/chromium/ui/base/WindowAndroid;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private setPageScaleFactorAndLimits(FFF)V
    .locals 8
    .param p1, "pageScaleFactor"    # F
    .param p2, "minPageScaleFactor"    # F
    .param p3, "maxPageScaleFactor"    # F

    .prologue
    .line 2223
    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mMinPageScaleFactor:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mMaxPageScaleFactor:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iput p2, p0, Lorg/chromium/android_webview/AwContents;->mMinPageScaleFactor:F

    .line 2229
    iput p3, p0, Lorg/chromium/android_webview/AwContents;->mMaxPageScaleFactor:F

    .line 2230
    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2231
    iget v0, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    .line 2232
    .local v0, "oldPageScaleFactor":F
    iput p1, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    .line 2233
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v1

    float-to-double v2, v0

    iget-wide v4, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    float-to-double v4, v3

    iget-wide v6, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->postOnScaleChangedScaled(FF)V

    goto :goto_0
.end method

.method public static setShouldDownloadFavicons()V
    .locals 0

    .prologue
    .line 1009
    invoke-static {}, Lorg/chromium/android_webview/AwContents;->nativeSetShouldDownloadFavicons()V

    .line 1010
    return-void
.end method

.method private setViewVisibilityInternal(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1898
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mIsViewVisible:Z

    .line 1899
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-boolean v2, p0, Lorg/chromium/android_webview/AwContents;->mIsViewVisible:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/AwContents;->nativeSetViewVisibility(JZ)V

    .line 1900
    :cond_0
    return-void
.end method

.method private setWindowVisibilityInternal(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1903
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mIsWindowVisible:Z

    .line 1904
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-boolean v2, p0, Lorg/chromium/android_webview/AwContents;->mIsWindowVisible:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/AwContents;->nativeSetWindowVisibility(JZ)V

    .line 1905
    :cond_0
    return-void
.end method

.method private updateHitTestData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "anchorText"    # Ljava/lang/String;
    .param p5, "imgSrc"    # Ljava/lang/String;

    .prologue
    .line 2126
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iput p1, v0, Lorg/chromium/android_webview/AwContents$HitTestData;->hitTestResultType:I

    .line 2127
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iput-object p2, v0, Lorg/chromium/android_webview/AwContents$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    .line 2128
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iput-object p3, v0, Lorg/chromium/android_webview/AwContents$HitTestData;->href:Ljava/lang/String;

    .line 2129
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iput-object p4, v0, Lorg/chromium/android_webview/AwContents$HitTestData;->anchorText:Ljava/lang/String;

    .line 2130
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iput-object p5, v0, Lorg/chromium/android_webview/AwContents$HitTestData;->imgSrc:Ljava/lang/String;

    .line 2131
    return-void
.end method

.method private updateScrollState(IIIIFFF)V
    .locals 1
    .param p1, "maxContainerViewScrollOffsetX"    # I
    .param p2, "maxContainerViewScrollOffsetY"    # I
    .param p3, "contentWidthDip"    # I
    .param p4, "contentHeightDip"    # I
    .param p5, "pageScaleFactor"    # F
    .param p6, "minPageScaleFactor"    # F
    .param p7, "maxPageScaleFactor"    # F

    .prologue
    .line 2191
    int-to-float v0, p3

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mContentWidthDip:F

    .line 2192
    int-to-float v0, p4

    iput v0, p0, Lorg/chromium/android_webview/AwContents;->mContentHeightDip:F

    .line 2193
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;->setMaxScrollOffset(II)V

    .line 2195
    invoke-direct {p0, p5, p6, p7}, Lorg/chromium/android_webview/AwContents;->setPageScaleFactorAndLimits(FFF)V

    .line 2196
    return-void
.end method

.method private useLegacyGeolocationPermissionAPI()Z
    .locals 1

    .prologue
    .line 2616
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
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
    .line 1953
    .local p3, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 1423
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1451
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->canGoToOffset(I)Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 1437
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 3

    .prologue
    .line 1704
    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mMaxPageScaleFactor:F

    iget v2, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    sub-float v0, v1, v2

    .line 1705
    .local v0, "zoomInExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 3

    .prologue
    .line 1714
    iget v1, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    iget v2, p0, Lorg/chromium/android_webview/AwContents;->mMinPageScaleFactor:F

    sub-float v0, v1, v2

    .line 1715
    .local v0, "zoomOutExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 5

    .prologue
    .line 1073
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1074
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/android_webview/AwPicture;

    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwScrollOffsetManager;->computeHorizontalScrollRange()I

    move-result v1

    iget-object v4, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v4}, Lorg/chromium/android_webview/AwScrollOffsetManager;->computeVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/chromium/android_webview/AwContents;->nativeCapturePicture(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/chromium/android_webview/AwPicture;-><init>(J)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 2
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 1530
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeClearCache(JZ)V

    .line 1531
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1586
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearHistory()V

    .line 1587
    :cond_0
    return-void
.end method

.method public clearMatches()V
    .locals 2

    .prologue
    .line 1112
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeClearMatches(J)V

    .line 1113
    :cond_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1612
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearSslPreferences()V

    .line 1613
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    .line 1080
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeClearView(J)V

    .line 1081
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeScroll()V

    .line 1403
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 917
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 921
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-static {v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeOnDetachedFromWindow(J)V

    .line 923
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsDestroyed:Z

    .line 924
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/android_webview/AwContents$2;

    invoke-direct {v1, p0}, Lorg/chromium/android_webview/AwContents$2;-><init>(Lorg/chromium/android_webview/AwContents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public disableJavascriptInterfacesInspection()V
    .locals 2

    .prologue
    .line 1019
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setAllowJavascriptInterfacesInspection(Z)V

    .line 1020
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1520
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1534
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeDocumentHasImages(JLandroid/os/Message;)V

    .line 1535
    :cond_0
    return-void
.end method

.method public enableOnNewPicture(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "invalidationOnly"    # Z

    .prologue
    .line 1089
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1090
    :cond_0
    if-eqz p2, :cond_2

    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPictureListenerContentProvider:Ljava/util/concurrent/Callable;

    .line 1100
    :cond_1
    :goto_1
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeEnableOnNewPicture(JZ)V

    goto :goto_0

    .line 1092
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPictureListenerContentProvider:Ljava/util/concurrent/Callable;

    if-nez v0, :cond_1

    .line 1093
    new-instance v0, Lorg/chromium/android_webview/AwContents$3;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwContents$3;-><init>(Lorg/chromium/android_webview/AwContents;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPictureListenerContentProvider:Ljava/util/concurrent/Callable;

    goto :goto_1
.end method

.method enterFullScreen()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 665
    sget-boolean v2, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 666
    :cond_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 671
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->onDetachedFromWindow()V

    .line 675
    new-instance v0, Lorg/chromium/android_webview/FullScreenView;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-direct {v0, v2, v3, p0}, Lorg/chromium/android_webview/FullScreenView;-><init>(Landroid/content/Context;Lorg/chromium/android_webview/AwViewMethods;Lorg/chromium/android_webview/AwContents;)V

    .line 676
    .local v0, "fullScreenView":Lorg/chromium/android_webview/FullScreenView;
    invoke-virtual {v0, v4}, Lorg/chromium/android_webview/FullScreenView;->setFocusable(Z)V

    .line 677
    invoke-virtual {v0, v4}, Lorg/chromium/android_webview/FullScreenView;->setFocusableInTouchMode(Z)V

    .line 678
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v1

    .line 679
    .local v1, "wasInitialContainerViewFocused":Z
    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {v0}, Lorg/chromium/android_webview/FullScreenView;->requestFocus()Z

    .line 682
    :cond_2
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->enterFullScreen(Lorg/chromium/android_webview/FullScreenView;Z)V
    invoke-static {v2, v0, v1}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$2700(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;Lorg/chromium/android_webview/FullScreenView;Z)V

    .line 683
    new-instance v2, Lorg/chromium/android_webview/NullAwViewMethods;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    iget-object v4, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v2, p0, v3, v4}, Lorg/chromium/android_webview/NullAwViewMethods;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    .line 684
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 685
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    invoke-virtual {v0, v2}, Lorg/chromium/android_webview/FullScreenView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 688
    invoke-virtual {v0}, Lorg/chromium/android_webview/FullScreenView;->getInternalAccessAdapter()Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/chromium/android_webview/AwContents;->setInternalAccessAdapter(Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;)V

    .line 689
    invoke-direct {p0, v0}, Lorg/chromium/android_webview/AwContents;->setContainerView(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1774
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1775
    :cond_0
    const/4 v0, 0x0

    .line 1776
    .local v0, "jsCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    if-eqz p2, :cond_1

    .line 1777
    new-instance v0, Lorg/chromium/android_webview/AwContents$6;

    .end local v0    # "jsCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    invoke-direct {v0, p0, p2}, Lorg/chromium/android_webview/AwContents$6;-><init>(Lorg/chromium/android_webview/AwContents;Landroid/webkit/ValueCallback;)V

    .line 1785
    .restart local v0    # "jsCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    :cond_1
    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1, p1, v0}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method public evaluateJavaScriptEvenIfNotYetNavigated(Ljava/lang/String;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 1790
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 1791
    :cond_0
    return-void
.end method

.method exitFullScreen()V
    .locals 5

    .prologue
    .line 706
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialAwViewMethods()Lorg/chromium/android_webview/AwViewMethods;
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$2800(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lorg/chromium/android_webview/AwViewMethods;

    move-result-object v0

    .line 717
    .local v0, "awViewMethodsImpl":Lorg/chromium/android_webview/AwViewMethods;
    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->onDetachedFromWindow()V

    .line 721
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->getFullScreenView()Lorg/chromium/android_webview/FullScreenView;
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$2900(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lorg/chromium/android_webview/FullScreenView;

    move-result-object v1

    .line 722
    .local v1, "fullscreenView":Lorg/chromium/android_webview/FullScreenView;
    new-instance v3, Lorg/chromium/android_webview/NullAwViewMethods;

    invoke-virtual {v1}, Lorg/chromium/android_webview/FullScreenView;->getInternalAccessAdapter()Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lorg/chromium/android_webview/NullAwViewMethods;-><init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lorg/chromium/android_webview/FullScreenView;->setAwViewMethods(Lorg/chromium/android_webview/AwViewMethods;)V

    .line 724
    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    .line 725
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialContainerView()Landroid/view/ViewGroup;
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$3000(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 726
    .local v2, "initialContainerView":Landroid/view/ViewGroup;
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 727
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mLayoutChangeListener:Lorg/chromium/android_webview/AwContents$AwLayoutChangeListener;

    invoke-virtual {v1, v3}, Lorg/chromium/android_webview/FullScreenView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 730
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialInternalAccessDelegate()Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$3100(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/chromium/android_webview/AwContents;->setInternalAccessAdapter(Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;)V

    .line 731
    invoke-direct {p0, v2}, Lorg/chromium/android_webview/AwContents;->setContainerView(Landroid/view/ViewGroup;)V

    .line 734
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->wasInitialContainerViewFocused()Z
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$3200(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 737
    :cond_2
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->exitFullScreen()V
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$3300(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)V

    goto :goto_0
.end method

.method public extractSmartClipData(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2288
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->extractSmartClipData(IIII)V

    .line 2289
    :cond_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1104
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeFindAllAsync(JLjava/lang/String;)V

    .line 1105
    :cond_0
    return-void
.end method

.method public findNext(Z)V
    .locals 2
    .param p1, "forward"    # Z

    .prologue
    .line 1108
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeFindNext(JZ)V

    .line 1109
    :cond_0
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1681
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;->flingScroll(II)V

    .line 1682
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1971
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public getAwDrawGLViewContext()J
    .locals 2

    .prologue
    .line 1034
    sget-boolean v0, Lorg/chromium/android_webview/AwContents;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1038
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeGetAwDrawGLViewContext(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 2

    .prologue
    .line 1604
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeGetCertificate(J)[B

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/android_webview/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentHeightCss()I
    .locals 2

    .prologue
    .line 1065
    iget v0, p0, Lorg/chromium/android_webview/AwContents;->mContentHeightDip:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getContentWidthCss()I
    .locals 2

    .prologue
    .line 1069
    iget v0, p0, Lorg/chromium/android_webview/AwContents;->mContentWidthDip:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getDidAttemptLoad()Z
    .locals 1

    .prologue
    .line 2014
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    .line 2016
    :goto_0
    return v0

    .line 2015
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsObserver:Lorg/chromium/android_webview/AwWebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwWebContentsObserver;->hasStartedNonApiProvisionalLoadInMainFrame()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    .line 2016
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mDidAttemptLoad:Z

    goto :goto_0
.end method

.method getEffectiveBackgroundColor()I
    .locals 1

    .prologue
    .line 1257
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClient;->isCachedRendererBackgroundColorValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwContents;->mBaseBackgroundColor:I

    .line 1260
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClient;->getCachedRendererBackgroundColor()I

    move-result v0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 1590
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwBrowserContext;->getHttpAuthDatabase(Landroid/content/Context;)Lorg/chromium/android_webview/HttpAuthDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/HttpAuthDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1231
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1234
    :cond_0
    :goto_0
    return-object v0

    .line 1232
    :cond_1
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getLastHitTestResult()Lorg/chromium/android_webview/AwContents$HitTestData;
    .locals 2

    .prologue
    .line 1625
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1627
    :goto_0
    return-object v0

    .line 1626
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeUpdateLastHitTestData(J)V

    .line 1627
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    goto :goto_0
.end method

.method public getMostRecentProgress()I
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContentsDelegate:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;->getMostRecentProgress()I

    move-result v0

    return v0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;
    .locals 1

    .prologue
    .line 1572
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1559
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-object v2

    .line 1560
    :cond_1
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v1

    .line 1561
    .local v1, "history":Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v0

    .line 1562
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1563
    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPdfExporter()Lorg/chromium/android_webview/AwPdfExporter;
    .locals 3

    .prologue
    .line 988
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 993
    :goto_0
    return-object v0

    .line 989
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    if-nez v0, :cond_1

    .line 990
    new-instance v0, Lorg/chromium/android_webview/AwPdfExporter;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lorg/chromium/android_webview/AwPdfExporter;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    .line 991
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/AwContents;->nativeCreatePdfExporter(JLorg/chromium/android_webview/AwPdfExporter;)V

    .line 993
    :cond_1
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    goto :goto_0
.end method

.method public getScale()F
    .locals 4

    .prologue
    .line 1674
    iget v0, p0, Lorg/chromium/android_webview/AwContents;->mPageScaleFactor:F

    float-to-double v0, v0

    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mDIPScale:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getSettings()Lorg/chromium/android_webview/AwSettings;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mSettings:Lorg/chromium/android_webview/AwSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1218
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1221
    :cond_0
    :goto_0
    return-object v0

    .line 1219
    :cond_1
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1430
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    .line 1431
    :cond_0
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1458
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->goToOffset(I)V

    .line 1459
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1444
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    .line 1445
    :cond_0
    return-void
.end method

.method public hasAccessedInitialDocument()Z
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1795
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->hasAccessedInitialDocument()Z

    move-result v0

    goto :goto_0
.end method

.method public hideAutofillPopup()V
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwAutofillClient:Lorg/chromium/android_webview/AwAutofillClient;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwAutofillClient:Lorg/chromium/android_webview/AwAutofillClient;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwAutofillClient;->hideAutofillPopup()V

    .line 2007
    :cond_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1759
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->invokeZoomPicker()V

    .line 1760
    :cond_0
    return-void
.end method

.method isFullScreen()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mFullScreenTransitionsState:Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;

    # invokes: Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->isFullScreen()Z
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;->access$2600(Lorg/chromium/android_webview/AwContents$FullScreenTransitionsState;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1499
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    return v0
.end method

.method public loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 10
    .param p1, "params"    # Lorg/chromium/content_public/browser/LoadUrlParams;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1150
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getLoadUrlType()I

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->isBaseUrlDataScheme()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1157
    invoke-virtual {p1, v8}, Lorg/chromium/content_public/browser/LoadUrlParams;->setCanLoadLocalResources(Z)V

    .line 1161
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v5}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v4

    if-nez v4, :cond_3

    .line 1164
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 1166
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v4

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 1171
    invoke-virtual {p1, v9}, Lorg/chromium/content_public/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    .line 1178
    const-string v3, "referer"

    .line 1179
    .local v3, "referer":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1180
    .local v0, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    .line 1181
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1182
    .local v1, "header":Ljava/lang/String;
    const-string v4, "referer"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1183
    new-instance v5, Lorg/chromium/content_public/common/Referrer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4, v8}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 1184
    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 1190
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-wide v4, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHttpRequestHeadersString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/chromium/android_webview/AwContents;->nativeSetExtraHeadersForUrl(JLjava/lang/String;Ljava/lang/String;)V

    .line 1192
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 1194
    iget-object v4, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v4, p1}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 1199
    iget-boolean v4, p0, Lorg/chromium/android_webview/AwContents;->mHasRequestedVisitedHistoryFromClient:Z

    if-nez v4, :cond_6

    .line 1200
    iput-boolean v8, p0, Lorg/chromium/android_webview/AwContents;->mHasRequestedVisitedHistoryFromClient:Z

    .line 1201
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->requestVisitedHistoryFromClient()V

    .line 1204
    :cond_6
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getLoadUrlType()I

    move-result v4

    if-ne v4, v9, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1208
    iget-object v4, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v4}, Lorg/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v4

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->postOnPageStarted(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mTemporarilyDetached:Z

    .line 1835
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->onAttachedToWindow()V

    .line 1836
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1827
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1828
    return-void
.end method

.method public onContainerViewOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1351
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwViewMethods;->onContainerViewOverScrolled(IIZZ)V

    .line 1352
    return-void
.end method

.method public onContainerViewScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1342
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwViewMethods;->onContainerViewScrollChanged(IIII)V

    .line 1343
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

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
    .line 1843
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->onDetachedFromWindow()V

    .line 1844
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1057
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onDraw(Landroid/graphics/Canvas;)V

    .line 1058
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 2111
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/android_webview/AwContentsClient;->onFindResultReceived(IIZ)V

    .line 2112
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mTemporarilyDetached:Z

    .line 1874
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1857
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mTemporarilyDetached:Z

    if-nez v0, :cond_0

    .line 1858
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/android_webview/AwViewMethods;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1860
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1820
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1813
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1985
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1986
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1978
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1979
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1513
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwViewMethods;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwViewMethods;->onMeasure(II)V

    .line 1062
    return-void
.end method

.method public onNewPicture()V
    .locals 2

    .prologue
    .line 2119
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mPictureListenerContentProvider:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->postOnNewPicture(Ljava/util/concurrent/Callable;)V

    .line 2120
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1479
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    .line 1481
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-boolean v2, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/AwContents;->nativeSetIsPaused(JZ)V

    .line 1482
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1489
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    .line 1491
    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    iget-boolean v2, p0, Lorg/chromium/android_webview/AwContents;->mIsPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/AwContents;->nativeSetIsPaused(JZ)V

    .line 1492
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 1880
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/android_webview/AwViewMethods;->onSizeChanged(IIII)V

    .line 1881
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mTemporarilyDetached:Z

    .line 1867
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1806
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwViewMethods;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1888
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1850
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onWindowFocusChanged(Z)V

    .line 1851
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1894
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lorg/chromium/android_webview/AwViewMethods;->onWindowVisibilityChanged(I)V

    .line 1895
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1334
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 1695
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwScrollOffsetManager;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1688
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwScrollOffsetManager;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1465
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 1466
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1996
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 1416
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 1417
    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1961
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1962
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/chromium/android_webview/AwScrollOffsetManager;->requestChildRectangleOnScreen(IILandroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method requestExitFullscreen()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->exitFullscreen()V

    .line 699
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwViewMethods;->requestFocus()V

    .line 1239
    return-void
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1634
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/android_webview/AwContents;->nativeUpdateLastHitTestData(J)V

    .line 1637
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1642
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "url"

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContents$HitTestData;->href:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v1, "title"

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContents$HitTestData;->anchorText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v1, "src"

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContents$HitTestData;->imgSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1646
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1653
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/android_webview/AwContents;->nativeUpdateLastHitTestData(J)V

    .line 1656
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1657
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "url"

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mPossiblyStaleHitTestData:Lorg/chromium/android_webview/AwContents$HitTestData;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContents$HitTestData;->imgSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1659
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 1932
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return v0

    .line 1934
    :cond_1
    const-string v2, "WEBVIEW_CHROMIUM_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1935
    .local v1, "state":[B
    if-eqz v1, :cond_0

    .line 1937
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/android_webview/AwContents;->nativeRestoreFromOpaqueState(J[B)Z

    move-result v0

    .line 1943
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1472
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 1473
    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1917
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return v1

    .line 1919
    :cond_1
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/android_webview/AwContents;->nativeGetOpaqueState(J)[B

    move-result-object v0

    .line 1920
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 1922
    const-string v1, "WEBVIEW_CHROMIUM_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1923
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1539
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1540
    invoke-direct {p0, p1, p3}, Lorg/chromium/android_webview/AwContents;->saveWebArchiveInternal(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1556
    :goto_0
    return-void

    .line 1545
    :cond_0
    new-instance v0, Lorg/chromium/android_webview/AwContents$5;

    invoke-direct {v0, p0, p1, p3}, Lorg/chromium/android_webview/AwContents$5;-><init>(Lorg/chromium/android_webview/AwContents;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwContents$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1242
    iput p1, p0, Lorg/chromium/android_webview/AwContents;->mBaseBackgroundColor:I

    .line 1243
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeSetBackgroundColor(JI)V

    .line 1244
    :cond_0
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 1313
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mOverlayHorizontalScrollbar:Z

    .line 1314
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 1596
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mBrowserContext:Lorg/chromium/android_webview/AwBrowserContext;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwBrowserContext;->getHttpAuthDatabase(Landroid/content/Context;)Lorg/chromium/android_webview/HttpAuthDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/android_webview/HttpAuthDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mAwViewMethods:Lorg/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwViewMethods;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1251
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 2
    .param p1, "networkUp"    # Z

    .prologue
    .line 2010
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwContents;->nativeSetJsOnlineProperty(JZ)V

    .line 2011
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1282
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1283
    new-instance v0, Lorg/chromium/android_webview/OverScrollGlow;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lorg/chromium/android_webview/OverScrollGlow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    .line 1287
    :goto_0
    return-void

    .line 1285
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/android_webview/AwContents;->mOverScrollGlow:Lorg/chromium/android_webview/OverScrollGlow;

    goto :goto_0
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1301
    if-eqz p1, :cond_0

    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_1

    .line 1303
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayHorizontalScrollbar:Z

    .line 1307
    :goto_0
    return-void

    .line 1305
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwContents;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "resultHandler"    # Landroid/os/Handler;

    .prologue
    .line 2293
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2295
    :cond_0
    if-nez p1, :cond_1

    .line 2296
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    goto :goto_0

    .line 2299
    :cond_1
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    new-instance v1, Lorg/chromium/android_webview/AwContents$8;

    invoke-direct {v1, p0, p1}, Lorg/chromium/android_webview/AwContents$8;-><init>(Lorg/chromium/android_webview/AwContents;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    goto :goto_0
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 1320
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwContents;->mOverlayVerticalScrollbar:Z

    .line 1321
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1409
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 1410
    :cond_0
    return-void
.end method

.method public supplyContentsForPopup(Lorg/chromium/android_webview/AwContents;)V
    .locals 4
    .param p1, "newContents"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 844
    iget-wide v2, p0, Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/android_webview/AwContents;->nativeReleasePopupAwContents(J)J

    move-result-wide v0

    .line 845
    .local v0, "popupNativeAwContents":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 846
    const-string v2, "AwContents"

    const-string v3, "Popup WebView bind failed: no pending content."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/android_webview/AwContents;->destroy()V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    if-nez p1, :cond_2

    .line 851
    invoke-static {v0, v1}, Lorg/chromium/android_webview/AwContents;->nativeDestroy(J)V

    goto :goto_0

    .line 855
    :cond_2
    invoke-direct {p1, v0, v1}, Lorg/chromium/android_webview/AwContents;->receivePopupContents(J)V

    goto :goto_0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 1989
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomBy(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 1748
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1752
    :goto_0
    return v0

    .line 1749
    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1750
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zoom delta value outside [0.01, 100] range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_2
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1724
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1725
    const/4 v0, 0x0

    .line 1727
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwContents;->zoomBy(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwContents;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    const/4 v0, 0x0

    .line 1739
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwContents;->zoomBy(F)Z

    move-result v0

    goto :goto_0
.end method
