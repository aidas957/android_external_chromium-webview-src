.class Lcom/android/webview/chromium/WebViewChromium$69;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onKeyMultiple(IILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$keyCode:I

.field final synthetic val$repeatCount:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;IILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$69;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$keyCode:I

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$repeatCount:I

    iput-object p4, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$69;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$keyCode:I

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$repeatCount:I

    iget-object v3, p0, Lcom/android/webview/chromium/WebViewChromium$69;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/webview/chromium/WebViewChromium;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium$69;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
