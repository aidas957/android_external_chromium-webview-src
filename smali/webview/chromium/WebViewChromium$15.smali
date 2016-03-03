.class Lwebview/chromium/WebViewChromium$15;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->loadUrlOnUiThread(Lorg/chromium/content_public/browser/LoadUrlParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$loadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$15;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$15;->val$loadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$15;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mAwContents:Lorg/chromium/android_webview/AwContents;
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$400(Lwebview/chromium/WebViewChromium;)Lorg/chromium/android_webview/AwContents;

    move-result-object v0

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$15;->val$loadUrlParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwContents;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 651
    return-void
.end method
