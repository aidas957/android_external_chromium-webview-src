.class Lcom/android/webview/chromium/WebViewChromium$8;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$8;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$realm:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$8;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$realm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/webview/chromium/WebViewChromium$8;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/webview/chromium/WebViewChromium;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method
