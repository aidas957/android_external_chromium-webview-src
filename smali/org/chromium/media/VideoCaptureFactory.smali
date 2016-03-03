.class Lorg/chromium/media/VideoCaptureFactory;
.super Ljava/lang/Object;
.source "VideoCaptureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static createVideoCapture(Landroid/content/Context;IJ)Lorg/chromium/media/VideoCapture;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 89
    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialCamera(I)Z
    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lorg/chromium/media/VideoCaptureTango;

    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->toSpecialCameraId(I)I
    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2, p3}, Lorg/chromium/media/VideoCaptureTango;-><init>(Landroid/content/Context;IJ)V

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/media/VideoCaptureAndroid;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/media/VideoCaptureAndroid;-><init>(Landroid/content/Context;IJ)V

    goto :goto_0
.end method

.method static getCaptureFormatFramerate(Lorg/chromium/media/VideoCapture$CaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCapture$CaptureFormat;

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getFramerate()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatHeight(Lorg/chromium/media/VideoCapture$CaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCapture$CaptureFormat;

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getHeight()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatPixelFormat(Lorg/chromium/media/VideoCapture$CaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCapture$CaptureFormat;

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getPixelFormat()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatWidth(Lorg/chromium/media/VideoCapture$CaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCapture$CaptureFormat;

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getWidth()I

    move-result v0

    return v0
.end method

.method static getDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 105
    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialCamera(I)Z
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->toSpecialCameraId(I)I
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureTango;->getName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCapture$CaptureFormat;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 112
    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialCamera(I)Z
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->toSpecialCameraId(I)I
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureTango;->getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-result-object v0

    goto :goto_0
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 100
    # invokes: Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->getNumberOfCameras(Landroid/content/Context;)I
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$200(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
