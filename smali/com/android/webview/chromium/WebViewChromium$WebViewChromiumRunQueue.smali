.class Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;
.super Ljava/lang/Object;
.source "WebViewChromium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewChromium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewChromiumRunQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;


# direct methods
.method public constructor <init>(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    .line 99
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$000(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue$1;

    invoke-direct {v0, p0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue$1;-><init>(Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;)V

    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public drainQueue()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 119
    .local v0, "task":Ljava/lang/Runnable;
    :goto_0
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .restart local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method
