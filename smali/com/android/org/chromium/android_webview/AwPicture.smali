.class Lcom/android/org/chromium/android_webview/AwPicture;
.super Landroid/graphics/Picture;
.source "AwPicture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/AwPicture$1;,
        Lcom/android/org/chromium/android_webview/AwPicture$DestroyRunnable;
    }
.end annotation


# instance fields
.field private mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

.field private mNativeAwPicture:J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "nativeAwPicture"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/AwPicture;->mNativeAwPicture:J

    .line 43
    new-instance v0, Lcom/android/org/chromium/content/common/CleanupReference;

    new-instance v1, Lcom/android/org/chromium/android_webview/AwPicture$DestroyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/org/chromium/android_webview/AwPicture$DestroyRunnable;-><init>(JLcom/android/org/chromium/android_webview/AwPicture$1;)V

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwPicture;->mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

    .line 44
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/android/org/chromium/android_webview/AwPicture;->nativeDestroy(J)V

    return-void
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeDraw(JLandroid/graphics/Canvas;)V
.end method

.method private native nativeGetHeight(J)I
.end method

.method private native nativeGetWidth(J)I
.end method

.method private unsupportedOperation()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported in AwPicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwPicture;->unsupportedOperation()V

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwPicture;->mNativeAwPicture:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/chromium/android_webview/AwPicture;->nativeDraw(JLandroid/graphics/Canvas;)V

    .line 70
    return-void
.end method

.method public endRecording()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwPicture;->mNativeAwPicture:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwPicture;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwPicture;->mNativeAwPicture:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwPicture;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwPicture;->unsupportedOperation()V

    .line 76
    return-void
.end method
