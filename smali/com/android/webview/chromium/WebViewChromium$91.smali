.class Lcom/android/webview/chromium/WebViewChromium$91;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->computeVerticalScrollExtent()I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$91;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$91;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromium;->computeVerticalScrollExtent()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 2090
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium$91;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
