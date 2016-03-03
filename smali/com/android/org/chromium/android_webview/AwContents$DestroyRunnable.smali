.class final Lcom/android/org/chromium/android_webview/AwContents$DestroyRunnable;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private final mNativeAwContents:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeAwContents"    # J

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/AwContents$DestroyRunnable;->mNativeAwContents:J

    .line 265
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents$DestroyRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwContents$DestroyRunnable;->mNativeAwContents:J

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeDestroy(J)V
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$000(J)V

    .line 269
    return-void
.end method
