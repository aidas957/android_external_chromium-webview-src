.class Lcom/android/org/chromium/base/JavaHandlerThread$2;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/base/JavaHandlerThread;->stop(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/base/JavaHandlerThread;

.field final synthetic val$nativeEvent:J

.field final synthetic val$nativeThread:J


# direct methods
.method constructor <init>(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->this$0:Lcom/android/org/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    iput-wide p4, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->val$nativeEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->this$0:Lcom/android/org/chromium/base/JavaHandlerThread;

    iget-wide v2, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    iget-wide v4, p0, Lcom/android/org/chromium/base/JavaHandlerThread$2;->val$nativeEvent:J

    # invokes: Lcom/android/org/chromium/base/JavaHandlerThread;->nativeStopThread(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/org/chromium/base/JavaHandlerThread;->access$100(Lcom/android/org/chromium/base/JavaHandlerThread;JJ)V

    .line 44
    return-void
.end method
