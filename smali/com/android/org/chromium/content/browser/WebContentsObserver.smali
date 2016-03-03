.class public abstract Lcom/android/org/chromium/content/browser/WebContentsObserver;
.super Ljava/lang/Object;
.source "WebContentsObserver.java"


# instance fields
.field private mNativeWebContentsObserverAndroid:J


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/content_public/browser/WebContents;)V
    .locals 2
    .param p1, "webContents"    # Lcom/android/org/chromium/content_public/browser/WebContents;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/WebContentsObserver;->nativeInit(Lcom/android/org/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/WebContentsObserver;->mNativeWebContentsObserverAndroid:J

    .line 23
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(Lcom/android/org/chromium/content_public/browser/WebContents;)J
.end method


# virtual methods
.method public detachFromWebContents()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/WebContentsObserver;->mNativeWebContentsObserverAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 189
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/WebContentsObserver;->mNativeWebContentsObserverAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/WebContentsObserver;->nativeDestroy(J)V

    .line 190
    iput-wide v2, p0, Lcom/android/org/chromium/content/browser/WebContentsObserver;->mNativeWebContentsObserverAndroid:J

    .line 192
    :cond_0
    return-void
.end method

.method public didAttachInterstitialPage()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 181
    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "transitionType"    # I

    .prologue
    .line 134
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z
    .param p5, "statusCode"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/org/chromium/content/browser/WebContentsObserver;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 82
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "parentFrameId"    # J
    .param p5, "isMainFrame"    # Z
    .param p6, "validatedUrl"    # Ljava/lang/String;
    .param p7, "isErrorPage"    # Z
    .param p8, "isIframeSrcdoc"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public documentLoadedInFrame(J)V
    .locals 0
    .param p1, "frameId"    # J

    .prologue
    .line 152
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 27
    return-void
.end method
