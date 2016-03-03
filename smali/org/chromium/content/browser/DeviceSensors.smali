.class Lorg/chromium/content/browser/DeviceSensors;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    }
.end annotation


# static fields
.field static final DEVICE_LIGHT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_MOTION_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleton:Lorg/chromium/content/browser/DeviceSensors;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mDeviceLightIsActive:Z

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationIsActive:Z

.field mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:J

.field private final mNativePtrLock:Ljava/lang/Object;

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

.field private mTruncatedRotationVector:[F

.field mUseBackupOrientationSensors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    .line 76
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    .line 79
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    .line 86
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    .line 91
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 92
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    .line 93
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    .line 94
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 95
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/DeviceSensors;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DeviceSensors;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 326
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object p1

    .line 328
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 329
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 330
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 331
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 356
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 357
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 332
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 333
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 334
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 335
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 336
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 335
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 338
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 339
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 340
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 341
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 342
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 343
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 344
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 345
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 346
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 345
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 349
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 350
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 351
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 350
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 519
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 520
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 521
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 523
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    .line 525
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/DeviceSensors;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 531
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/DeviceSensors;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    .line 535
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    monitor-exit v1

    return-object v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 9
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 376
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 377
    .local v0, "deviceRotationMatrix":[F
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x3

    new-array v8, v1, [D

    .line 385
    .local v8, "rotationAngles":[D
    invoke-static {v0, v8}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 387
    const/4 v1, 0x0

    aget-wide v2, v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const/4 v1, 0x1

    aget-wide v4, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const/4 v1, 0x2

    aget-wide v6, v8, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getOrientationFromRotationVector([F)V
    .locals 9
    .param p1, "rotationVector"    # [F

    .prologue
    .line 364
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 365
    .local v0, "deviceRotationMatrix":[F
    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 367
    const/4 v1, 0x3

    new-array v8, v1, [D

    .line 368
    .local v8, "rotationAngles":[D
    invoke-static {v0, v8}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 370
    const/4 v1, 0x0

    aget-wide v2, v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const/4 v1, 0x1

    aget-wide v4, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const/4 v1, 0x2

    aget-wide v6, v8, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    .line 373
    return-void
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 408
    :goto_0
    return-object v1

    .line 397
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/DeviceSensors$1;-><init>(Lorg/chromium/content/browser/DeviceSensors;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 405
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 406
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 408
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(JDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(JDDD)V
.end method

.method private native nativeGotLight(JD)V
.end method

.method private native nativeGotOrientation(JDDD)V
.end method

.method private native nativeGotRotationRate(JDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v0

    .line 469
    .local v0, "sensorManager":Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    if-nez v0, :cond_0

    .line 470
    const/4 v1, 0x0

    .line 472
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 440
    .local v3, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 441
    const/4 v4, 0x0

    .line 443
    .local v4, "success":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 444
    .local v2, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceSensors;->registerForSensorType(II)Z

    move-result v1

    .line 445
    .local v1, "result":Z
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 447
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 448
    const/4 v4, 0x0

    .line 455
    .end local v1    # "result":Z
    .end local v2    # "sensorType":Ljava/lang/Integer;
    .end local v4    # "success":Z
    :cond_1
    return v4

    .line 450
    .restart local v1    # "result":Z
    .restart local v2    # "sensorType":Ljava/lang/Integer;
    .restart local v4    # "success":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 451
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setEventTypeActive(IZ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "value"    # Z

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 419
    :pswitch_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    goto :goto_0

    .line 422
    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    goto :goto_0

    .line 425
    :pswitch_2
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 460
    .local v1, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 462
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v1    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public getNumberActiveDeviceMotionSensors()I
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v0, "deviceMotionSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 150
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected gotAcceleration(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 484
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 485
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 486
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAcceleration(JDDD)V

    .line 488
    :cond_0
    monitor-exit v10

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 492
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 493
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 494
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAccelerationIncludingGravity(JDDD)V

    .line 496
    :cond_0
    monitor-exit v10

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotLight(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 508
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 510
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotLight(JD)V

    .line 512
    :cond_0
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 476
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 477
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 478
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientation(JDDD)V

    .line 480
    :cond_0
    monitor-exit v10

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 500
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 501
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 502
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotRotationRate(JDDD)V

    .line 504
    :cond_0
    monitor-exit v10

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsingBackupSensorsForOrientation()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 218
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->sensorChanged(I[F)V

    .line 219
    return-void
.end method

.method sensorChanged(I[F)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "values"    # [F

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 225
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_1

    .line 226
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAccelerationIncludingGravity(DDD)V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    invoke-direct {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 234
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAcceleration(DDD)V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 239
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotRotationRate(DDD)V

    goto :goto_0

    .line 243
    :pswitch_4
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    .line 244
    array-length v0, p2

    if-le v0, v3, :cond_3

    .line 249
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 250
    new-array v0, v3, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {p2, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 255
    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 260
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    if-nez v0, :cond_4

    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    .line 264
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 269
    :pswitch_6
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v0, :cond_0

    .line 270
    aget v0, p2, v2

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->gotLight(D)V

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public start(JII)Z
    .locals 7
    .param p1, "nativePtr"    # J
    .param p3, "eventType"    # I
    .param p4, "rateInMicroseconds"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "success":Z
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    packed-switch p3, :pswitch_data_0

    .line 135
    :try_start_0
    const-string v3, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-exit v2

    .line 142
    :goto_0
    return v1

    .line 118
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 122
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 124
    iput-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 138
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 139
    iput-wide p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 140
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 142
    :cond_1
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 129
    :pswitch_1
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 130
    goto :goto_1

    .line 132
    :pswitch_2
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 133
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(I)V
    .locals 6
    .param p1, "eventType"    # I

    .prologue
    .line 169
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v1, "sensorsToRemainActive":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 197
    :try_start_0
    const-string v2, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v3

    .line 209
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 177
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 203
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 204
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 205
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 208
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 181
    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 185
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 189
    :pswitch_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_4

    .line 190
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
