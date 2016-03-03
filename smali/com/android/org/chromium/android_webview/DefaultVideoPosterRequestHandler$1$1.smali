.class Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;
.super Ljava/lang/Object;
.source "DefaultVideoPosterRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

.field final synthetic val$defaultVideoPoster:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->val$defaultVideoPoster:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->val$defaultVideoPoster:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iget-object v4, v4, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iget-object v1, v1, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iget-object v1, v1, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    # invokes: Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->closeOutputStream(Ljava/io/OutputStream;)V
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->access$000(Ljava/io/OutputStream;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "DefaultVideoPosterRequestHandler"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iget-object v1, v1, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    # invokes: Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->closeOutputStream(Ljava/io/OutputStream;)V
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->access$000(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1$1;->this$0:Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    iget-object v2, v2, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;->val$outputStream:Ljava/io/PipedOutputStream;

    # invokes: Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->closeOutputStream(Ljava/io/OutputStream;)V
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->access$000(Ljava/io/OutputStream;)V

    throw v1
.end method
