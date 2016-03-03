.class public abstract Lorg/chromium/content/browser/ContentReadbackHandler;
.super Ljava/lang/Object;
.source "ContentReadbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mGetBitmapRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNextReadbackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/content/browser/ContentReadbackHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentReadbackHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    .line 43
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCompositorBitmap(JIJ)V
.end method

.method private native nativeGetContentBitmap(JIFLandroid/graphics/Bitmap$Config;FFFFLjava/lang/Object;)V
.end method

.method private native nativeInit()J
.end method

.method private notifyGetBitmapFinished(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "readbackId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iget-object v1, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    .line 64
    .local v0, "callback":Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 66
    invoke-interface {v0, p2}, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    :cond_0
    return-void

    .line 69
    :cond_1
    sget-boolean v1, Lorg/chromium/content/browser/ContentReadbackHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Readback finished for unregistered Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
