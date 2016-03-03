.class abstract Lwebview/chromium/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawGLFunctionTable()J
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lwebview/chromium/GraphicsUtils;->nativeGetDrawGLFunctionTable()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDrawSWFunctionTable()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lwebview/chromium/GraphicsUtils;->nativeGetDrawSWFunctionTable()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeGetDrawGLFunctionTable()J
.end method

.method private static native nativeGetDrawSWFunctionTable()J
.end method
