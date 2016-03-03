.class public abstract Lcom/android/org/chromium/android_webview/AwContentsClient;
.super Ljava/lang/Object;
.source "AwContentsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;,
        Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCachedRendererBackgroundColor:I

.field private final mCallbackHelper:Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/android_webview/AwContentsClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCachedRendererBackgroundColor:I

    .line 50
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    invoke-direct {v0, p1, p0}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;-><init>(Landroid/os/Looper;Lcom/android/org/chromium/android_webview/AwContentsClient;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCallbackHelper:Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    .line 51
    return-void
.end method


# virtual methods
.method public abstract doUpdateVisitedHistory(Ljava/lang/String;Z)V
.end method

.method final getCachedRendererBackgroundColor()I
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/org/chromium/android_webview/AwContentsClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->isCachedRendererBackgroundColorValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCachedRendererBackgroundColor:I

    return v0
.end method

.method final getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCallbackHelper:Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    return-object v0
.end method

.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method protected abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract handleJsAlert(Ljava/lang/String;Ljava/lang/String;Lcom/android/org/chromium/android_webview/JsResultReceiver;)V
.end method

.method protected abstract handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;Lcom/android/org/chromium/android_webview/JsResultReceiver;)V
.end method

.method protected abstract handleJsConfirm(Ljava/lang/String;Ljava/lang/String;Lcom/android/org/chromium/android_webview/JsResultReceiver;)V
.end method

.method protected abstract handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;)V
.end method

.method final isCachedRendererBackgroundColorValid()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCachedRendererBackgroundColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final onBackgroundColorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 69
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .end local p1    # "color":I
    :cond_0
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClient;->mCachedRendererBackgroundColor:I

    .line 70
    return-void
.end method

.method protected abstract onCloseWindow()V
.end method

.method public abstract onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
.end method

.method protected abstract onCreateWindow(ZZ)Z
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onFindResultReceived(IIZ)V
.end method

.method public abstract onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
.end method

.method public abstract onGeolocationPermissionsHidePrompt()V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end method

.method public abstract onHideCustomView()V
.end method

.method public abstract onLoadResource(Ljava/lang/String;)V
.end method

.method public abstract onNewPicture(Landroid/graphics/Picture;)V
.end method

.method public abstract onPageFinished(Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Ljava/lang/String;)V
.end method

.method public onPermissionRequest(Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 0
    .param p1, "awPermissionRequest"    # Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 150
    return-void
.end method

.method public onPermissionRequestCanceled(Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 0
    .param p1, "awPermissionRequest"    # Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 154
    return-void
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public onReceivedClientCertRequest(Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callback"    # Lcom/android/org/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "principals"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 131
    return-void
.end method

.method public abstract onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedHttpAuthRequest(Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReceivedTitle(Ljava/lang/String;)V
.end method

.method public abstract onReceivedTouchIconUrl(Ljava/lang/String;Z)V
.end method

.method protected abstract onRequestFocus()V
.end method

.method public abstract onScaleChangedScaled(FF)V
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 192
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 197
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 198
    return-void
.end method

.method public abstract onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract shouldInterceptRequest(Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
.end method

.method public abstract shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;)Z
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;)V
    .locals 0
    .param p2, "fileChooserParams"    # Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "uploadFilePathsCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method
