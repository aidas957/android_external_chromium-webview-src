.class Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
.super Ljava/lang/Object;
.source "CoreImpl.java"

# interfaces
.implements Lcom/android/org/chromium/mojo/system/AsyncWaiter$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWaiterCancellableImpl"
.end annotation


# instance fields
.field private mActive:Z

.field private final mDataPtr:J

.field private final mId:J

.field final synthetic this$0:Lcom/android/org/chromium/mojo/system/impl/CoreImpl;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;JJ)V
    .locals 2
    .param p2, "id"    # J
    .param p4, "dataPtr"    # J

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->this$0:Lcom/android/org/chromium/mojo/system/impl/CoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 494
    iput-wide p2, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mId:J

    .line 495
    iput-wide p4, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mDataPtr:J

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;JJLcom/android/org/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/mojo/system/impl/CoreImpl;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Lcom/android/org/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 487
    invoke-direct/range {p0 .. p5}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;-><init>(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->deactivate()V

    return-void
.end method

.method private deactivate()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 515
    return-void
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mActive:Z

    .line 505
    iget-object v0, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->this$0:Lcom/android/org/chromium/mojo/system/impl/CoreImpl;

    iget-wide v2, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mId:J

    iget-wide v4, p0, Lcom/android/org/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->mDataPtr:J

    # invokes: Lcom/android/org/chromium/mojo/system/impl/CoreImpl;->nativeCancelAsyncWait(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/org/chromium/mojo/system/impl/CoreImpl;->access$200(Lcom/android/org/chromium/mojo/system/impl/CoreImpl;JJ)V

    .line 507
    :cond_0
    return-void
.end method
