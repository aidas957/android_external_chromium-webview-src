.class public Lwebview/chromium/WebViewContentsClientAdapter;
.super Lorg/chromium/android_webview/AwContentsClient;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;,
        Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;,
        Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;,
        Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;,
        Lwebview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;,
        Lwebview/chromium/WebViewContentsClientAdapter$NullWebViewClient;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadListener:Landroid/webkit/DownloadListener;

.field private mFindListener:Landroid/webkit/WebView$FindListener;

.field private mOngoingPermissionRequests:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lorg/chromium/android_webview/permission/AwPermissionRequest;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebViewDelegate:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "webViewDelegate"    # Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/chromium/android_webview/AwContentsClient;-><init>()V

    .line 130
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "webView or delegate can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    if-nez p2, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iput-object p2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    .line 139
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    .line 140
    iput-object p3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewDelegate:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwebview/chromium/WebViewContentsClientAdapter;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 143
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$1;

    invoke-direct {v0, p0}, Lwebview/chromium/WebViewContentsClientAdapter$1;-><init>(Lwebview/chromium/WebViewContentsClientAdapter;)V

    iput-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mUiThreadHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lwebview/chromium/WebViewContentsClientAdapter;

    .prologue
    .line 95
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView$PictureListener;
    .locals 1
    .param p0, "x0"    # Lwebview/chromium/WebViewContentsClientAdapter;

    .prologue
    .line 95
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    .line 266
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 268
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 269
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 270
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1001
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 1002
    const/4 v2, 0x0

    .line 1003
    .local v2, "result":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v3, :cond_0

    .line 1005
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v3}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1007
    :cond_0
    if-nez v2, :cond_1

    .line 1010
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lwebview/chromium/R$drawable;->ic_media_video_poster:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1013
    .local v1, "poster":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1014
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1015
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1016
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1018
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "poster":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 1019
    return-object v2
.end method

.method protected getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 987
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 989
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, "result":Landroid/view/View;
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 996
    return-object v0

    .line 993
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 254
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 258
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 259
    return-void
.end method

.method public handleJsAlert(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "receiver"    # Lorg/chromium/android_webview/JsResultReceiver;

    .prologue
    .line 697
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 698
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 699
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;

    invoke-direct {v0, p3}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;-><init>(Lorg/chromium/android_webview/JsResultReceiver;)V

    invoke-virtual {v0}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->getPromptResult()Landroid/webkit/JsPromptResult;

    move-result-object v1

    .line 702
    .local v1, "res":Landroid/webkit/JsPromptResult;
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Landroid/webkit/JsDialogHelper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/JsDialogHelper;-><init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 709
    .end local v1    # "res":Landroid/webkit/JsPromptResult;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 710
    return-void

    .line 707
    :cond_1
    invoke-interface {p3}, Lorg/chromium/android_webview/JsResultReceiver;->cancel()V

    goto :goto_0
.end method

.method public handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "receiver"    # Lorg/chromium/android_webview/JsResultReceiver;

    .prologue
    .line 714
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 715
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 716
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;

    invoke-direct {v0, p3}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;-><init>(Lorg/chromium/android_webview/JsResultReceiver;)V

    invoke-virtual {v0}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->getPromptResult()Landroid/webkit/JsPromptResult;

    move-result-object v1

    .line 719
    .local v1, "res":Landroid/webkit/JsPromptResult;
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Landroid/webkit/JsDialogHelper;

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/JsDialogHelper;-><init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 726
    .end local v1    # "res":Landroid/webkit/JsPromptResult;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 727
    return-void

    .line 724
    :cond_1
    invoke-interface {p3}, Lorg/chromium/android_webview/JsResultReceiver;->cancel()V

    goto :goto_0
.end method

.method public handleJsConfirm(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsResultReceiver;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "receiver"    # Lorg/chromium/android_webview/JsResultReceiver;

    .prologue
    .line 731
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 732
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 733
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;

    invoke-direct {v0, p3}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;-><init>(Lorg/chromium/android_webview/JsResultReceiver;)V

    invoke-virtual {v0}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->getPromptResult()Landroid/webkit/JsPromptResult;

    move-result-object v1

    .line 736
    .local v1, "res":Landroid/webkit/JsPromptResult;
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Landroid/webkit/JsDialogHelper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/JsDialogHelper;-><init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 743
    .end local v1    # "res":Landroid/webkit/JsPromptResult;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 744
    return-void

    .line 741
    :cond_1
    invoke-interface {p3}, Lorg/chromium/android_webview/JsResultReceiver;->cancel()V

    goto :goto_0
.end method

.method public handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/JsPromptResultReceiver;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "receiver"    # Lorg/chromium/android_webview/JsPromptResultReceiver;

    .prologue
    .line 749
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 750
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 751
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;

    invoke-direct {v0, p4}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;-><init>(Lorg/chromium/android_webview/JsPromptResultReceiver;)V

    invoke-virtual {v0}, Lwebview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->getPromptResult()Landroid/webkit/JsPromptResult;

    move-result-object v5

    .line 754
    .local v5, "res":Landroid/webkit/JsPromptResult;
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v4, Landroid/webkit/JsDialogHelper;

    const/4 v6, 0x3

    move-object v7, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/webkit/JsDialogHelper;-><init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 761
    .end local v5    # "res":Landroid/webkit/JsPromptResult;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 762
    return-void

    .line 759
    :cond_1
    invoke-interface {p4}, Lorg/chromium/android_webview/JsPromptResultReceiver;->cancel()V

    goto :goto_0
.end method

.method public onCloseWindow()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 443
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 447
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 448
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 372
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 374
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    .line 377
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "[blocked]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string v2, "WebViewCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocked URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 385
    return v1

    .line 382
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public onCreateWindow(ZZ)Z
    .locals 6
    .param p1, "isDialog"    # Z
    .param p2, "isUserGesture"    # Z

    .prologue
    .line 423
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mUiThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    new-instance v4, Landroid/webkit/WebView$WebViewTransport;

    iget-object v5, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 425
    .local v0, "m":Landroid/os/Message;
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 427
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, p1, p2, v0}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v1

    .line 433
    .local v1, "result":Z
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 434
    return v1

    .line 431
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 881
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 884
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mDownloadListener:Landroid/webkit/DownloadListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 889
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 891
    :cond_0
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 394
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mFindListener:Landroid/webkit/WebView$FindListener;

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 397
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mFindListener:Landroid/webkit/WebView$FindListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 398
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "dontResend"    # Landroid/os/Message;
    .param p2, "resend"    # Landroid/os/Message;

    .prologue
    .line 869
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 871
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 872
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 873
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 612
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 613
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 617
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 618
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 602
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 603
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 607
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 608
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 978
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 982
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 983
    return-void
.end method

.method public onLoadResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 417
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 419
    return-void
.end method

.method public onNewPicture(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 406
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 409
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v0, v1, p1}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 410
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 507
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 523
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$2;

    invoke-direct {v0, p0}, Lwebview/chromium/WebViewContentsClientAdapter$2;-><init>(Lwebview/chromium/WebViewContentsClientAdapter;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 535
    :cond_0
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 496
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 497
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 498
    return-void
.end method

.method public onPermissionRequest(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 3
    .param p1, "permissionRequest"    # Lorg/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 622
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 623
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mOngoingPermissionRequests:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mOngoingPermissionRequests:Ljava/util/WeakHashMap;

    .line 629
    :cond_0
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;

    invoke-direct {v0, p1}, Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;-><init>(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V

    .line 630
    .local v0, "adapter":Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mOngoingPermissionRequests:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 637
    .end local v0    # "adapter":Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;
    :goto_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 638
    return-void

    .line 635
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/android_webview/permission/AwPermissionRequest;->deny()V

    goto :goto_0
.end method

.method public onPermissionRequestCanceled(Lorg/chromium/android_webview/permission/AwPermissionRequest;)V
    .locals 3
    .param p1, "permissionRequest"    # Lorg/chromium/android_webview/permission/AwPermissionRequest;

    .prologue
    .line 642
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 643
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mOngoingPermissionRequests:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mOngoingPermissionRequests:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 650
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;>;"
    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;

    .line 652
    .local v0, "adapter":Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v0}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 655
    .end local v0    # "adapter":Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lwebview/chromium/WebViewContentsClientAdapter$PermissionRequestAdapter;>;"
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 656
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 277
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 278
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 282
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 283
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V
    .locals 6
    .param p1, "callback"    # Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "principals"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 852
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 853
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;-><init>(Lorg/chromium/android_webview/AwContentsClientBridge$ClientCertificateRequestCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V

    .line 855
    .local v0, "request":Lwebview/chromium/WebViewContentsClientAdapter$ClientCertRequestImpl;
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 856
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 857
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 542
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewDelegate:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;->getErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 548
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 550
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 552
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/chromium/android_webview/AwHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Lorg/chromium/android_webview/AwHttpAuthHandler;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 768
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;

    invoke-direct {v2, p1}, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;-><init>(Lorg/chromium/android_webview/AwHttpAuthHandler;)V

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 771
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 481
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 482
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 486
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 487
    return-void
.end method

.method public onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 861
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 863
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 865
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 3
    .param p2, "error"    # Landroid/net/http/SslError;
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

    .prologue
    .line 775
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$3;

    invoke-direct {v0, p0, p1}, Lwebview/chromium/WebViewContentsClientAdapter$3;-><init>(Lwebview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V

    .line 785
    .local v0, "handler":Landroid/webkit/SslErrorHandler;
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 787
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0, p2}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 788
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 789
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 560
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 564
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 565
    return-void
.end method

.method public onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    .line 468
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 469
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 473
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 474
    return-void
.end method

.method public onRequestFocus()V
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 456
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 460
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 461
    return-void
.end method

.method public onScaleChangedScaled(FF)V
    .locals 2
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 959
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 961
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 962
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 963
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cb"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 967
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 968
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 972
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 973
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 363
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 364
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 365
    return-void
.end method

.method setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 233
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 234
    return-void
.end method

.method setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    .line 237
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mFindListener:Landroid/webkit/WebView$FindListener;

    .line 238
    return-void
.end method

.method setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkit/WebView$PictureListener;

    .prologue
    .line 241
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 242
    return-void
.end method

.method setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 229
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 230
    return-void
.end method

.method setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Lwebview/chromium/WebViewContentsClientAdapter$NullWebViewClient;

    invoke-direct {v0}, Lwebview/chromium/WebViewContentsClientAdapter$NullWebViewClient;-><init>()V

    iput-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    goto :goto_0
.end method

.method public shouldInterceptRequest(Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lorg/chromium/android_webview/AwWebResourceResponse;
    .locals 8
    .param p1, "params"    # Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    .prologue
    .line 323
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 325
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lwebview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;

    invoke-direct {v2, p1}, Lwebview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;-><init>(Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 327
    .local v7, "response":Landroid/webkit/WebResourceResponse;
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 328
    if-nez v7, :cond_0

    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 331
    :cond_0
    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 332
    .local v6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_1

    .line 333
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 335
    .restart local v6    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lorg/chromium/android_webview/AwWebResourceResponse;

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/android_webview/AwWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewClient;->shouldPropagateKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    .line 579
    :cond_0
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 581
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 582
    .local v0, "result":Z
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 351
    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 352
    .local v0, "result":Z
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    .line 353
    return v0
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;)V
    .locals 6
    .param p2, "fileChooserParams"    # Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "uploadFileCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 896
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_1

    .line 897
    invoke-interface {p1, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->begin()V

    .line 901
    new-instance v0, Lwebview/chromium/FileChooserParamsAdapter;

    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, v3}, Lwebview/chromium/FileChooserParamsAdapter;-><init>(Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;Landroid/content/Context;)V

    .line 904
    .local v0, "adapter":Lwebview/chromium/FileChooserParamsAdapter;
    new-instance v1, Lwebview/chromium/WebViewContentsClientAdapter$4;

    invoke-direct {v1, p0, p1}, Lwebview/chromium/WebViewContentsClientAdapter$4;-><init>(Lwebview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V

    .line 925
    .local v1, "callbackAdapter":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v4, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v1, v0}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 931
    iget-object v3, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 933
    invoke-interface {p1, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 939
    :cond_2
    new-instance v2, Lwebview/chromium/WebViewContentsClientAdapter$5;

    invoke-direct {v2, p0, p1}, Lwebview/chromium/WebViewContentsClientAdapter$5;-><init>(Lwebview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V

    .line 952
    .local v2, "innerCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v4, p0, Lwebview/chromium/WebViewContentsClientAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v5, p2, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    iget-boolean v3, p2, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->capture:Z

    if-eqz v3, :cond_3

    const-string v3, "*"

    :goto_1
    invoke-virtual {v4, v2, v5, v3}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lorg/chromium/base/TraceEvent;->end()V

    goto :goto_0

    .line 952
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method
