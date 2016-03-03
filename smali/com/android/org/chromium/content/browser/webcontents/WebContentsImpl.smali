.class Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Lcom/android/org/chromium/content_public/browser/WebContents;


# instance fields
.field private mNativeWebContentsAndroid:J

.field private mNavigationController:Lcom/android/org/chromium/content_public/browser/NavigationController;

.field private mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;


# direct methods
.method private constructor <init>(JLcom/android/org/chromium/content_public/browser/NavigationController;)V
    .locals 1
    .param p1, "nativeWebContentsAndroid"    # J
    .param p3, "navigationController"    # Lcom/android/org/chromium/content_public/browser/NavigationController;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    .line 30
    iput-wide p1, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 31
    iput-object p3, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lcom/android/org/chromium/content_public/browser/NavigationController;

    .line 32
    return-void
.end method

.method private addEnteringStylesheetToTransition(Ljava/lang/String;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;->addEnteringStylesheetToTransition(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method private static create(JLcom/android/org/chromium/content_public/browser/NavigationController;)Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 2
    .param p0, "nativeWebContentsAndroid"    # J
    .param p2, "navigationController"    # Lcom/android/org/chromium/content_public/browser/NavigationController;

    .prologue
    .line 37
    new-instance v0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLcom/android/org/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lcom/android/org/chromium/content_public/browser/NavigationController;

    .line 44
    return-void
.end method

.method private didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "cssSelector"    # Ljava/lang/String;
    .param p3, "enteringColor"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;->didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method private didStartNavigationTransitionForFrame(J)V
    .locals 1
    .param p1, "frameId"    # J

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;->didStartNavigationTransitionForFrame(J)V

    .line 240
    :cond_0
    return-void
.end method

.method private getNativePointer()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method private native nativeAddStyleSheetByURL(JLjava/lang/String;)V
.end method

.method private native nativeBeginExitTransition(JLjava/lang/String;)V
.end method

.method private native nativeClearNavigationTransitionData(J)V
.end method

.method private native nativeEvaluateJavaScript(JLjava/lang/String;Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(J)V
.end method

.method private native nativeGetBackgroundColor(J)I
.end method

.method private native nativeGetLastCommittedURL(J)Ljava/lang/String;
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetURL(J)Ljava/lang/String;
.end method

.method private native nativeGetVisibleURL(J)Ljava/lang/String;
.end method

.method private native nativeHasAccessedInitialDocument(J)Z
.end method

.method private native nativeInsertCSS(JLjava/lang/String;)V
.end method

.method private native nativeIsIncognito(J)Z
.end method

.method private native nativeIsLoading(J)Z
.end method

.method private native nativeIsLoadingToDifferentDocument(J)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(J)Z
.end method

.method private native nativeIsShowingInterstitialPage(J)Z
.end method

.method private native nativeOnHide(J)V
.end method

.method private native nativeOnShow(J)V
.end method

.method private native nativePostMessageToFrame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeReleaseMediaPlayers(J)V
.end method

.method private native nativeResumeResponseDeferredAtStart(J)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(J)V
.end method

.method private native nativeSelectWordAroundCaret(J)V
.end method

.method private native nativeSetHasPendingNavigationTransitionForTesting(J)V
.end method

.method private native nativeSetupTransitionView(JLjava/lang/String;)V
.end method

.method private native nativeShowImeIfNeeded(J)V
.end method

.method private native nativeShowInterstitialPage(JLjava/lang/String;J)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeUpdateTopControlsState(JZZZ)V
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .param p0, "jsonResult"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;

    .prologue
    .line 255
    invoke-interface {p1, p0}, Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private willHandleDeferAfterResponseStarted()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0}, Lcom/android/org/chromium/content_public/browser/NavigationTransitionDelegate;->willHandleDeferAfterResponseStarted()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public evaluateJavaScript(Ljava/lang/String;Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScript(JLjava/lang/String;Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;)V

    .line 245
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeExitFullscreen(J)V

    .line 131
    return-void
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetLastCommittedURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lcom/android/org/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lcom/android/org/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetVisibleURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessedInitialDocument()Z
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeHasAccessedInitialDocument(J)Z

    move-result v0

    return v0
.end method

.method public isIncognito()Z
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsIncognito(J)Z

    move-result v0

    return v0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnHide(J)V

    .line 90
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnShow(J)V

    .line 95
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeScrollFocusedEditableNodeIntoView(J)V

    .line 151
    return-void
.end method

.method public showImeIfNeeded()V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowImeIfNeeded(J)V

    .line 143
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/webcontents/WebContentsImpl;->nativeStop(J)V

    .line 79
    return-void
.end method
