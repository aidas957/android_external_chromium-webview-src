.class Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;
.super Lcom/android/org/chromium/android_webview/AwWebContentsDelegate;
.source "AwWebContentsDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

.field private mContainerView:Landroid/view/View;

.field private final mContentViewClient:Lcom/android/org/chromium/android_webview/AwContentViewClient;

.field private final mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContentsClient;Lcom/android/org/chromium/android_webview/AwContentViewClient;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "awContents"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "contentsClient"    # Lcom/android/org/chromium/android_webview/AwContentsClient;
    .param p3, "contentViewClient"    # Lcom/android/org/chromium/android_webview/AwContentViewClient;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "containerView"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegate;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    .line 43
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    .line 44
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentViewClient:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    .line 45
    iput-object p4, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p5}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->setContainerView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;)Lcom/android/org/chromium/android_webview/AwContents;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private tryToMoveFocus(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContainerView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContainerView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateContents()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onRequestFocus()V

    .line 216
    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 103
    .local v0, "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    packed-switch p1, :pswitch_data_0

    .line 117
    const-string v1, "AwWebContentsDelegateAdapter"

    const-string v2, "Unknown message level, defaulting to DEBUG"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    new-instance v2, Landroid/webkit/ConsoleMessage;

    invoke-direct {v2, p2, p4, p3, v0}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v1, v2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    return v1

    .line 105
    :pswitch_0
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 115
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addNewContents(ZZ)Z
    .locals 1
    .param p1, "isDialog"    # Z
    .param p2, "isUserGesture"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onCreateWindow(ZZ)Z

    move-result v0

    return v0
.end method

.method public closeContents()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onCloseWindow()V

    .line 140
    return-void
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    .line 79
    .local v0, "direction":I
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->tryToMoveFocus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    .end local v0    # "direction":I
    :goto_1
    return-void

    .line 64
    :pswitch_0
    const/16 v0, 0x82

    .line 65
    .restart local v0    # "direction":I
    goto :goto_0

    .line 67
    .end local v0    # "direction":I
    :pswitch_1
    const/16 v0, 0x21

    .line 68
    .restart local v0    # "direction":I
    goto :goto_0

    .line 70
    .end local v0    # "direction":I
    :pswitch_2
    const/16 v0, 0x11

    .line 71
    .restart local v0    # "direction":I
    goto :goto_0

    .line 73
    .end local v0    # "direction":I
    :pswitch_3
    const/16 v0, 0x42

    .line 74
    .restart local v0    # "direction":I
    goto :goto_0

    .line 81
    .end local v0    # "direction":I
    :cond_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public navigationStateChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 220
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->hasAccessedInitialDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getDidAttemptLoad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "about:blank"

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onPageStarted(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onLoadResource(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onProgressChanged(I)V

    .line 230
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onPageFinished(Ljava/lang/String;)V

    .line 232
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onLoadProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onProgressChanged(I)V

    .line 56
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraHeaders"    # Ljava/lang/String;
    .param p3, "postData"    # [B
    .param p4, "disposition"    # I
    .param p5, "isRendererInitiated"    # Z

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method public runFileChooser(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "processId"    # I
    .param p2, "renderId"    # I
    .param p3, "modeFlags"    # I
    .param p4, "acceptTypes"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "defaultFilename"    # Ljava/lang/String;
    .param p7, "capture"    # Z

    .prologue
    .line 181
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;

    invoke-direct {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;-><init>()V

    .line 182
    .local v0, "params":Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;
    iput p3, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;->mode:I

    .line 183
    iput-object p4, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    .line 184
    iput-object p5, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;->title:Ljava/lang/String;

    .line 185
    iput-object p6, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;->defaultFilename:Ljava/lang/String;

    .line 186
    iput-boolean p7, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;->capture:Z

    .line 188
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    new-instance v2, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$2;-><init>(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;III)V

    invoke-virtual {v1, v2, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->showFileChooser(Landroid/webkit/ValueCallback;Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;)V

    .line 206
    return-void
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "containerView"    # Landroid/view/View;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContainerView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public showRepostFormWarningDialog()V
    .locals 6

    .prologue
    .line 147
    const/4 v3, 0x1

    .line 148
    .local v3, "msgContinuePendingReload":I
    const/4 v2, 0x2

    .line 152
    .local v2, "msgCancelPendingReload":I
    new-instance v1, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;-><init>(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;Landroid/os/Looper;)V

    .line 173
    .local v1, "handler":Landroid/os/Handler;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 174
    .local v4, "resend":Landroid/os/Message;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "dontResend":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v5, v0, v4}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public takeFocus(Z)Z
    .locals 3
    .param p1, "reverse"    # Z

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    :goto_0
    if-ne p1, v2, :cond_1

    const/16 v0, 0x42

    .line 89
    .local v0, "direction":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->tryToMoveFocus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :goto_2
    return v1

    .line 86
    .end local v0    # "direction":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    goto :goto_1

    .line 90
    .restart local v0    # "direction":I
    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x21

    .line 91
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->tryToMoveFocus(I)Z

    move-result v1

    goto :goto_2

    .line 90
    :cond_3
    const/16 v0, 0x82

    goto :goto_3
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 2
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentViewClient:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContentViewClient;->enterFullscreen()V

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContentVideoView()Lcom/android/org/chromium/content/browser/ContentVideoView;

    move-result-object v0

    .line 240
    .local v0, "videoView":Lcom/android/org/chromium/content/browser/ContentVideoView;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->exitFullscreen(Z)V

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mContentViewClient:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContentViewClient;->exitFullscreen()V

    goto :goto_0
.end method
