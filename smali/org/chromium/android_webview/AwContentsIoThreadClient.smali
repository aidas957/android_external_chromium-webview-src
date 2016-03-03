.class public abstract Lorg/chromium/android_webview/AwContentsIoThreadClient;
.super Ljava/lang/Object;
.source "AwContentsIoThreadClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheMode()I
.end method

.method public abstract newLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract shouldAcceptThirdPartyCookies()Z
.end method

.method public abstract shouldBlockContentUrls()Z
.end method

.method public abstract shouldBlockFileUrls()Z
.end method

.method public abstract shouldBlockNetworkLoads()Z
.end method

.method public abstract shouldInterceptRequest(Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lorg/chromium/android_webview/AwWebResourceResponse;
.end method

.method protected shouldInterceptRequest(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/chromium/android_webview/AwWebResourceResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "requestHeaderNames"    # [Ljava/lang/String;
    .param p6, "requestHeaderValues"    # [Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    invoke-direct {v1}, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;-><init>()V

    .line 53
    .local v1, "params":Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;
    iput-object p1, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->url:Ljava/lang/String;

    .line 54
    iput-boolean p2, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->isMainFrame:Z

    .line 55
    iput-boolean p3, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->hasUserGesture:Z

    .line 56
    iput-object p4, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->method:Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/util/HashMap;

    array-length v3, p5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->requestHeaders:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_0

    .line 59
    iget-object v2, v1, Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->requestHeaders:Ljava/util/HashMap;

    aget-object v3, p5, v0

    aget-object v4, p6, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/android_webview/AwContentsIoThreadClient;->shouldInterceptRequest(Lorg/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)Lorg/chromium/android_webview/AwWebResourceResponse;

    move-result-object v2

    return-object v2
.end method
