.class Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue$1;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue$1;->this$1:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue$1;->this$1:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->drainQueue()V

    .line 108
    return-void
.end method
