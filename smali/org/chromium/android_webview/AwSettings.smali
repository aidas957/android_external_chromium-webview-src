.class public Lorg/chromium/android_webview/AwSettings;
.super Ljava/lang/Object;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;,
        Lorg/chromium/android_webview/AwSettings$EventHandler;,
        Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;,
        Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAcceptThirdPartyCookies:Z

.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAutoCompleteEnabled:Z

.field private final mAwSettingsLock:Ljava/lang/Object;

.field private mBlockNetworkLoads:Z

.field private mBuiltInZoomControls:Z

.field private mCacheMode:I

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDIPScale:D

.field private mDatabaseEnabled:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mEnableSupportedHardwareAcceleratedFeatures:Z

.field private final mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceZeroLayoutHeight:Z

.field private mFullscreenSupported:Z

.field private mGeolocationEnabled:Z

.field private final mHasInternetPermission:Z

.field private mImagesEnabled:Z

.field private mInitialPageScalePercent:F

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mMixedContentMode:I

.field private mNativeAwSettings:J

.field private final mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShouldFocusFirstNode:Z

.field private mSpatialNavigationEnabled:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private final mSupportLegacyQuirks:Z

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mTextSizePercent:I

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mVideoOverlayForEmbeddedVideoEnabled:Z

.field private mZeroLayoutHeightDisablesViewportQuirk:Z

.field private mZoomChangeListener:Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lorg/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/android_webview/AwSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 130
    sput-boolean v1, Lorg/chromium/android_webview/AwSettings;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAccessFromFileURLsGrantedByDefault"    # Z
    .param p3, "supportsLegacyQuirks"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lorg/chromium/android_webview/AwSettings;->mDIPScale:D

    .line 61
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    .line 63
    sget-object v3, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 64
    const/16 v3, 0x64

    iput v3, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    .line 65
    const-string v3, "sans-serif"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 66
    const-string v3, "monospace"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 67
    const-string v3, "sans-serif"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 68
    const-string v3, "serif"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 69
    const-string v3, "cursive"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 70
    const-string v3, "fantasy"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 71
    const-string v3, "UTF-8"

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 73
    iput v6, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumFontSize:I

    .line 74
    iput v6, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumLogicalFontSize:I

    .line 75
    const/16 v3, 0x10

    iput v3, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFontSize:I

    .line 76
    const/16 v3, 0xd

    iput v3, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFixedFontSize:I

    .line 77
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mLoadsImagesAutomatically:Z

    .line 78
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mImagesEnabled:Z

    .line 79
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptEnabled:Z

    .line 80
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 81
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileAccessFromFileURLs:Z

    .line 82
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 83
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mSupportMultipleWindows:Z

    .line 84
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 85
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mAppCacheEnabled:Z

    .line 86
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mDomStorageEnabled:Z

    .line 87
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mDatabaseEnabled:Z

    .line 88
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mUseWideViewport:Z

    .line 89
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mZeroLayoutHeightDisablesViewportQuirk:Z

    .line 90
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mForceZeroLayoutHeight:Z

    .line 91
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mLoadWithOverviewMode:Z

    .line 92
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 94
    const/4 v3, 0x0

    iput v3, p0, Lorg/chromium/android_webview/AwSettings;->mInitialPageScalePercent:F

    .line 96
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mEnableSupportedHardwareAcceleratedFeatures:Z

    .line 97
    iput v1, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    .line 98
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mVideoOverlayForEmbeddedVideoEnabled:Z

    .line 101
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mAcceptThirdPartyCookies:Z

    .line 109
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowContentUrlAccess:Z

    .line 110
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileUrlAccess:Z

    .line 111
    const/4 v3, -0x1

    iput v3, p0, Lorg/chromium/android_webview/AwSettings;->mCacheMode:I

    .line 112
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mShouldFocusFirstNode:Z

    .line 113
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mGeolocationEnabled:Z

    .line 114
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mAutoCompleteEnabled:Z

    .line 115
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mFullscreenSupported:Z

    .line 116
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    .line 117
    iput-boolean v2, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    .line 118
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mDisplayZoomControls:Z

    .line 133
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    .line 217
    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 221
    .local v0, "hasInternetPermission":Z
    :goto_0
    iget-object v4, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 222
    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mHasInternetPermission:Z

    .line 223
    if-nez v0, :cond_2

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lorg/chromium/android_webview/AwSettings;->mBlockNetworkLoads:Z

    .line 224
    new-instance v3, Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-direct {v3, p0}, Lorg/chromium/android_webview/AwSettings$EventHandler;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    .line 225
    if-eqz p2, :cond_0

    .line 226
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/chromium/android_webview/AwSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 227
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileAccessFromFileURLs:Z

    .line 230
    :cond_0
    # getter for: Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->sInstance:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.hardware.touchscreen"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lorg/chromium/android_webview/AwSettings;->mSpatialNavigationEnabled:Z

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "show_password"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_3
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings;->mPasswordEchoEnabled:Z

    .line 242
    iget v1, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    .line 244
    iput-boolean p3, p0, Lorg/chromium/android_webview/AwSettings;->mSupportLegacyQuirks:Z

    .line 245
    monitor-exit v4

    .line 247
    return-void

    .end local v0    # "hasInternetPermission":Z
    :cond_1
    move v0, v2

    .line 217
    goto :goto_0

    .restart local v0    # "hasInternetPermission":Z
    :cond_2
    move v3, v2

    .line 223
    goto :goto_1

    :cond_3
    move v3, v2

    .line 233
    goto :goto_2

    :cond_4
    move v1, v2

    .line 237
    goto :goto_3

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/chromium/android_webview/AwSettings;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/android_webview/AwSettings;)Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mZoomChangeListener:Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/android_webview/AwSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateRendererPreferencesLocked(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/android_webview/AwSettings;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/android_webview/AwSettings;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->updateWebkitPreferencesOnUiThreadLocked()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/android_webview/AwSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateInitialPageScaleLocked(J)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/android_webview/AwSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateFormDataPreferencesLocked(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/android_webview/AwSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateUserAgentLocked(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/android_webview/AwSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeResetScrollAndScaleState(J)V

    return-void
.end method

.method private clipFontSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1630
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1635
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 1632
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1633
    goto :goto_0
.end method

.method private getAllowDisplayingInsecureContentLocked()Z
    .locals 2

    .prologue
    .line 1565
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1566
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllowFileAccessFromFileURLsLocked()Z
    .locals 1

    .prologue
    .line 1057
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1058
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileAccessFromFileURLs:Z

    return v0
.end method

.method private getAllowRunningInsecureContentLocked()Z
    .locals 1

    .prologue
    .line 1559
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1560
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllowUniversalAccessFromFileURLsLocked()Z
    .locals 1

    .prologue
    .line 1042
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1043
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowUniversalAccessFromFileURLs:Z

    return v0
.end method

.method private getAppCacheEnabledLocked()Z
    .locals 2

    .prologue
    .line 1319
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1320
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAppCacheEnabled:Z

    if-nez v0, :cond_1

    .line 1321
    const/4 v0, 0x0

    .line 1324
    :goto_0
    return v0

    .line 1323
    :cond_1
    sget-object v1, Lorg/chromium/android_webview/AwSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1324
    :try_start_0
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->sAppCachePathIsSet:Z

    monitor-exit v1

    goto :goto_0

    .line 1325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCursiveFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 784
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mCursiveFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getDIPScaleLocked()D
    .locals 2

    .prologue
    .line 257
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_0
    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mDIPScale:D

    return-wide v0
.end method

.method private getDatabaseEnabledLocked()Z
    .locals 1

    .prologue
    .line 1378
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1379
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDatabaseEnabled:Z

    return v0
.end method

.method private getDefaultFixedFontSizeLocked()I
    .locals 1

    .prologue
    .line 922
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 923
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFixedFontSize:I

    return v0
.end method

.method private getDefaultFontSizeLocked()I
    .locals 1

    .prologue
    .line 894
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 895
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFontSize:I

    return v0
.end method

.method private getDefaultTextEncodingLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1405
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1406
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultTextEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    # getter for: Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->sInstance:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultVideoPosterURLLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1461
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    return-object v0
.end method

.method private getDomStorageEnabledLocked()Z
    .locals 1

    .prologue
    .line 1351
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1352
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDomStorageEnabled:Z

    return v0
.end method

.method private getEnableSupportedHardwareAcceleratedFeaturesLocked()Z
    .locals 1

    .prologue
    .line 461
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 462
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mEnableSupportedHardwareAcceleratedFeatures:Z

    return v0
.end method

.method private getFantasyFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 811
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mFantasyFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getFixedFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mFixedFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getForceZeroLayoutHeightLocked()Z
    .locals 1

    .prologue
    .line 1268
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1269
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mForceZeroLayoutHeight:Z

    return v0
.end method

.method private getFullscreenSupportedLocked()Z
    .locals 1

    .prologue
    .line 476
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 477
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mFullscreenSupported:Z

    return v0
.end method

.method private getImagesEnabledLocked()Z
    .locals 1

    .prologue
    .line 1012
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1013
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mImagesEnabled:Z

    return v0
.end method

.method private getInitialPageScalePercentLocked()F
    .locals 1

    .prologue
    .line 431
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mInitialPageScalePercent:F

    return v0
.end method

.method private getJavaScriptCanOpenWindowsAutomaticallyLocked()Z
    .locals 1

    .prologue
    .line 1132
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1133
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    return v0
.end method

.method private getJavaScriptEnabledLocked()Z
    .locals 1

    .prologue
    .line 1027
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1028
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptEnabled:Z

    return v0
.end method

.method private getLoadWithOverviewModeLocked()Z
    .locals 1

    .prologue
    .line 621
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 622
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method private getLoadsImagesAutomaticallyLocked()Z
    .locals 1

    .prologue
    .line 985
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 986
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mLoadsImagesAutomatically:Z

    return v0
.end method

.method private getMediaPlaybackRequiresUserGestureLocked()Z
    .locals 1

    .prologue
    .line 1432
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1433
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method private getMinimumFontSizeLocked()I
    .locals 1

    .prologue
    .line 838
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 839
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumFontSize:I

    return v0
.end method

.method private getMinimumLogicalFontSizeLocked()I
    .locals 1

    .prologue
    .line 866
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 867
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumLogicalFontSize:I

    return v0
.end method

.method private getPasswordEchoEnabledLocked()Z
    .locals 1

    .prologue
    .line 1274
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1275
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mPasswordEchoEnabled:Z

    return v0
.end method

.method private getPluginsDisabledLocked()Z
    .locals 2

    .prologue
    .line 1095
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSansSerifFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mSansSerifFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getSaveFormDataLocked()Z
    .locals 1

    .prologue
    .line 539
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAutoCompleteEnabled:Z

    return v0
.end method

.method private getSerifFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 757
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mSerifFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getSpatialNavigationLocked()Z
    .locals 1

    .prologue
    .line 446
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 447
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSpatialNavigationEnabled:Z

    return v0
.end method

.method private getStandardFontFamilyLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 676
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mStandardFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private getSupportLegacyQuirksLocked()Z
    .locals 1

    .prologue
    .line 1197
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1198
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportLegacyQuirks:Z

    return v0
.end method

.method private getSupportMultipleWindowsLocked()Z
    .locals 1

    .prologue
    .line 1191
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1192
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportMultipleWindows:Z

    return v0
.end method

.method private getTextAutosizingEnabledLocked()Z
    .locals 2

    .prologue
    .line 1164
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    sget-object v1, Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextSizePercentLocked()I
    .locals 1

    .prologue
    .line 648
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 649
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    return v0
.end method

.method private getUseWideViewportLocked()Z
    .locals 1

    .prologue
    .line 1226
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1227
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mUseWideViewport:Z

    return v0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private getVideoOverlayForEmbeddedVideoEnabledLocked()Z
    .locals 1

    .prologue
    .line 1602
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1603
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mVideoOverlayForEmbeddedVideoEnabled:Z

    return v0
.end method

.method private getZeroLayoutHeightDisablesViewportQuirkLocked()Z
    .locals 1

    .prologue
    .line 1247
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1248
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mZeroLayoutHeightDisablesViewportQuirk:Z

    return v0
.end method

.method private nativeAwSettingsGone(J)V
    .locals 5
    .param p1, "nativeAwSettings"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 251
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_1
    iput-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    .line 253
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(J)J
.end method

.method private native nativePopulateWebPreferencesLocked(JJ)V
.end method

.method private native nativeResetScrollAndScaleState(J)V
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateFormDataPreferencesLocked(J)V
.end method

.method private native nativeUpdateInitialPageScaleLocked(J)V
.end method

.method private native nativeUpdateRendererPreferencesLocked(J)V
.end method

.method private native nativeUpdateUserAgentLocked(J)V
.end method

.method private native nativeUpdateWebkitPreferencesLocked(J)V
.end method

.method private onGestureZoomSupportChanged(ZZ)V
    .locals 2
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1467
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v1, Lorg/chromium/android_webview/AwSettings$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/android_webview/AwSettings$5;-><init>(Lorg/chromium/android_webview/AwSettings;ZZ)V

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwSettings$EventHandler;->maybePostOnUiThread(Ljava/lang/Runnable;)V

    .line 1478
    return-void
.end method

.method private populateWebPreferences(J)V
    .locals 7
    .param p1, "webPrefsPtr"    # J

    .prologue
    .line 1647
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1648
    :try_start_0
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1649
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativePopulateWebPreferencesLocked(JJ)V

    .line 1650
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1651
    return-void
.end method

.method private supportsDoubleTapZoomLocked()Z
    .locals 1

    .prologue
    .line 1608
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1609
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mUseWideViewport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportsMultiTouchZoomLocked()Z
    .locals 1

    .prologue
    .line 1613
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1614
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 2

    .prologue
    .line 1640
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1641
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->updateEverythingLocked()V

    .line 1642
    monitor-exit v1

    .line 1643
    return-void

    .line 1642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateEverythingLocked()V
    .locals 4

    .prologue
    .line 290
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_1
    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateEverythingLocked(J)V

    .line 293
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsMultiTouchZoomLocked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwSettings;->onGestureZoomSupportChanged(ZZ)V

    .line 295
    return-void
.end method

.method private updateWebkitPreferencesOnUiThreadLocked()V
    .locals 4

    .prologue
    .line 1654
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    # getter for: Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->access$1200(Lorg/chromium/android_webview/AwSettings$EventHandler;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1655
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 1656
    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1657
    iget-wide v0, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwSettings;->nativeUpdateWebkitPreferencesLocked(J)V

    .line 1659
    :cond_1
    return-void
.end method


# virtual methods
.method public getAcceptThirdPartyCookies()Z
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAcceptThirdPartyCookies:Z

    monitor-exit v1

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 356
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 1050
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getAllowFileAccessFromFileURLsLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 1035
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getAllowUniversalAccessFromFileURLsLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2

    .prologue
    .line 1519
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    monitor-exit v1

    return v0

    .line 1521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getCursiveFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 1371
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2

    .prologue
    .line 915
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getDefaultFixedFontSizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFontSize()I
    .locals 2

    .prologue
    .line 887
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getDefaultFontSizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1398
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1399
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getDefaultTextEncodingLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 2

    .prologue
    .line 1537
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1538
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDisplayZoomControls:Z

    monitor-exit v1

    return v0

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 1344
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1345
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getFantasyFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getFixedFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImagesEnabled()Z
    .locals 2

    .prologue
    .line 1005
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mImagesEnabled:Z

    monitor-exit v1

    return v0

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 1125
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getJavaScriptCanOpenWindowsAutomaticallyLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 1020
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1021
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLayoutAlgorithm()Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;
    .locals 2

    .prologue
    .line 1152
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1153
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    monitor-exit v1

    return-object v0

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 2

    .prologue
    .line 614
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getLoadWithOverviewModeLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 978
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 979
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getLoadsImagesAutomaticallyLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 1425
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1426
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getMediaPlaybackRequiresUserGestureLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMinimumFontSize()I
    .locals 2

    .prologue
    .line 831
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 832
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getMinimumFontSizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 2

    .prologue
    .line 859
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 860
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getMinimumLogicalFontSizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMixedContentMode()I
    .locals 2

    .prologue
    .line 1552
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1553
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    monitor-exit v1

    return v0

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 2

    .prologue
    .line 1103
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    monitor-exit v1

    return-object v0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginsEnabled()Z
    .locals 3

    .prologue
    .line 1084
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1085
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getSansSerifFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getSaveFormDataLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 749
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getSerifFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getStandardFontFamilyLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextZoom()I
    .locals 2

    .prologue
    .line 641
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getTextSizePercentLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 1219
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getUseWideViewportLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getUserAgentLocked()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoOverlayForEmbeddedVideoEnabled()Z
    .locals 2

    .prologue
    .line 1595
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1596
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->getVideoOverlayForEmbeddedVideoEnabledLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcceptThirdPartyCookies(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .prologue
    .line 324
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAcceptThirdPartyCookies:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAcceptThirdPartyCookies:Z

    .line 328
    :cond_0
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 365
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 367
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowContentUrlAccess:Z

    .line 369
    :cond_0
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 345
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 347
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileUrlAccess:Z

    .line 349
    :cond_0
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 954
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 955
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 956
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowFileAccessFromFileURLs:Z

    .line 957
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 959
    :cond_0
    monitor-exit v1

    .line 960
    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 942
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 944
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 945
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 947
    :cond_0
    monitor-exit v1

    .line 948
    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1282
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1284
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAppCacheEnabled:Z

    .line 1285
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1287
    :cond_0
    monitor-exit v1

    .line 1288
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "needToSync":Z
    sget-object v2, Lorg/chromium/android_webview/AwSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1297
    :try_start_0
    sget-boolean v1, Lorg/chromium/android_webview/AwSettings;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1298
    const/4 v1, 0x1

    sput-boolean v1, Lorg/chromium/android_webview/AwSettings;->sAppCachePathIsSet:Z

    .line 1299
    const/4 v0, 0x1

    .line 1301
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    if-eqz v0, :cond_1

    .line 1306
    iget-object v2, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1307
    :try_start_1
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v1}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1308
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1310
    :cond_1
    return-void

    .line 1301
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1308
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 301
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mHasInternetPermission:Z

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 306
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mBlockNetworkLoads:Z

    .line 307
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1506
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1507
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    if-eq v0, p1, :cond_0

    .line 1508
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mBuiltInZoomControls:Z

    .line 1509
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/chromium/android_webview/AwSettings;->onGestureZoomSupportChanged(ZZ)V

    .line 1512
    :cond_0
    monitor-exit v1

    .line 1513
    return-void

    .line 1512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 387
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mCacheMode:I

    .line 389
    :cond_0
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 769
    :cond_0
    monitor-exit v1

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDIPScale(D)V
    .locals 3
    .param p1, "dipScale"    # D

    .prologue
    .line 262
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iput-wide p1, p0, Lorg/chromium/android_webview/AwSettings;->mDIPScale:D

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1359
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1361
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mDatabaseEnabled:Z

    .line 1362
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1364
    :cond_0
    monitor-exit v1

    .line 1365
    return-void

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 902
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwSettings;->clipFontSize(I)I

    move-result p1

    .line 904
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 905
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFixedFontSize:I

    .line 906
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 908
    :cond_0
    monitor-exit v1

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 874
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwSettings;->clipFontSize(I)I

    move-result p1

    .line 876
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 877
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultFontSize:I

    .line 878
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 880
    :cond_0
    monitor-exit v1

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1386
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1387
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1391
    :cond_0
    monitor-exit v1

    .line 1392
    return-void

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1440
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1443
    :cond_1
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 1444
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1446
    :cond_2
    monitor-exit v1

    .line 1447
    return-void

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1528
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1529
    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mDisplayZoomControls:Z

    .line 1530
    monitor-exit v1

    .line 1531
    return-void

    .line 1530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1332
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1334
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mDomStorageEnabled:Z

    .line 1335
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1337
    :cond_0
    monitor-exit v1

    .line 1338
    return-void

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setEnableSupportedHardwareAcceleratedFeatures(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 451
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mEnableSupportedHardwareAcceleratedFeatures:Z

    if-eq v0, p1, :cond_0

    .line 453
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mEnableSupportedHardwareAcceleratedFeatures:Z

    .line 454
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 456
    :cond_0
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 796
    :cond_0
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 688
    :cond_0
    monitor-exit v1

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setForceZeroLayoutHeight(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1252
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1253
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mForceZeroLayoutHeight:Z

    if-eq v0, p1, :cond_0

    .line 1254
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mForceZeroLayoutHeight:Z

    .line 1255
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1257
    :cond_0
    monitor-exit v1

    .line 1258
    return-void

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullscreenSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .prologue
    .line 466
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mFullscreenSupported:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mFullscreenSupported:Z

    .line 469
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 471
    :cond_0
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 493
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 495
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mGeolocationEnabled:Z

    .line 497
    :cond_0
    monitor-exit v1

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagesEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 993
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mImagesEnabled:Z

    if-eq v0, p1, :cond_0

    .line 995
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mImagesEnabled:Z

    .line 996
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 998
    :cond_0
    monitor-exit v1

    .line 999
    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialPageScale(F)V
    .locals 3
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 414
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mInitialPageScalePercent:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 416
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mInitialPageScalePercent:F

    .line 417
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v2, Lorg/chromium/android_webview/AwSettings$1;

    invoke-direct {v2, p0}, Lorg/chromium/android_webview/AwSettings$1;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    invoke-virtual {v0, v2}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 426
    :cond_0
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1113
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1114
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1115
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1116
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1118
    :cond_0
    monitor-exit v1

    .line 1119
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 930
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 932
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mJavaScriptEnabled:Z

    .line 933
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 935
    :cond_0
    monitor-exit v1

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLayoutAlgorithm(Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;)V
    .locals 2
    .param p1, "l"    # Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .prologue
    .line 1140
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 1142
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mLayoutAlgorithm:Lorg/chromium/android_webview/AwSettings$LayoutAlgorithm;

    .line 1143
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1145
    :cond_0
    monitor-exit v1

    .line 1146
    return-void

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 3
    .param p1, "overview"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mLoadWithOverviewMode:Z

    if-eq v0, p1, :cond_0

    .line 596
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mLoadWithOverviewMode:Z

    .line 597
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v2, Lorg/chromium/android_webview/AwSettings$4;

    invoke-direct {v2, p0}, Lorg/chromium/android_webview/AwSettings$4;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    invoke-virtual {v0, v2}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 607
    :cond_0
    monitor-exit v1

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 966
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 967
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 968
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mLoadsImagesAutomatically:Z

    .line 969
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 971
    :cond_0
    monitor-exit v1

    .line 972
    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z

    .prologue
    .line 1413
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1414
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 1415
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 1416
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1418
    :cond_0
    monitor-exit v1

    .line 1419
    return-void

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinimumFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 818
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 819
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwSettings;->clipFontSize(I)I

    move-result p1

    .line 820
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 821
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumFontSize:I

    .line 822
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 824
    :cond_0
    monitor-exit v1

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwSettings;->clipFontSize(I)I

    move-result p1

    .line 848
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 849
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mMinimumLogicalFontSize:I

    .line 850
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 852
    :cond_0
    monitor-exit v1

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMixedContentMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1543
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1544
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    if-eq v0, p1, :cond_0

    .line 1545
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mMixedContentMode:I

    .line 1546
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1548
    :cond_0
    monitor-exit v1

    .line 1549
    return-void

    .line 1548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 2
    .param p1, "state"    # Landroid/webkit/WebSettings$PluginState;

    .prologue
    .line 1072
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1073
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1074
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1075
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1077
    :cond_0
    monitor-exit v1

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPluginsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1065
    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1066
    return-void

    .line 1065
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    goto :goto_0
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 710
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 715
    :cond_0
    monitor-exit v1

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 513
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mAutoCompleteEnabled:Z

    if-eq v0, p1, :cond_0

    .line 515
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mAutoCompleteEnabled:Z

    .line 516
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v2, Lorg/chromium/android_webview/AwSettings$2;

    invoke-direct {v2, p0}, Lorg/chromium/android_webview/AwSettings$2;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    invoke-virtual {v0, v2}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 525
    :cond_0
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 742
    :cond_0
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShouldFocusFirstNode(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 405
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mShouldFocusFirstNode:Z

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSpatialNavigationEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 436
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSpatialNavigationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 438
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mSpatialNavigationEnabled:Z

    .line 439
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 441
    :cond_0
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 2
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 661
    :cond_0
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 1172
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 1174
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mSupportMultipleWindows:Z

    .line 1175
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1177
    :cond_0
    monitor-exit v1

    .line 1178
    return-void

    .line 1177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 3
    .param p1, "support"    # Z

    .prologue
    .line 1484
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1485
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    if-eq v0, p1, :cond_0

    .line 1486
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    .line 1487
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/chromium/android_webview/AwSettings;->onGestureZoomSupportChanged(ZZ)V

    .line 1490
    :cond_0
    monitor-exit v1

    .line 1491
    return-void

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextZoom(I)V
    .locals 2
    .param p1, "textZoom"    # I

    .prologue
    .line 629
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget v0, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    if-eq v0, p1, :cond_0

    .line 631
    iput p1, p0, Lorg/chromium/android_webview/AwSettings;->mTextSizePercent:I

    .line 632
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 634
    :cond_0
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 3
    .param p1, "use"    # Z

    .prologue
    .line 1205
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 1207
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mUseWideViewport:Z

    .line 1208
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/chromium/android_webview/AwSettings;->onGestureZoomSupportChanged(ZZ)V

    .line 1210
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1212
    :cond_0
    monitor-exit v1

    .line 1213
    return-void

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v2, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 556
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    .line 557
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 558
    :cond_0
    # getter for: Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->sInstance:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    .line 562
    :goto_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v3, Lorg/chromium/android_webview/AwSettings$3;

    invoke-direct {v3, p0}, Lorg/chromium/android_webview/AwSettings$3;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    invoke-virtual {v1, v3}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 572
    :cond_1
    monitor-exit v2

    .line 573
    return-void

    .line 560
    :cond_2
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 572
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVideoOverlayForEmbeddedVideoEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1575
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1576
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mVideoOverlayForEmbeddedVideoEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1577
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mVideoOverlayForEmbeddedVideoEnabled:Z

    .line 1578
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    new-instance v2, Lorg/chromium/android_webview/AwSettings$6;

    invoke-direct {v2, p0}, Lorg/chromium/android_webview/AwSettings$6;-><init>(Lorg/chromium/android_webview/AwSettings;)V

    invoke-virtual {v0, v2}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 1587
    :cond_0
    monitor-exit v1

    .line 1588
    return-void

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWebContents(J)V
    .locals 7
    .param p1, "nativeWebContents"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 276
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 278
    iget-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/android_webview/AwSettings;->nativeDestroy(J)V

    .line 279
    sget-boolean v0, Lorg/chromium/android_webview/AwSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 281
    :cond_0
    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    .line 282
    :try_start_1
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->bindUiThread()V

    .line 283
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwSettings;->nativeInit(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J

    .line 284
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->updateEverythingLocked()V

    .line 286
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    return-void
.end method

.method public setZeroLayoutHeightDisablesViewportQuirk(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1231
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1232
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mZeroLayoutHeightDisablesViewportQuirk:Z

    if-eq v0, p1, :cond_0

    .line 1233
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings;->mZeroLayoutHeightDisablesViewportQuirk:Z

    .line 1234
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings;->mEventHandler:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V

    .line 1236
    :cond_0
    monitor-exit v1

    .line 1237
    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setZoomListener(Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;)V
    .locals 2
    .param p1, "zoomChangeListener"    # Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;

    .prologue
    .line 270
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings;->mZoomChangeListener:Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method shouldDisplayZoomControls()Z
    .locals 2

    .prologue
    .line 1624
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1625
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/android_webview/AwSettings;->supportsMultiTouchZoomLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mDisplayZoomControls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldFocusFirstNode()Z
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mShouldFocusFirstNode:Z

    monitor-exit v1

    return v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 1184
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1185
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 1186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportZoom()Z
    .locals 2

    .prologue
    .line 1497
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwSettings;->mSupportZoom:Z

    monitor-exit v1

    return v0

    .line 1499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
