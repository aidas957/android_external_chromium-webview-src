.class final Lwebview/chromium/DrawGLFunctor$DestroyRunnable;
.super Ljava/lang/Object;
.source "DrawGLFunctor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/DrawGLFunctor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeDrawGLFunctor:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lwebview/chromium/DrawGLFunctor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 5
    .param p1, "nativeDrawGLFunctor"    # J

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    .line 104
    sget-boolean v0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lwebview/chromium/DrawGLFunctor$DestroyRunnable;)J
    .locals 2
    .param p0, "x0"    # Lwebview/chromium/DrawGLFunctor$DestroyRunnable;

    .prologue
    .line 100
    iget-wide v0, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 110
    sget-boolean v0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-wide v0, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    # invokes: Lwebview/chromium/DrawGLFunctor;->nativeDestroyGLFunctor(J)V
    invoke-static {v0, v1}, Lwebview/chromium/DrawGLFunctor;->access$100(J)V

    .line 112
    iput-wide v2, p0, Lwebview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J

    .line 113
    return-void
.end method
