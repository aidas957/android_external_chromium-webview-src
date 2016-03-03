.class Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;
.super Ljava/lang/Object;
.source "WebViewContentsClientAdapter.java"

# interfaces
.implements Landroid/webkit/WebResourceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewContentsClientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebResourceRequestImpl"
.end annotation


# instance fields
.field private final mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;)V
    .locals 0
    .param p1, "params"    # Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    .line 290
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->requestHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    iget-boolean v0, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->hasUserGesture:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$WebResourceRequestImpl;->mParams:Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;

    iget-boolean v0, v0, Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;->isMainFrame:Z

    return v0
.end method
