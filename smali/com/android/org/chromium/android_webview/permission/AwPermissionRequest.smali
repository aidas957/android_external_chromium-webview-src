.class public Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;
.super Ljava/lang/Object;
.source "AwPermissionRequest.java"


# instance fields
.field private mNativeAwPermissionRequest:J

.field private mOrigin:Landroid/net/Uri;

.field private mProcessed:Z

.field private mResources:J


# direct methods
.method private constructor <init>(JLandroid/net/Uri;J)V
    .locals 0
    .param p1, "nativeAwPermissionRequest"    # J
    .param p3, "origin"    # Landroid/net/Uri;
    .param p4, "resources"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    .line 40
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mOrigin:Landroid/net/Uri;

    .line 41
    iput-wide p4, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mResources:J

    .line 42
    return-void
.end method

.method private static create(JLjava/lang/String;J)Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;
    .locals 6
    .param p0, "nativeAwPermissionRequest"    # J
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "resources"    # J

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 34
    .local v3, "origin":Landroid/net/Uri;
    new-instance v0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;

    move-wide v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;-><init>(JLandroid/net/Uri;J)V

    goto :goto_0
.end method

.method private detachNativeInstance()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    .line 69
    return-void
.end method

.method private native nativeOnAccept(JZ)V
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either grant() or deny() should be called on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mProcessed:Z

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either grant() or deny() has been already called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public deny()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->validate()V

    .line 61
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->nativeOnAccept(JZ)V

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mProcessed:Z

    .line 64
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "AwPermissionRequest"

    const-string v1, "Neither grant() nor deny() has been called, the permission request is denied by default."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->deny()V

    goto :goto_0
.end method

.method public getOrigin()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mOrigin:Landroid/net/Uri;

    return-object v0
.end method

.method public getResources()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mResources:J

    return-wide v0
.end method

.method public grant()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->validate()V

    .line 54
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mNativeAwPermissionRequest:J

    invoke-direct {p0, v0, v1, v4}, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->nativeOnAccept(JZ)V

    .line 56
    :cond_0
    iput-boolean v4, p0, Lcom/android/org/chromium/android_webview/permission/AwPermissionRequest;->mProcessed:Z

    .line 57
    return-void
.end method
