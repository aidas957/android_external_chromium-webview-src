.class public Lorg/chromium/android_webview/JavaBrowserViewRendererHelper;
.super Ljava/lang/Object;
.source "JavaBrowserViewRendererHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static createBitmap(IILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "JavaBrowserViewRendererHelper"

    const-string v3, "Error allocating bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static drawBitmapIntoCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method
