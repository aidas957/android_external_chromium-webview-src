.class final Lorg/chromium/android_webview/AwPicture$DestroyRunnable;
.super Ljava/lang/Object;
.source "AwPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private mNativeAwPicture:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeAwPicture"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/chromium/android_webview/AwPicture$DestroyRunnable;->mNativeAwPicture:J

    .line 28
    return-void
.end method

.method synthetic constructor <init>(JLorg/chromium/android_webview/AwPicture$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/chromium/android_webview/AwPicture$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwPicture$DestroyRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/android_webview/AwPicture$DestroyRunnable;->mNativeAwPicture:J

    # invokes: Lorg/chromium/android_webview/AwPicture;->nativeDestroy(J)V
    invoke-static {v0, v1}, Lorg/chromium/android_webview/AwPicture;->access$000(J)V

    .line 32
    return-void
.end method
