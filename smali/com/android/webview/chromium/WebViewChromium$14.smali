.class Lcom/android/webview/chromium/WebViewChromium$14;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$14;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$14;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$14;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$400(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v0

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$14;->val$url:Ljava/lang/String;

    const-string v2, "javascript:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->evaluateJavaScriptEvenIfNotYetNavigated(Ljava/lang/String;)V

    .line 549
    return-void
.end method