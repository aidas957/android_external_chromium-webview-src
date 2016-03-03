.class Lcom/android/org/chromium/base/JavaHandlerThread;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"


# instance fields
.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/base/JavaHandlerThread;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/chromium/base/JavaHandlerThread;->nativeInitializeThread(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/base/JavaHandlerThread;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/chromium/base/JavaHandlerThread;->nativeStopThread(JJ)V

    return-void
.end method

.method private static create(Ljava/lang/String;)Lcom/android/org/chromium/base/JavaHandlerThread;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/android/org/chromium/base/JavaHandlerThread;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/base/JavaHandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private native nativeInitializeThread(JJ)V
.end method

.method private native nativeStopThread(JJ)V
.end method

.method private start(JJ)V
    .locals 7
    .param p1, "nativeThread"    # J
    .param p3, "nativeEvent"    # J

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v6, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/org/chromium/base/JavaHandlerThread$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/chromium/base/JavaHandlerThread$1;-><init>(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method private stop(JJ)V
    .locals 7
    .param p1, "nativeThread"    # J
    .param p3, "nativeEvent"    # J

    .prologue
    .line 40
    new-instance v6, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/org/chromium/base/JavaHandlerThread$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/chromium/base/JavaHandlerThread$2;-><init>(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    iget-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 47
    return-void
.end method
