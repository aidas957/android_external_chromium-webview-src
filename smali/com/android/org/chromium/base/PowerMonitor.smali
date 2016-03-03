.class public Lcom/android/org/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# static fields
.field private static sInstance:Lcom/android/org/chromium/base/PowerMonitor;

.field private static final sSuspendTask:Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsBatteryPower:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/org/chromium/base/PowerMonitor$1;

    invoke-direct {v0}, Lcom/android/org/chromium/base/PowerMonitor$1;-><init>()V

    sput-object v0, Lcom/android/org/chromium/base/PowerMonitor;->sSuspendTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/org/chromium/base/PowerMonitor;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/android/org/chromium/base/PowerMonitor;->nativeOnMainActivitySuspended()V

    return-void
.end method

.method private static isBatteryPower()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/org/chromium/base/PowerMonitor;->sInstance:Lcom/android/org/chromium/base/PowerMonitor;

    iget-boolean v0, v0, Lcom/android/org/chromium/base/PowerMonitor;->mIsBatteryPower:Z

    return v0
.end method

.method private static native nativeOnBatteryChargingChanged()V
.end method

.method private static native nativeOnMainActivityResumed()V
.end method

.method private static native nativeOnMainActivitySuspended()V
.end method
