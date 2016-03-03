.class Lcom/android/org/chromium/ui/VSyncMonitor$1;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/VSyncMonitor$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

.field final synthetic val$useEstimatedRefreshPeriod:Z


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/VSyncMonitor;Z)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    iput-boolean p2, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 97
    const-string v3, "VSync"

    invoke-static {v3}, Lcom/android/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 98
    iget-boolean v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # getter for: Lcom/android/org/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z
    invoke-static {v3}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$000(Lcom/android/org/chromium/ui/VSyncMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # getter for: Lcom/android/org/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J
    invoke-static {v3}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$100(Lcom/android/org/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    sub-long v0, p1, v4

    .line 103
    .local v0, "lastRefreshDurationNano":J
    const v2, 0x3dcccccd    # 0.1f

    .line 104
    .local v2, "lastRefreshDurationWeight":F
    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    iget-object v4, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # getter for: Lcom/android/org/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J
    invoke-static {v4}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$200(Lcom/android/org/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-long v4, v4

    # += operator for: Lcom/android/org/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J
    invoke-static {v3, v4, v5}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$214(Lcom/android/org/chromium/ui/VSyncMonitor;J)J

    .line 107
    .end local v0    # "lastRefreshDurationNano":J
    .end local v2    # "lastRefreshDurationWeight":F
    :cond_0
    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # setter for: Lcom/android/org/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J
    invoke-static {v3, p1, p2}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$102(Lcom/android/org/chromium/ui/VSyncMonitor;J)J

    .line 108
    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    iget-object v4, p0, Lcom/android/org/chromium/ui/VSyncMonitor$1;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J
    invoke-static {v4}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$300(Lcom/android/org/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V
    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$400(Lcom/android/org/chromium/ui/VSyncMonitor;JJ)V

    .line 109
    const-string v3, "VSync"

    invoke-static {v3}, Lcom/android/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 110
    return-void
.end method
