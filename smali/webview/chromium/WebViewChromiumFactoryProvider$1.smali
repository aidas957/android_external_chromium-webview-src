.class Lwebview/chromium/WebViewChromiumFactoryProvider$1;
.super Ljava/lang/Object;
.source "WebViewChromiumFactoryProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromiumFactoryProvider;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lwebview/chromium/WebViewChromiumFactoryProvider$1;->this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lwebview/chromium/WebViewChromiumFactoryProvider$1;->this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;

    # getter for: Lwebview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lwebview/chromium/WebViewChromiumFactoryProvider;->access$000(Lwebview/chromium/WebViewChromiumFactoryProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lwebview/chromium/WebViewChromiumFactoryProvider$1;->this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;

    # invokes: Lwebview/chromium/WebViewChromiumFactoryProvider;->startChromiumLocked()V
    invoke-static {v0}, Lwebview/chromium/WebViewChromiumFactoryProvider;->access$100(Lwebview/chromium/WebViewChromiumFactoryProvider;)V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
