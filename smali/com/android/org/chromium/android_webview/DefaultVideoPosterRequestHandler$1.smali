.class final Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;
.super Ljava/lang/Object;
.source "DefaultVideoPosterRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->getInputStream(Lcom/android/org/chromium/android_webview/AwContentsClient;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

.field final synthetic val$outputStream:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContentsClient;Ljava/io/PipedOutputStream;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$contentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$contentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "defaultVideoPoster":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    # invokes: Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->closeOutputStream(Ljava/io/OutputStream;)V
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->access$000(Ljava/io/OutputStream;)V

    .line 58
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;-><init>(Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
