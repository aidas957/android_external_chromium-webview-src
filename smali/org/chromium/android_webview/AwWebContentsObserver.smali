.class public Lorg/chromium/android_webview/AwWebContentsObserver;
.super Lorg/chromium/content/browser/WebContentsObserver;
.source "AwWebContentsObserver.java"


# instance fields
.field private final mAwContents:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/android_webview/AwContents;",
            ">;"
        }
    .end annotation
.end field

.field private final mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

.field private mStartedNonApiProvisionalLoadInMainFrame:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContentsClient;)V
    .locals 1
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p2, "awContents"    # Lorg/chromium/android_webview/AwContents;
    .param p3, "awContentsClient"    # Lorg/chromium/android_webview/AwContentsClient;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mStartedNonApiProvisionalLoadInMainFrame:Z

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContents:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p3, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    .line 28
    return-void
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lorg/chromium/android_webview/AwContentsStatics;->getUnreachableWebDataUrl()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "unreachableWebDataUrl":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 50
    .local v0, "isErrorUrl":Z
    :goto_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 51
    const/4 v2, -0x3

    if-eq p3, v2, :cond_0

    .line 58
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-static {p3}, Lorg/chromium/android_webview/ErrorCodeConversionHelper;->convertErrorCode(I)I

    move-result v3

    invoke-virtual {v2, v3, p4, p5}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v2, p5}, Lorg/chromium/android_webview/AwContentsClient;->onPageFinished(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void

    .line 48
    .end local v0    # "isErrorUrl":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 3
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 36
    invoke-static {}, Lorg/chromium/android_webview/AwContentsStatics;->getUnreachableWebDataUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "unreachableWebDataUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 39
    .local v0, "isErrorUrl":Z
    :goto_0
    if-eqz p4, :cond_0

    if-nez v0, :cond_0

    .line 40
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v2, p3}, Lorg/chromium/android_webview/AwContentsClient;->onPageFinished(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void

    .line 37
    .end local v0    # "isErrorUrl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/android_webview/AwContentsClient;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z

    .prologue
    .line 73
    if-eqz p4, :cond_0

    .line 74
    iget-object v0, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContentsClient:Lorg/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwContentsClient;->onPageFinished(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 4
    .param p1, "frameId"    # J
    .param p3, "parentFrameId"    # J
    .param p5, "isMainFrame"    # Z
    .param p6, "validatedUrl"    # Ljava/lang/String;
    .param p7, "isErrorPage"    # Z
    .param p8, "isIframeSrcdoc"    # Z

    .prologue
    .line 91
    if-nez p5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mAwContents:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/android_webview/AwContents;

    .line 93
    .local v0, "awContents":Lorg/chromium/android_webview/AwContents;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->getPendingEntry()Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v1

    .line 95
    .local v1, "pendingEntry":Lorg/chromium/content_public/browser/NavigationEntry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationEntry;->getTransition()I

    move-result v2

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mStartedNonApiProvisionalLoadInMainFrame:Z

    goto :goto_0
.end method

.method hasStartedNonApiProvisionalLoadInMainFrame()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwWebContentsObserver;->mStartedNonApiProvisionalLoadInMainFrame:Z

    return v0
.end method
