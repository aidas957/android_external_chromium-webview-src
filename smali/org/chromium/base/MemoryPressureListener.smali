.class public Lorg/chromium/base/MemoryPressureListener;
.super Ljava/lang/Object;
.source "MemoryPressureListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->nativeOnMemoryPressure(I)V

    return-void
.end method

.method public static maybeNotifyMemoryPresure(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 87
    const/16 v0, 0x50

    if-lt p0, v0, :cond_1

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/base/MemoryPressureListener;->nativeOnMemoryPressure(I)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/16 v0, 0x28

    if-ge p0, v0, :cond_2

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/MemoryPressureListener;->nativeOnMemoryPressure(I)V

    goto :goto_0
.end method

.method private static native nativeOnMemoryPressure(I)V
.end method

.method private static registerSystemCallback(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Lorg/chromium/base/MemoryPressureListener$1;

    invoke-direct {v0}, Lorg/chromium/base/MemoryPressureListener$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 63
    return-void
.end method
