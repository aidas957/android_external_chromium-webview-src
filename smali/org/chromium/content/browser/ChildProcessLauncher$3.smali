.class final Lorg/chromium/content/browser/ChildProcessLauncher$3;
.super Lorg/chromium/content/common/IChildProcessCallback$Stub;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$childProcessId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 487
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    iput p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$childProcessId:I

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I

    .prologue
    .line 499
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 500
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$400(ILandroid/view/Surface;II)V

    goto :goto_0
.end method

.method public getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 2
    .param p1, "surfaceTextureId"    # I

    .prologue
    .line 549
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 550
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-renderer process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$childProcessId:I

    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$800(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4
    .param p1, "surfaceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 510
    iget v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 511
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Illegal callback for non-GPU process."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-object v1

    .line 515
    :cond_0
    # getter for: Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 516
    .local v0, "surface":Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 517
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Invalid surfaceId."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_1
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher$3;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 521
    :cond_2
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 2
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .prologue
    .line 527
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 528
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    invoke-static {p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$600(IILandroid/view/Surface;)V

    goto :goto_0
.end method

.method public unregisterSurfaceTextureSurface(II)V
    .locals 2
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I

    .prologue
    .line 539
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 540
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 544
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V
    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$700(II)V

    goto :goto_0
.end method
