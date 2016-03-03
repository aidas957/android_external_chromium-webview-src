.class public Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;
.super Ljava/lang/Object;
.source "AwHttpAuthHandler.java"


# instance fields
.field private final mFirstAttempt:Z

.field private mNativeAwHttpAuthHandler:J


# direct methods
.method private constructor <init>(JZ)V
    .locals 1
    .param p1, "nativeAwHttpAuthHandler"    # J
    .param p3, "firstAttempt"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    .line 44
    iput-boolean p3, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mFirstAttempt:Z

    .line 45
    return-void
.end method

.method public static create(JZ)Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;
    .locals 2
    .param p0, "nativeAwAuthHandler"    # J
    .param p2, "firstAttempt"    # Z

    .prologue
    .line 39
    new-instance v0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;-><init>(JZ)V

    return-object v0
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeProceed(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 28
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->nativeCancel(J)V

    .line 29
    iput-wide v2, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    .line 31
    :cond_0
    return-void
.end method

.method handlerDestroyed()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    .line 50
    return-void
.end method

.method public isFirstAttempt()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mFirstAttempt:Z

    return v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->nativeProceed(JLjava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-wide v2, p0, Lcom/android/org/chromium/android_webview/AwHttpAuthHandler;->mNativeAwHttpAuthHandler:J

    .line 24
    :cond_0
    return-void
.end method
