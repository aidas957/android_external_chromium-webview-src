.class Lcom/android/webview/chromium/WebViewChromium$23;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->canGoBackOrForward(I)Z
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

.field final synthetic val$steps:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;I)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$23;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$23;->val$steps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$23;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$23;->val$steps:I

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->canGoBackOrForward(I)Z

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
    .line 774
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium$23;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
