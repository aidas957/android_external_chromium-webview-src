.class public Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.super Ljava/lang/Object;
.source "WebContentsDelegateAndroid.java"


# instance fields
.field private mMostRecentProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return-void
.end method

.method private final notifyLoadProgressChanged(D)V
    .locals 3
    .param p1, "progress"    # D

    .prologue
    .line 77
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    .line 78
    iget v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadProgressChanged(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public closeContents()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public didNavigateToPendingEntry()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public getMostRecentProgress()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 133
    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public navigationStateChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onGoToEntryOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadProgressChanged(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 85
    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onLoadStopped()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraHeaders"    # Ljava/lang/String;
    .param p3, "postData"    # [B
    .param p4, "disposition"    # I
    .param p5, "isRendererInitiated"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public rendererResponsive()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public rendererUnresponsive()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public showRepostFormWarningDialog()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public takeFocus(Z)Z
    .locals 1
    .param p1, "reverse"    # Z

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 0
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public visibleSSLStateChanged()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public webContentsCreated(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "sourceWebContents"    # J
    .param p3, "openerRenderFrameId"    # J
    .param p5, "frameName"    # Ljava/lang/String;
    .param p6, "targetUrl"    # Ljava/lang/String;
    .param p7, "newWebContents"    # J

    .prologue
    .line 108
    return-void
.end method
