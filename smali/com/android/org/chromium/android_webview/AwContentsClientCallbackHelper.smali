.class public Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
.super Ljava/lang/Object;
.source "AwContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$1;,
        Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;,
        Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;,
        Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;,
        Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;
    }
.end annotation


# instance fields
.field private final mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingOnNewPicture:Z

.field private mLastPictureTime:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/org/chromium/android_webview/AwContentsClient;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "contentsClient"    # Lcom/android/org/chromium/android_webview/AwContentsClient;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mLastPictureTime:J

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHasPendingOnNewPicture:Z

    .line 153
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;-><init>(Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;Landroid/os/Looper;Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$1;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;)Lcom/android/org/chromium/android_webview/AwContentsClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mLastPictureTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHasPendingOnNewPicture:Z

    return p1
.end method


# virtual methods
.method public postOnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 167
    new-instance v1, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 169
    .local v1, "info":Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method

.method public postOnLoadResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method

.method public postOnNewPicture(Ljava/util/concurrent/Callable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "pictureProvider":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Picture;>;"
    iget-boolean v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHasPendingOnNewPicture:Z

    if-eqz v2, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHasPendingOnNewPicture:Z

    .line 185
    iget-wide v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mLastPictureTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 187
    .local v0, "pictureTime":J
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public postOnPageStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method public postOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v0, "info":Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public postOnReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v0, "info":Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public postOnScaleChangedScaled(FF)V
    .locals 5
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method
