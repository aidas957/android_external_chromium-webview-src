.class public Lcom/android/org/chromium/android_webview/AwContentViewClient;
.super Lcom/android/org/chromium/content/browser/ContentViewClient;
.source "AwContentViewClient.java"

# interfaces
.implements Lcom/android/org/chromium/content/browser/ContentVideoViewClient;


# instance fields
.field private final mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

.field private final mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

.field private final mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwContentsClient;Lcom/android/org/chromium/android_webview/AwSettings;Lcom/android/org/chromium/android_webview/AwContents;Landroid/content/Context;)V
    .locals 0
    .param p1, "awContentsClient"    # Lcom/android/org/chromium/android_webview/AwContentsClient;
    .param p2, "awSettings"    # Lcom/android/org/chromium/android_webview/AwSettings;
    .param p3, "awContents"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/ContentViewClient;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    .line 30
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    .line 31
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    .line 32
    iput-object p4, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/android_webview/AwContentViewClient;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContentViewClient;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/android_webview/AwContentViewClient;)Lcom/android/org/chromium/android_webview/AwContents;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContentViewClient;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    return-object v0
.end method


# virtual methods
.method public enterFullscreen()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->enterFullScreen()Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "fullscreenView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentViewClient$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/android_webview/AwContentViewClient$1;-><init>(Lcom/android/org/chromium/android_webview/AwContentViewClient;)V

    .line 112
    .local v0, "cb":Landroid/webkit/WebChromeClient$CustomViewCallback;
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    .line 113
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 2
    .param p1, "videoView"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public exitFullscreen()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;

    .line 123
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->exitFullScreen()V

    .line 124
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onHideCustomView()V

    .line 126
    :cond_0
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final getContentVideoViewClient()Lcom/android/org/chromium/content/browser/ContentVideoViewClient;
    .locals 0

    .prologue
    .line 58
    return-object p0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onBackgroundColorChanged(I)V

    .line 38
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->onReceivedTitle(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwSettings:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwSettings;->getBlockNetworkLoads()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
