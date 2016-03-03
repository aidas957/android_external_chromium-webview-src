.class Lcom/android/webview/chromium/WebViewChromium$53;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$interfaceName:Ljava/lang/String;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$53;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$53;->val$obj:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/webview/chromium/WebViewChromium$53;->val$interfaceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$53;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$53;->val$obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium$53;->val$interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/webview/chromium/WebViewChromium;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    return-void
.end method
