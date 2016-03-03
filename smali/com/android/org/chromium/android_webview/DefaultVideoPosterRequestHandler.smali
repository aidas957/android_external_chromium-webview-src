.class public Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;
.super Ljava/lang/Object;
.source "DefaultVideoPosterRequestHandler.java"


# instance fields
.field private mContentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

.field private mDefaultVideoPosterURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwContentsClient;)V
    .locals 1
    .param p1, "contentClient"    # Lcom/android/org/chromium/android_webview/AwContentsClient;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->generateDefaulVideoPosterURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->mContentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    .line 78
    return-void
.end method

.method static synthetic access$000(Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/OutputStream;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->closeOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DefaultVideoPosterRequestHandler"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static generateDefaulVideoPosterURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 107
    .local v1, "randomGenerator":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-webview-video-poster:default_video_poster/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getInputStream(Lcom/android/org/chromium/android_webview/AwContentsClient;)Ljava/io/InputStream;
    .locals 3
    .param p0, "contentClient"    # Lcom/android/org/chromium/android_webview/AwContentsClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    .line 31
    .local v0, "inputStream":Ljava/io/PipedInputStream;
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 36
    .local v1, "outputStream":Ljava/io/PipedOutputStream;
    new-instance v2, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler$1;-><init>(Lcom/android/org/chromium/android_webview/AwContentsClient;Ljava/io/PipedOutputStream;)V

    invoke-static {v2}, Lcom/android/org/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->mDefaultVideoPosterURL:Ljava/lang/String;

    return-object v0
.end method

.method public shouldInterceptRequest(Ljava/lang/String;)Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :goto_0
    return-object v1

    .line 91
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;

    const-string v3, "image/png"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->mContentClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    invoke-static {v5}, Lcom/android/org/chromium/android_webview/DefaultVideoPosterRequestHandler;->getInputStream(Lcom/android/org/chromium/android_webview/AwContentsClient;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DefaultVideoPosterRequestHandler"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
