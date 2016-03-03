.class Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;
.super Lcom/android/org/chromium/android_webview/AwContentsIoThreadClient;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IoThreadClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContentsIoThreadClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;-><init>(Lcom/android/org/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public getCacheMode()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public newLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->postOnReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->postOnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 391
    return-void
.end method

.method public shouldAcceptThirdPartyCookies()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAcceptThirdPartyCookies()Z

    move-result v0

    return v0
.end method

.method public shouldBlockContentUrls()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowContentAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBlockFileUrls()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getAllowFileAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->getBlockNetworkLoads()Z

    move-result v0

    return v0
.end method

.method public shouldInterceptRequest(Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    .locals 6
    .param p1, "params"    # Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    .prologue
    .line 342
    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->url:Ljava/lang/String;

    .line 345
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mDefaultVideoPosterRequestHandler:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->shouldInterceptRequest(Ljava/lang/String;)Lcom/android/org/chromium/android_webview/AwWebResourceResponse;

    move-result-object v0

    .line 346
    .local v0, "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 363
    .end local v0    # "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    .local v1, "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    :goto_0
    return-object v1

    .line 348
    .end local v1    # "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    .restart local v0    # "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    :cond_0
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->shouldInterceptRequest(Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lcom/android/org/chromium/android_webview/AwWebResourceResponse;

    move-result-object v0

    .line 350
    if-nez v0, :cond_1

    .line 351
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->postOnLoadResource(Ljava/lang/String;)V

    .line 354
    :cond_1
    iget-boolean v3, p1, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->isMainFrame:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$IoThreadClientImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->postOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 363
    .end local v0    # "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    .restart local v1    # "awWebResourceResponse":Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    goto :goto_0
.end method
