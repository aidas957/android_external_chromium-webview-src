.class public Lorg/chromium/android_webview/AwDevToolsServer;
.super Ljava/lang/Object;
.source "AwDevToolsServer.java"


# instance fields
.field private mNativeDevToolsServer:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/android_webview/AwDevToolsServer;->mNativeDevToolsServer:J

    .line 18
    invoke-direct {p0}, Lorg/chromium/android_webview/AwDevToolsServer;->nativeInitRemoteDebugging()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/android_webview/AwDevToolsServer;->mNativeDevToolsServer:J

    .line 19
    return-void
.end method

.method private native nativeDestroyRemoteDebugging(J)V
.end method

.method private native nativeInitRemoteDebugging()J
.end method

.method private native nativeSetRemoteDebuggingEnabled(JZ)V
.end method


# virtual methods
.method public setRemoteDebuggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/chromium/android_webview/AwDevToolsServer;->mNativeDevToolsServer:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwDevToolsServer;->nativeSetRemoteDebuggingEnabled(JZ)V

    .line 28
    return-void
.end method
