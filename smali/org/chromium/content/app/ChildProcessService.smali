.class public Lorg/chromium/content/app/ChildProcessService;
.super Landroid/app/Service;
.source "ChildProcessService.java"


# static fields
.field private static sContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field private mCommandLineParams:[Ljava/lang/String;

.field private mCpuCount:I

.field private mCpuFeatures:J

.field private mFileFds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBound:Z

.field private mLibraryInitialized:Z

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private mMainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    .line 65
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 68
    new-instance v0, Lorg/chromium/content/app/ChildProcessService$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/app/ChildProcessService$1;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Lorg/chromium/content/app/ChildProcessService;[I[IIJ)V
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lorg/chromium/content/app/ChildProcessService;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [I
    .param p4, "x4"    # I
    .param p5, "x5"    # J

    .prologue
    .line 45
    invoke-static/range {p0 .. p6}, Lorg/chromium/content/app/ChildProcessService;->nativeInitChildProcess(Landroid/content/Context;Lorg/chromium/content/app/ChildProcessService;[I[IIJ)V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->nativeExitChildProcess()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/content/app/ChildProcessService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/chromium/content/app/ChildProcessService;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/content/app/ChildProcessService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/content/app/ChildProcessService;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/chromium/content/app/ChildProcessService;J)J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mFileIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lorg/chromium/content/app/ChildProcessService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mFileIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mFileFds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lorg/chromium/content/app/ChildProcessService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mFileFds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/content/app/ChildProcessService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/content/app/ChildProcessService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    return p1
.end method

.method private createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 330
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 331
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 337
    .local v1, "surface":Landroid/view/Surface;
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1, p2, v1}, Lorg/chromium/content/common/IChildProcessCallback;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call registerSurfaceTextureSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private destroySurfaceTextureSurface(II)V
    .locals 4
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v1, :cond_0

    .line 348
    const-string v1, "ChildProcessService"

    const-string v2, "No callback interface has been provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    return-void

    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1, p2}, Lorg/chromium/content/common/IChildProcessCallback;->unregisterSurfaceTextureSurface(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ChildProcessService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call unregisterSurfaceTextureSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private establishSurfaceTexturePeer(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "surfaceObject"    # Ljava/lang/Object;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I

    .prologue
    .line 282
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v3, :cond_1

    .line 283
    const-string v3, "ChildProcessService"

    const-string v4, "No callback interface has been provided."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 288
    .local v2, "surface":Landroid/view/Surface;
    const/4 v1, 0x0

    .line 289
    .local v1, "needRelease":Z
    instance-of v3, p2, Landroid/view/Surface;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 290
    check-cast v2, Landroid/view/Surface;

    .line 299
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v3, p1, v2, p3, p4}, Lorg/chromium/content/common/IChildProcessCallback;->establishSurfacePeer(ILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 291
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 292
    new-instance v2, Landroid/view/Surface;

    .end local v2    # "surface":Landroid/view/Surface;
    check-cast p2, Landroid/graphics/SurfaceTexture;

    .end local p2    # "surfaceObject":Ljava/lang/Object;
    invoke-direct {v2, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 293
    .restart local v2    # "surface":Landroid/view/Surface;
    const/4 v1, 0x1

    goto :goto_1

    .line 295
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_3
    const-string v3, "ChildProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a valid surfaceObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "ChildProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call establishSurfaceTexturePeer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_4
    throw v3
.end method

.method private getSurfaceTextureSurface(I)Landroid/view/Surface;
    .locals 5
    .param p1, "surfaceTextureId"    # I

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 363
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-object v1

    .line 368
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call getSurfaceTextureSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getViewSurface(I)Landroid/view/Surface;
    .locals 5
    .param p1, "surfaceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 314
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-object v1

    .line 319
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call establishSurfaceTexturePeer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeExitChildProcess()V
.end method

.method private static native nativeInitChildProcess(Landroid/content/Context;Lorg/chromium/content/app/ChildProcessService;[I[IIJ)V
.end method

.method private native nativeShutdownMainThread()V
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->stopSelf()V

    .line 255
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 256
    :try_start_0
    const-string v0, "com.android.org.chromium.com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    .line 260
    new-instance v0, Lorg/chromium/content/app/ChromiumLinkerParams;

    invoke-direct {v0, p1}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 262
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "ChildProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new ChildProcessService pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "ChildProcessService"

    const-string v1, "ChildProcessService created again in process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/chromium/content/app/ChildProcessService$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/app/ChildProcessService$2;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    const-string v2, "ChildProcessMain"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    .line 220
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 225
    const-string v0, "ChildProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying ChildProcessService pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 233
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 241
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->nativeShutdownMainThread()V

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
