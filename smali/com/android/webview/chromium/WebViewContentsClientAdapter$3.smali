.class Lcom/android/webview/chromium/WebViewContentsClientAdapter$3;
.super Landroid/webkit/SslErrorHandler;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewContentsClientAdapter;->onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$3;->this$0:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$3;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$3;->val$callback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 783
    return-void
.end method

.method public proceed()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$3;->val$callback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 779
    return-void
.end method
