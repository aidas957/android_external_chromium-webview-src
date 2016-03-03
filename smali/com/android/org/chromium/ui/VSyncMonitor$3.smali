.class Lcom/android/org/chromium/ui/VSyncMonitor$3;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/VSyncMonitor;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/org/chromium/ui/VSyncMonitor$3;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 131
    const-string v2, "VSyncSynthetic"

    invoke-static {v2}, Lcom/android/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/org/chromium/ui/VSyncMonitor$3;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J
    invoke-static {v2}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$300(Lcom/android/org/chromium/ui/VSyncMonitor;)J

    move-result-wide v0

    .line 133
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/org/chromium/ui/VSyncMonitor$3;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    iget-object v3, p0, Lcom/android/org/chromium/ui/VSyncMonitor$3;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J
    invoke-static {v3, v0, v1}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$500(Lcom/android/org/chromium/ui/VSyncMonitor;J)J

    move-result-wide v4

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V
    invoke-static {v2, v4, v5, v0, v1}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$400(Lcom/android/org/chromium/ui/VSyncMonitor;JJ)V

    .line 134
    const-string v2, "VSyncSynthetic"

    invoke-static {v2}, Lcom/android/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 135
    return-void
.end method
