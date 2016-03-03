.class public Lcom/android/org/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

.field private static sConnectionAllocated:Z

.field private static sLinkerInitialized:Z

.field private static sLinkerLoadAddress:J

.field private static final sPrivilegedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static final sSandboxedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/org/chromium/content/browser/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sSpareSandboxedConnection:Lcom/android/org/chromium/content/browser/ChildProcessConnection;

.field private static sSurfaceTextureSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    const-class v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    .line 137
    new-instance v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-direct {v0, v1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(Z)V

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 139
    new-instance v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-direct {v0, v2}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(Z)V

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 142
    sput-boolean v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sConnectionAllocated:Z

    .line 179
    sput-boolean v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 180
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .line 229
    invoke-static {}, Lcom/android/org/chromium/content/browser/BindingManagerImpl;->createBindingManager()Lcom/android/org/chromium/content/browser/BindingManagerImpl;

    move-result-object v0

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    .line 232
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/org/chromium/content/browser/BindingManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    return-void
.end method

.method static synthetic access$400(ILandroid/view/Surface;II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(IILandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$700(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    return-void
.end method

.method static synthetic access$800(II)Lcom/android/org/chromium/content/common/SurfaceWrapper;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lcom/android/org/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;Z)Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "inSandbox"    # Z

    .prologue
    .line 205
    invoke-static {}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lcom/android/org/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    .line 206
    .local v0, "chromiumLinkerParams":Lcom/android/org/chromium/content/app/ChromiumLinkerParams;
    invoke-static {p0, p2, v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLcom/android/org/chromium/content/app/ChromiumLinkerParams;)Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    .line 208
    .local v1, "connection":Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v1, p1}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    .line 211
    :cond_0
    return-object v1
.end method

.method private static allocateConnection(Landroid/content/Context;ZLcom/android/org/chromium/content/app/ChromiumLinkerParams;)Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "chromiumLinkerParams"    # Lcom/android/org/chromium/content/app/ChromiumLinkerParams;

    .prologue
    .line 163
    new-instance v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    .line 174
    .local v0, "deathCallback":Lcom/android/org/chromium/content/browser/ChildProcessConnection$DeathCallback;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sConnectionAllocated:Z

    .line 175
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lcom/android/org/chromium/content/browser/ChildProcessConnection$DeathCallback;Lcom/android/org/chromium/content/app/ChromiumLinkerParams;)Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    return-object v1
.end method

.method private static createCallback(II)Lcom/android/org/chromium/content/common/IChildProcessCallback;
    .locals 1
    .param p0, "childProcessId"    # I
    .param p1, "callbackType"    # I

    .prologue
    .line 487
    new-instance v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v0, p1, p0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$3;-><init>(II)V

    return-object v0
.end method

.method private static createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 278
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p1, v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 279
    return-void
.end method

.method private static destroySurfaceTextureSurface(II)V
    .locals 0
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 283
    invoke-static {p0, p1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    .line 284
    return-void
.end method

.method public static determinedVisibility(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 314
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lcom/android/org/chromium/content/browser/BindingManager;->determinedVisibility(I)V

    .line 315
    return-void
.end method

.method private static freeConnection(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V
    .locals 1
    .param p0, "connection"    # Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 215
    invoke-interface {p0}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v0

    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->free(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V

    .line 216
    return-void
.end method

.method private static getConnectionAllocator(Z)Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1
    .param p0, "inSandbox"    # Z

    .prologue
    .line 157
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lcom/android/org/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getLinkerParamsForNewConnection()Lcom/android/org/chromium/content/app/ChromiumLinkerParams;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 183
    sget-boolean v1, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    if-nez v1, :cond_1

    .line 184
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->getBaseLoadAddress()J

    move-result-wide v2

    sput-wide v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 186
    sget-wide v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 187
    const-string v1, "ChildProcessLauncher"

    const-string v2, "Shared RELRO support disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    sput-boolean v5, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 193
    :cond_1
    sget-wide v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 194
    const/4 v1, 0x0

    .line 198
    .local v0, "waitForSharedRelros":Z
    :goto_0
    return-object v1

    .line 197
    .end local v0    # "waitForSharedRelros":Z
    :cond_2
    const/4 v0, 0x1

    .line 198
    .restart local v0    # "waitForSharedRelros":Z
    new-instance v1, Lcom/android/org/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->getTestRunnerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/org/chromium/content/app/ChromiumLinkerParams;-><init>(JZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static getSurfaceTextureSurface(II)Lcom/android/org/chromium/content/common/SurfaceWrapper;
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 292
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 293
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Invalid Id for surface texture."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    .line 297
    :goto_0
    return-object v2

    .line 296
    :cond_0
    sget-boolean v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 297
    :cond_1
    new-instance v2, Lcom/android/org/chromium/content/common/SurfaceWrapper;

    invoke-direct {v2, v1}, Lcom/android/org/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private static getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "commandLine"    # [Ljava/lang/String;
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 347
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v5

    .line 351
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "switchKeyPrefix":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 353
    .local v1, "command":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static isOomProtected(I)Z
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 247
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lcom/android/org/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method static logPidWarning(ILjava/lang/String;)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 562
    if-lez p0, :cond_0

    invoke-static {}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->nativeIsSingleProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const-string v0, "ChildProcessLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    return-void
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeIsSingleProcess()Z
.end method

.method private static native nativeOnChildProcessStarted(JI)V
.end method

.method private static registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 262
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method private static registerViewSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p0, "surfaceId"    # I
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 252
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public static setInForeground(IZ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "inForeground"    # Z

    .prologue
    .line 306
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0, p1}, Lcom/android/org/chromium/content/browser/BindingManager;->setInForeground(IZ)V

    .line 307
    return-void
.end method

.method static start(Landroid/content/Context;[Ljava/lang/String;I[I[I[ZJ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "fileIds"    # [I
    .param p4, "fileFds"    # [I
    .param p5, "fileAutoClose"    # [Z
    .param p6, "clientContext"    # J

    .prologue
    .line 383
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->begin()V

    .line 384
    sget-boolean v4, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    array-length v4, p3

    move-object/from16 v0, p4

    array-length v5, v0

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p4

    array-length v4, v0

    move-object/from16 v0, p5

    array-length v5, v0

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 385
    :cond_1
    move-object/from16 v0, p4

    array-length v4, v0

    new-array v6, v4, [Lcom/android/org/chromium/content/browser/FileDescriptorInfo;

    .line 386
    .local v6, "filesToBeMapped":[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 387
    new-instance v4, Lcom/android/org/chromium/content/browser/FileDescriptorInfo;

    aget v5, p3, v2

    aget v8, p4, v2

    aget-boolean v9, p5, v2

    invoke-direct {v4, v5, v8, v9}, Lcom/android/org/chromium/content/browser/FileDescriptorInfo;-><init>(IIZ)V

    aput-object v4, v6, v2

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_2
    sget-boolean v4, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, p6, v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 392
    :cond_3
    const/4 v7, 0x0

    .line 393
    .local v7, "callbackType":I
    const/4 v10, 0x1

    .line 394
    .local v10, "inSandbox":Z
    const-string v4, "type"

    invoke-static {p1, v4}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 395
    .local v11, "processType":Ljava/lang/String;
    const-string v4, "renderer"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 396
    const/4 v7, 0x2

    .line 403
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 404
    .local v3, "allocatedConnection":Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    const-class v5, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v5

    .line 405
    if-eqz v10, :cond_5

    .line 406
    :try_start_0
    sget-object v3, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .line 407
    const/4 v4, 0x0

    sput-object v4, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .line 409
    :cond_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-nez v3, :cond_8

    .line 411
    invoke-static {p0, p1, v10}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;Z)Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    move-result-object v3

    .line 412
    if-nez v3, :cond_8

    .line 414
    const/4 v4, 0x0

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v4}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    .line 415
    const-string v4, "ChildProcessLauncher"

    const-string v5, "Allocation of new service failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->end()V

    .line 426
    :goto_2
    return-void

    .line 397
    .end local v3    # "allocatedConnection":Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    :cond_6
    const-string v4, "gpu-process"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 398
    const/4 v7, 0x1

    goto :goto_1

    .line 399
    :cond_7
    const-string v4, "ppapi-broker"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    const/4 v10, 0x0

    goto :goto_1

    .line 409
    .restart local v3    # "allocatedConnection":Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 421
    :cond_8
    const-string v4, "ChildProcessLauncher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting up connection to process: slot="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    move v5, p2

    move-wide/from16 v8, p6

    .line 423
    invoke-static/range {v3 .. v9}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lcom/android/org/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;IJ)V

    .line 425
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->end()V

    goto :goto_2
.end method

.method static stop(I)V
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 471
    const-string v1, "ChildProcessLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping child connection: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v1, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/content/browser/ChildProcessConnection;

    .line 473
    .local v0, "connection":Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 474
    const-string v1, "Tried to stop non-existent connection"

    invoke-static {p0, v1}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->logPidWarning(ILjava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 477
    :cond_0
    sget-object v1, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lcom/android/org/chromium/content/browser/BindingManager;

    invoke-interface {v1, p0}, Lcom/android/org/chromium/content/browser/BindingManager;->clearConnection(I)V

    .line 478
    invoke-interface {v0}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->stop()V

    .line 479
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lcom/android/org/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static triggerConnectionSetup(Lcom/android/org/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;IJ)V
    .locals 7
    .param p0, "connection"    # Lcom/android/org/chromium/content/browser/ChildProcessConnection;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lcom/android/org/chromium/content/browser/FileDescriptorInfo;
    .param p4, "callbackType"    # I
    .param p5, "clientContext"    # J

    .prologue
    .line 436
    new-instance v4, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$2;

    invoke-direct {v4, p5, p6, p0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher$2;-><init>(JLcom/android/org/chromium/content/browser/ChildProcessConnection;)V

    .line 457
    .local v4, "connectionCallback":Lcom/android/org/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    invoke-static {p2, p4}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lcom/android/org/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lcom/android/org/chromium/content/browser/FileDescriptorInfo;Lcom/android/org/chromium/content/common/IChildProcessCallback;Lcom/android/org/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V

    .line 462
    return-void
.end method

.method private static unregisterSurfaceTextureSurface(II)V
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 267
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 269
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-boolean v2, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 272
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0
.end method

.method private static unregisterViewSurface(I)V
    .locals 2
    .param p0, "surfaceId"    # I

    .prologue
    .line 257
    sget-object v0, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method
