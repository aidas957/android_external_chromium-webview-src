.class public abstract Lcom/android/org/chromium/media/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;
    }
.end annotation


# instance fields
.field protected mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

.field protected final mContext:Landroid/content/Context;

.field protected final mId:I

.field protected final mNativeVideoCaptureDeviceAndroid:J


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/media/VideoCapture;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    .line 61
    iput-object p1, p0, Lcom/android/org/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/android/org/chromium/media/VideoCapture;->mId:I

    .line 63
    iput-wide p3, p0, Lcom/android/org/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 64
    return-void
.end method


# virtual methods
.method abstract allocate(III)Z
.end method

.method abstract allocateBuffers()V
.end method

.method abstract deallocate()V
.end method

.method public final getColorspace()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCapture;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    iget v0, v0, Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 106
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :sswitch_0
    const v0, 0x32315659

    goto :goto_0

    .line 103
    :sswitch_1
    const/16 v0, 0x11

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public native nativeOnFrameAvailable(J[BII)V
.end method

.method public final queryFrameRate()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCapture;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    iget v0, v0, Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;->mFramerate:I

    return v0
.end method

.method public final queryHeight()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCapture;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    iget v0, v0, Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;->mHeight:I

    return v0
.end method

.method public final queryWidth()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCapture;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    iget v0, v0, Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;->mWidth:I

    return v0
.end method

.method abstract startCapture()I
.end method

.method abstract stopCapture()I
.end method
